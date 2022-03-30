-- global funcs and utils
require('__shared/MMUtils')
require('__shared/__init_modules_shotguns')
require('__shared/__init_modules_gadgets')
require('__shared/__init_modules_handguns')
require('__shared/__init_modules_rockets')
require('__shared/__init_modules_vehicles')
require('__shared/__init_modules_choppers')
require('__shared/__init_modules_support')
require('__shared/__init_modules_support_LMG')
require('__shared/__init_modules_common_weapons')
require('__shared/__init_modules_engineer_weapons')
require('__shared/__init_modules_assault_weapons')
require('__shared/__init_modules_recon_weapons')

-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_players = true
local bEnable_weapons = false  -- Also contains some Gun Master setting stuff -

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)
-- ---------------------------------------------------------------------

-- modules
            if (bEnable_players) == (true) then dprint('Player stuff Enabled...')
mmPlayers = require('__shared/MMPlayers')
	else
	    if (bEnable_players) == (false) then dprint('Player stuff Disabled...')
end
end

            if (bEnable_weapons) == (true) then dprint('Weapon stuff Enabled...')
mmWeapons = require('__shared/MMWeapons')
	else
	    if (bEnable_weapons) == (false) then dprint('Weapon stuff Disabled...')
end
end

-- ---------------------------------------------------------------------

-- Common Modules --
mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)

            if (bEnable_players) == (true) then dprint('player resources Enabled...')
mmResources:AddLoadHandler(mmPlayers, mmPlayers.Write)
	else
	    if (bEnable_players) == (false) then dprint('player resources Disabled...')
end
end

            if (bEnable_weapons) == (true) then dprint('Weapon resources Enabled...')
mmResources:AddLoadHandler(mmWeapons, mmWeapons.Write)
	else
	    if (bEnable_weapons) == (false) then dprint('Weapon resources Disabled...')
end
end

-- ---------------------------------------------------------------------

mmResources:RegisterInstanceLoadHandlers()

--[[
local TheBigWeaponList = {}
local TheBigWeaponUnlocksList = {}

Events:Subscribe('Level:Loaded', self, function()
	for _, instance in pairs(TheBigWeaponList) do
		local weaponData = ebxEditUtils:GetWritableInstance(instance, 'object')
		local customizeTables = ebxEditUtils:GetWritableContainer(instance, 'object.Customization.Customization')
		local unlockTables = {}

		if (customizeTables ~= nil and customizeTables.unlockParts ~= nil) then
			if (TheBigWeaponUnlocksList[weaponData.name] == nil) then
				TheBigWeaponUnlocksList[weaponData.name] = {
					Optics = {},
					Primary = {},
					Secondary = {},
					Camo = {},
					Unkown = {},
				}
			end

			for i=1, #customizeTables.unlockParts do
				if (i == 1) then
					unlockTables["Optics"] = customizeTables.unlockParts[i]
				elseif (i == 2) then
					unlockTables["Primary"] = customizeTables.unlockParts[i]
				elseif (i == 3) then
					unlockTables["Secondary"] = customizeTables.unlockParts[i]
				elseif (i == 4) then
					unlockTables["Camo"] = customizeTables.unlockParts[i]
				else
					unlockTables["Unkown"] = customizeTables.unlockParts[i]
				end
			end

			for key,value in pairs(unlockTables) do
				for i=1, #value.selectableUnlocks do
					local unlockData = ebxEditUtils:GetWritableInstance(value.selectableUnlocks[i])
					table.insert(TheBigWeaponUnlocksList[weaponData.name][key], {unlockData.name, tostring(unlockData.instanceGuid)}) 
				end
			end
		end
	end

	print('Weapon Name	Unlock Category	Unlock Name	Unlock Guid')
	for weaponName, weaponUnlocks in pairs(TheBigWeaponUnlocksList) do
		for category, unlocks in pairs(weaponUnlocks) do
			for _,unlock in pairs(unlocks) do
				print(weaponName.."	"..category.."	"..unlock[1].."	"..unlock[2])
			end
		end
	end
end)
]]

Events:Subscribe('Partition:Loaded', function(partition)

	for _, instance in pairs(partition.instances) do

		--if (instance:Is('SoldierWeaponBlueprint')) then
		--	table.insert(TheBigWeaponList, instance)
		--end

		-- global vehicle "Sturdification"
	end
end)



materialGrid = nil
materialContainer = nil

function getMaterialName(materialId)
	if (materialId == nil) then
		return '[nil]: nil'
	end
	local mapIndex = MaterialContainerPair(materialId).physicsPropertyIndex
	if mapIndex < 0 then
		mapIndex = 256 + mapIndex
	end

	return '['..tostring(mapIndex+1) ..']: '..tostring(materialContainer.materialNames[mapIndex+1])
end

Events:Subscribe('Level:Loaded', function(levelName, gameMode, round, roundsPerMap)
	materialGrid = MaterialGridData(ResourceManager:SearchForDataContainer(SharedUtils:GetLevelName() .. "/MaterialGrid_Win32/Grid"))
	materialContainer = MaterialContainerAsset(ResourceManager:SearchForDataContainer("Materials/MaterialContainer"))
end)

Events:Subscribe('Level:Destroy', function()
	materialContainer = nil
	materialGrid = nil
end)

--[[
Events:Subscribe('Level:LoadResources', function()
	ResourceManager:MountSuperBundle('levels/mp_007/mp_007')
end)

Hooks:Install('ResourceManager:LoadBundles', 100, function(hook, bundles, compartment)
	if #bundles == 1 and bundles[1] == SharedUtils:GetLevelName() then
		print('Injecting bundles.')

		bundles = {
			'levels/mp_007/mp_007',
			bundles[1],
		}

		hook:Pass(bundles, compartment)
	end
end)

Events:Subscribe('Level:RegisterEntityResources', function(levelData)
	local registry = RegistryContainer(ResourceManager:SearchForInstanceByGuid(Guid('958A27B8-F6B4-AE8C-4AE8-1FC8E2AB60BF')))
	ResourceManager:AddRegistry(registry, ResourceCompartment.ResourceCompartment_Game)
end)
]]