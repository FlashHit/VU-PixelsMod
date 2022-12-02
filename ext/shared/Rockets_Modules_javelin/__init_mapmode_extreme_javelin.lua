-- -----------------

   local partition_fgm148_ammo = Guid ("F4C6BD34-0D15-11E0-99FE-EA6897C76A7E")
   local instance_fgm148_ammo = Guid ("C1CE96A7-C9DD-43B3-822F-1B5BAC0F331A")

-- -----------------

   local partition_fgm148_lock = Guid ("F4C6BD34-0D15-11E0-99FE-EA6897C76A7E")
   local instance_fgm148_lock = Guid ("F3150F93-C300-43A1-96AA-9453DBD159E8")

ResourceManager:RegisterInstanceLoadHandler(partition_fgm148_lock, instance_fgm148_lock, function(loadedInstance)
     loadedInstance = LockingWeaponData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.isGuided = true
    loadedInstance.isGuidedWhenZoomed = true
    loadedInstance.fireOnlyWhenLockedOn = true
	print('Changed FGM148 Javelin Guided Data ...')
	end)

-- ###########
   local partition_fgm148_lockdata = Guid ("F4C6BD34-0D15-11E0-99FE-EA6897C76A7E")
   local instance_fgm148_lockdata = Guid ("4A956A3A-CEA0-455C-A8DE-674A6940407D")

ResourceManager:RegisterInstanceLoadHandler(partition_fgm148_lockdata, instance_fgm148_lockdata, function(loadedInstance)
     loadedInstance = LockingControllerData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.zoomLevelLock[2].lockType = LockType.LockAlways -- Also locks choppers and jets
--    loadedInstance.zoomLevelLock[2].lockType = LockType.LockNever -- Default , locks only ground stuff
    loadedInstance.lockTime = 0.5
    loadedInstance.releaseTime = 0.2
    loadedInstance.releaseOnNewTargetTime = 0.5
    loadedInstance.acceptanceAngle = 2
    loadedInstance.rayLength = 750.0 -- default 500
    loadedInstance.lockOnVisibleTargetsOnly = true
    loadedInstance.lockOnEmptyVehicles = false

	print('Changed FGM148 Javelin Turbo locking...')
	end)

-- ###########
   local partition_fgm148_dmg = Guid ("742C0343-1E94-11E0-833E-D522F39B6476")
   local instance_fgm148_dmg = Guid ("811A9EA4-4B44-4D91-B0D4-12B2C5CD12A8")

ResourceManager:RegisterInstanceLoadHandler(partition_fgm148_dmg, instance_fgm148_dmg, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 500  -- Default = 350.0
    loadedInstance.blastRadius = 9 -- Default = 4.5
    loadedInstance.blastImpulse = 7000 -- Default = 5000.0
    loadedInstance.shockwaveDamage = 4 -- Default = 1.0
    loadedInstance.shockwaveRadius = 12 -- Default = 6.0
    loadedInstance.shockwaveImpulse = 3000 -- Default = 1500.0
    loadedInstance.shockwaveTime = 0  -- Default = 0.25
	print('Changed FGM148 Javelin Damage...')
	end)

-- ###########

-- -----------------------------------

-- Mapmode: Conquest Large - Assault64 - Tank Superiority 40
Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" or SharedUtils:GetCurrentGameMode() == "TankSuperiority0" then

ResourceManager:RegisterInstanceLoadHandler(partition_fgm148_ammo, instance_fgm148_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- -----------------

-- Mapmode: Conquest Small - Assault - Assault#2 20
	else
	if SharedUtils:GetCurrentGameMode() == "ConquestSmall0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall1" then

ResourceManager:RegisterInstanceLoadHandler(partition_fgm148_ammo, instance_fgm148_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 10 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- -----------------

-- Mapmode: Rush - Squad Rush - Capture the flag 10
	else
	if SharedUtils:GetCurrentGameMode() == "RushLarge0" or SharedUtils:GetCurrentGameMode() == "SquadRush0" or SharedUtils:GetCurrentGameMode() == "CaptureTheFlag0" then

ResourceManager:RegisterInstanceLoadHandler(partition_fgm148_ammo, instance_fgm148_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 5 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- -----------------

-- Mapmode: Conquest Domination - Team Deathmatch - Squad Deathmatch - TDM Close Quarters 6
	else
	if SharedUtils:GetCurrentGameMode() == "TeamDeathMatch0" or SharedUtils:GetCurrentGameMode() == "SquadDeathMatch0" or SharedUtils:GetCurrentGameMode() == "TeamDeathMatchC0" or SharedUtils:GetCurrentGameMode() == "Domination0" then

ResourceManager:RegisterInstanceLoadHandler(partition_fgm148_ammo, instance_fgm148_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 3 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)


end
end
end
end

end)
