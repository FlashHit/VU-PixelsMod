-- -----------------------------------
   local partition_smaw = Guid ("BCE98CA0-17EC-11E0-8CD8-85483A75A7C5")
   local instance_smaw = Guid ("AB8577C5-D5F9-4A17-BEB2-2E153E171630")

-- -----------------------------------
   local partition_rpg7 = Guid ("E7F8EC1A-E8F5-11DF-AC96-84E6B0EFF32E")
   local instance_rpg7 = Guid ("7584D16E-6B77-4A7B-BEEE-15DA5EF98E2E")

-- -----------------------------------
   local partition_rpg7gravity = Guid ("6C857FD9-6FB3-11DE-B35E-864CF572E1C4")
   local instance_rpg7gravity = Guid ("CDD3A384-8243-A258-E23D-239CC0D52698")

ResourceManager:RegisterInstanceLoadHandler(partition_rpg7gravity, instance_rpg7gravity, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500.0
    loadedInstance.timeToLive = 8
    loadedInstance.gravity = 0
	print('Changed RPG-7 - Gravity ...')
	end)

-- -----------------------------------

   local partition_smawgravity = Guid ("168F529B-17F6-11E0-8CD8-85483A75A7C5")
   local instance_smawgravity = Guid ("168F529C-17F6-11E0-8CD8-85483A75A7C5")

ResourceManager:RegisterInstanceLoadHandler(partition_smawgravity, instance_smawgravity, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500.0
    loadedInstance.timeToLive = 8
    loadedInstance.gravity = 0
	print('Changed SMAW - Gravity ...')
	end)

-- -----------------------------------
   local partition_rpg7damage = Guid ("6C857FD9-6FB3-11DE-B35E-864CF572E1C4")
   local instance_rpg7damage = Guid ("663BA5C9-7511-4F7F-8736-8FE6172F28DE")

ResourceManager:RegisterInstanceLoadHandler(partition_rpg7damage, instance_rpg7damage, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 250.0 -- Default = 112
    loadedInstance.blastRadius = 8.0 -- Default = 4
    loadedInstance.blastImpulse = 4000.0 -- Default = 2000
    loadedInstance.shockwaveDamage = 5.0 -- Default = 1
    loadedInstance.shockwaveRadius = 20.0 -- Default = 10
    loadedInstance.shockwaveImpulse = 1500.0 -- Default = 500
    loadedInstance.shockwaveTime = 0.25 -- Default = 0.25
	print('Changed RPG-7 - Damage increased ...')
	end)
-- -----------------------------------
   local partition_smawdamage = Guid ("168F529B-17F6-11E0-8CD8-85483A75A7C5")
   local instance_smawdamage = Guid ("F88F469B-E075-4770-AC03-42D9320CF000")

ResourceManager:RegisterInstanceLoadHandler(partition_smawdamage, instance_smawdamage, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 250.0 -- Default = 112
    loadedInstance.blastRadius = 8.0 -- Default = 4
    loadedInstance.blastImpulse = 4000.0 -- Default = 2000
    loadedInstance.shockwaveDamage = 5.0 -- Default = 1
    loadedInstance.shockwaveRadius = 20.0 -- Default = 10
    loadedInstance.shockwaveImpulse = 1500.0 -- Default = 500
    loadedInstance.shockwaveTime = 0.25 -- Default = 0.25
	print('Changed SMAW - Damage increased ...')
	end)
-- -----------------------------------
-- -----------------------------------

-- Mapmode: Conquest Large - Assault64 - Tank Superiority
Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" or SharedUtils:GetCurrentGameMode() == "TankSuperiority0" then
ResourceManager:RegisterInstanceLoadHandler(partition_rpg7, instance_rpg7, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- --------
ResourceManager:RegisterInstanceLoadHandler(partition_smaw, instance_smaw, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)



-- Mapmode: Conquest Small - Assault - Assault#2
	else
	if SharedUtils:GetCurrentGameMode() == "ConquestSmall0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall1" then
ResourceManager:RegisterInstanceLoadHandler(partition_rpg7, instance_rpg7, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 10 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- --------
ResourceManager:RegisterInstanceLoadHandler(partition_smaw, instance_smaw, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 10 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)


-- Mapmode: Rush - Squad Rush - Capture the flag
	else
	if SharedUtils:GetCurrentGameMode() == "RushLarge0" or SharedUtils:GetCurrentGameMode() == "SquadRush0" or SharedUtils:GetCurrentGameMode() == "CaptureTheFlag0" then
ResourceManager:RegisterInstanceLoadHandler(partition_rpg7, instance_rpg7, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 5 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- --------
ResourceManager:RegisterInstanceLoadHandler(partition_smaw, instance_smaw, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 5 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)



-- Mapmode: Conquest Domination - Team Deathmatch - Squad Deathmatch - TDM Close Quarters
	else
	if SharedUtils:GetCurrentGameMode() == "TeamDeathMatch0" or SharedUtils:GetCurrentGameMode() == "SquadDeathMatch0" or SharedUtils:GetCurrentGameMode() == "TeamDeathMatchC0" or SharedUtils:GetCurrentGameMode() == "Domination0" then

ResourceManager:RegisterInstanceLoadHandler(partition_rpg7, instance_rpg7, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 3 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- --------
ResourceManager:RegisterInstanceLoadHandler(partition_smaw, instance_smaw, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 3 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)
-- --------



end
end
end
end


end)
	
-- #################################
