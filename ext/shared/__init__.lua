-- Auto cast the instance and makes it writable by choice
-- NOTE: this can be removed once the VU runtime branch is pushed
---@param makeWritable boolean?
function DataContainer:Cast(makeWritable)
	if makeWritable then self:MakeWritable() end
	return _G[self.typeInfo.name](self)
end

MOD = {}

require("__shared/Config")
require("__shared/ModBuilder")

local function _SetFieldValues(p_Instance, p_Fields)
	for l_FieldName, l_FieldValue in pairs(p_Fields) do
		if type(l_FieldValue) == "table" then
			_SetFieldValues(p_Instance[l_FieldName], l_FieldValue)
		-- array
		elseif type(l_FieldName) == "number" then
			if p_Instance[l_FieldName] then
				p_Instance[l_FieldName] = l_FieldValue
			else
				p_Instance:insert(l_FieldName, l_FieldValue)
			end
		else
			p_Instance[l_FieldName] = l_FieldValue
		end
	end
end

---@param p_Instances table
---@param p_Partition DatabasePartition
local function _PartitionLoaded(p_Instances, p_Partition)
	for l_InstanceGuid, l_InstanceFields in pairs(p_Instances) do
		local s_Instance = p_Partition:FindInstance(Guid(l_InstanceGuid))

		if not s_Instance then
			error(string.format("Failed to find instance with Guid '%s' in partition '%s'", l_InstanceGuid, p_Partition.name))
		end

		s_Instance = s_Instance:Cast(true)
		_SetFieldValues(s_Instance, l_InstanceFields)
	end
end

---@param p_LevelName string
---@param p_GameMode string
---@param p_IsDedicatedServer boolean
Events:Subscribe('Level:LoadResources', function(p_LevelName, p_GameMode, p_IsDedicatedServer)
	if not Config.Enabled then return end

	-- let the magic start
	for l_Name, l_Partitions in pairs(MOD) do
		if Config.ByName[l_Name] then
			print(string.format("Modifying %s", l_Name))

			for l_PartitionGuid, l_Instances in pairs(l_Partitions) do
				ResourceManager:RegisterPartitionLoadHandlerOnce(Guid(l_PartitionGuid), l_Instances, _PartitionLoaded)
			end
		end
	end
end)

function LiveUpdate(p_Option)
	if not Config.Enabled then return end

	if Config.ByName[p_Option] and MOD[p_Option] then
		print(string.format("Modifying %s", p_Option))

		for l_PartitionGuid, l_Instances in pairs(MOD[p_Option]) do
			local s_Partition = ResourceManager:FindDatabasePartition(Guid(l_PartitionGuid))

			if not s_Partition then
				print("Failed to find Partition: " .. l_PartitionGuid)
			else
				_PartitionLoaded(l_Instances, s_Partition)
			end
		end
	end
end

-- Updates all instances
function LiveUpdateAll()
	if not Config.Enabled then return end

	for l_Name, l_Partitions in pairs(MOD) do
		if Config.ByName[l_Name] then
			print(string.format("Modifying %s", l_Name))

			for l_PartitionGuid, l_Instances in pairs(l_Partitions) do
				local s_Partition = ResourceManager:FindDatabasePartition(Guid(l_PartitionGuid))

				if not s_Partition then
					print("Failed to find Partition: " .. l_PartitionGuid)
				else
					_PartitionLoaded(l_Instances, s_Partition)
				end
			end
		end
	end
end

-- Check if this is a hot reload / mod reload.
if SharedUtils:IsServerModule() and #SharedUtils:GetContentPackages() ~= 0
or SharedUtils:IsClientModule() and SharedUtils:GetLevelName() ~= "Levels/Web_Loading/Web_Loading" then
	-- This is a hot reload / mod reload.
	LiveUpdateAll()
end

require("__shared/LoadingLevelPrint")
