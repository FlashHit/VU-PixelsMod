-- RCON Commands:
-- pixels.enabled <boolean: enable> <boolean?: forceEnable>
-- pixels.updateOption <string: option> <boolean: enable>
-- pixels.enableOptionLive <string: option>
-- pixels.getOptionsList
-- pixels.getEnabledOptions

local Config = Config
local m_PendingOptions = {}
local m_Flag = RemoteCommandFlag.RequiresLogin
---@cast m_Flag RemoteCommandFlag|integer

-- Enable/Disable this mod.
---@param p_Command string
---@param p_Args string[]
---@param p_LoggedIn boolean
RCON:RegisterCommand("pixels.enabled", m_Flag, function(p_Command, p_Args, p_LoggedIn)
	local s_EnableStr = p_Args[1]:lower()

	if #p_Args >= 1 then
		local s_Enable = s_EnableStr == "true" or s_EnableStr == "1" or false
		Config.Enabled = s_Enable
		local s_Force = false

		if #p_Args == 2 then
			s_Force = s_EnableStr == "true" or s_EnableStr == "1" or false
		end

		NetEvents:BroadcastLocal("ModEnabled", Config.Enabled, s_Force)

		if s_Force then
			LiveUpdateAll()
		end

		return "OK"
	elseif #p_Args == 0 then
		return tostring(Config.Enabled)
	else
		return "Invalid Arguments"
	end
end)

---@param p_Command string
---@param p_Args string[]
---@param p_LoggedIn boolean
RCON:RegisterCommand("pixels.updateOption", m_Flag, function(p_Command, p_Args, p_LoggedIn)
	local s_Option = p_Args[1]
	local s_EnableStr = p_Args[2]:lower()

	if #p_Args == 2 then
		if Config.ByName[s_Option] == nil then
			return "Invalid Arguments"
		else
			local s_Enable = s_EnableStr == "true" or s_EnableStr == "1" or false
			m_PendingOptions[s_Option] = s_Enable
			return "OK"
		end
	else
		return "Invalid Arguments"
	end
end)

Events:Subscribe('Level:Destroy', function()
	NetEvents:Broadcast("UpdatedOptions", m_PendingOptions)
	NetEvents:BroadcastLocal("ModEnabled", Config.Enabled)

	for l_OptionName, l_Enable in pairs(m_PendingOptions) do
		Config.ByName[l_OptionName] = l_Enable
	end

	m_PendingOptions = {}
end)

---@param p_Command string
---@param p_Args string[]
---@param p_LoggedIn boolean
RCON:RegisterCommand("pixels.enableOptionLive", m_Flag, function(p_Command, p_Args, p_LoggedIn)
	local s_Option = p_Args[1]

	if #p_Args == 1 then
		if Config.ByName[s_Option] == nil then
			return "Invalid Arguments"
		else
			Config.ByName[s_Option] = true
			NetEvents:BroadcastLocal("LiveOptionEnable", s_Option)
			---@diagnostic disable-next-line: undefined-global
			LiveUpdate(s_Option)
			return "OK"
		end
	else
		return "Invalid Arguments"
	end
end)

---@param p_Command string
---@param p_Args string[]
---@param p_LoggedIn boolean
RCON:RegisterCommand("pixels.getOptionsList", m_Flag, function(p_Command, p_Args, p_LoggedIn)
	local s_List = {}

	for l_Name, l_Enabled in pairs(Config.ByName) do
		table.insert(s_List, l_Name)
	end

	table.sort(s_List)
	local s_Count = tostring(#s_List)
	table.insert(s_List, 1, s_Count)
	table.insert(s_List, 1, "OK")

	return s_List
end)

---@param p_Command string
---@param p_Args string[]
---@param p_LoggedIn boolean
RCON:RegisterCommand("pixels.getEnabledOptions", m_Flag, function(p_Command, p_Args, p_LoggedIn)
	local s_List = {}

	for l_Name, l_Enabled in pairs(Config.ByName) do
		if l_Enabled then
			table.insert(s_List, l_Name)
		end
	end

	table.sort(s_List)
	local s_Count = tostring(#s_List)
	table.insert(s_List, 1, s_Count)
	table.insert(s_List, 1, "OK")

	return s_List
end)

---@param p_Player Player
Events:Subscribe('Player:Authenticated', function(p_Player)
	NetEvents:SendToLocal("UpdatedOptions", p_Player, Config.ByName)
	NetEvents:SendToLocal("ModEnabled", p_Player, Config.Enabled)
end)
