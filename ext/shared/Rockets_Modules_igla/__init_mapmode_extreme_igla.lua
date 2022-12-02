-- -----------------------------------
   local partition_igla_ammo = Guid ("B412A569-1413-11E0-A672-E0A480096E27")
   local instance_igla_ammo = Guid ("CE53E1AB-2B5B-4844-97B7-5A4990EB3913")
-- -----------------------------------
   local partition_us_stinger_ammo = Guid ("28C2561D-EC16-11DF-BA9E-F3DCE5C70CB9")
   local instance_us_stinger_ammo = Guid ("2EEC7BB1-BFD2-41C5-AFEF-C36A61BB9E6D")
-- -----------------------------------

   local partition_igla_speed = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_igla_speed = Guid ("5DFC8761-7C3F-26EB-79F0-A40D780C5A82")

ResourceManager:RegisterInstanceLoadHandler(partition_igla_speed, instance_igla_speed, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 200.0 -- Default = 350
    loadedInstance.timeToLive = 60.0 -- Default = 10
    loadedInstance.maxSpeed = 150.0 -- Default = 200
    loadedInstance.engineStrength = 70.0 -- Default = 35
	print('Changed Sa18IGLA - changed speed / TTL ...')
	end)

-- ############
   local partition_igla_lockrange = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_igla_lockrange = Guid ("DFA0EF35-6E53-477C-9CB9-38B271AFC18C")

ResourceManager:RegisterInstanceLoadHandler(partition_igla_lockrange, instance_igla_lockrange, function(loadedInstance)
     loadedInstance = LockingControllerData(loadedInstance)

    loadedInstance:MakeWritable()
    loadedInstance.rayLength = 1500.0
	print('Changed Sa18IGLA - Increased locking range ...')
	end)
	
-- ###############
   local partition_igla_lock = Guid ("B412A569-1413-11E0-A672-E0A480096E27")
   local instance_igla_lock = Guid ("BA1B7D20-46F4-40E2-9835-B963CFF07527")

ResourceManager:RegisterInstanceLoadHandler(partition_igla_lock, instance_igla_lock, function(loadedInstance)
     loadedInstance = LockingWeaponData(loadedInstance)
    loadedInstance:MakeWritable()
	
    loadedInstance.isGuided = true
    loadedInstance.isGuidedWhenZoomed = true
    loadedInstance.fireOnlyWhenLockedOn = true
	print('Changed Sa18IGLA guided data...')
	end)

-- #################
   local partition_igla_lockdata = Guid ("B412A569-1413-11E0-A672-E0A480096E27")
   local instance_igla_lockdata = Guid ("CDC3C3F1-C14A-43D4-B97B-68C286DEFEA8")

ResourceManager:RegisterInstanceLoadHandler(partition_igla_lockdata, instance_igla_lockdata, function(loadedInstance)
     loadedInstance = LockingControllerData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.zoomLevelLock[2].lockType = LockType.LockAlways -- Also locks choppers and jets
--    loadedInstance.zoomLevelLock[2].lockType = LockType.LockNever -- Default , locks only ground stuff
    loadedInstance.lockTime = 0.5
    loadedInstance.releaseTime = 0.2
    loadedInstance.releaseOnNewTargetTime = 0.5
    loadedInstance.acceptanceAngle = 2
    loadedInstance.rayLength = 750.0 -- default 400
    loadedInstance.lockOnVisibleTargetsOnly = true
    loadedInstance.lockOnEmptyVehicles = false
	print('Changed Sa18IGLA turbo locking...')
	end)

-- ##############
   local partition_igla_damage = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_igla_damage = Guid ("2ABC6E49-3D6E-4578-B64B-7BED0960AB5D")

ResourceManager:RegisterInstanceLoadHandler(partition_igla_damage, instance_igla_damage, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 250.0 -- Default = 0
    loadedInstance.blastRadius = 8.0 -- Default = 4.5
    loadedInstance.blastImpulse = 4000.0 -- Default = 150
    loadedInstance.shockwaveDamage = 5.0 -- Default = 1
    loadedInstance.shockwaveRadius = 20.0 -- Default = 6
    loadedInstance.shockwaveImpulse = 3000.0 -- Default = 1500
    loadedInstance.shockwaveTime = 0.25 -- Default = 0.25
	print('Changed Sa18IGLA - Damage increased ...')
	end)

-- -----------------------------------
   local partition_us_stinger_speed = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_us_stinger_speed = Guid ("5DFC8761-7C3F-26EB-79F0-A40D780C5A82")

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_speed, instance_us_stinger_speed, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 200.0 -- Default = 350
    loadedInstance.timeToLive = 60.0 -- Default = 10
    loadedInstance.maxSpeed = 150.0 -- Default = 200
    loadedInstance.engineStrength = 70.0 -- Default = 35
	print('Changed Stinger - changed speed / TTL ...')
	end)

-- ############
   local partition_us_stinger_lockrange = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_us_stinger_lockrange = Guid ("DFA0EF35-6E53-477C-9CB9-38B271AFC18C")

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_lockrange, instance_us_stinger_lockrange, function(loadedInstance)
     loadedInstance = LockingControllerData(loadedInstance)

    loadedInstance:MakeWritable()
    loadedInstance.rayLength = 1500.0
	print('Changed Stinger - Increased locking range ...')
	end)
	
-- ##############
   local partition_us_stinger = Guid ("28C2561D-EC16-11DF-BA9E-F3DCE5C70CB9")
   local instance_us_stinger = Guid ("AC50A504-5962-4F7F-84F8-640BCC36F73B")

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger, instance_us_stinger, function(loadedInstance)
     loadedInstance = LockingWeaponData(loadedInstance)
    loadedInstance:MakeWritable()
	
    loadedInstance.isGuided = true
    loadedInstance.isGuidedWhenZoomed = true
    loadedInstance.fireOnlyWhenLockedOn = true
	print('Changed Stinger guided data ...')
	end)

-- ################
   local partition_us_stinger_lockdata = Guid ("28C2561D-EC16-11DF-BA9E-F3DCE5C70CB9")
   local instance_us_stinger_lockdata = Guid ("41810442-CE99-42F8-96C4-FDC50F349DC4")

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_lockdata, instance_us_stinger_lockdata, function(loadedInstance)
     loadedInstance = LockingControllerData(loadedInstance)

    loadedInstance:MakeWritable()
    loadedInstance.zoomLevelLock[2].lockType = LockType.LockAlways -- Also locks choppers and jets
--    loadedInstance.zoomLevelLock[2].lockType = LockType.LockNever -- Default , locks only ground stuff
    loadedInstance.lockTime = 0.5
    loadedInstance.releaseTime = 0.2
    loadedInstance.releaseOnNewTargetTime = 0.5
    loadedInstance.acceptanceAngle = 2
    loadedInstance.rayLength = 750.0 -- default 400
    loadedInstance.lockOnVisibleTargetsOnly = true
    loadedInstance.lockOnEmptyVehicles = false
	print('Changed Stinger turbo locking...')
	end)

-- ##############
   local partition_us_stinger_damage = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_us_stinger_damage = Guid ("2ABC6E49-3D6E-4578-B64B-7BED0960AB5D")

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_damage, instance_us_stinger_damage, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 250.0 -- Default = 0
    loadedInstance.blastRadius = 8.0 -- Default = 4.5
    loadedInstance.blastImpulse = 4000.0 -- Default = 150
    loadedInstance.shockwaveDamage = 5.0 -- Default = 1
    loadedInstance.shockwaveRadius = 20.0 -- Default = 6
    loadedInstance.shockwaveImpulse = 3000.0 -- Default = 1500
    loadedInstance.shockwaveTime = 0.25 -- Default = 0.25
	print('Changed Stinger - Damage increased ...')
	end)

-- -----------------------------------
-- -----------------------------------
-- -----------------------------------

-- Mapmode: Conquest Large - Assault64 - Tank Superiority 40
Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" or SharedUtils:GetCurrentGameMode() == "TankSuperiority0" then

ResourceManager:RegisterInstanceLoadHandler(partition_igla_ammo, instance_igla_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- -----------------

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_ammo, instance_us_stinger_ammo, function(loadedInstance)
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

ResourceManager:RegisterInstanceLoadHandler(partition_igla_ammo, instance_igla_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 10 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- -----------------

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_ammo, instance_us_stinger_ammo, function(loadedInstance)
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

ResourceManager:RegisterInstanceLoadHandler(partition_igla_ammo, instance_igla_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 5 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- -----------------

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_ammo, instance_us_stinger_ammo, function(loadedInstance)
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

ResourceManager:RegisterInstanceLoadHandler(partition_igla_ammo, instance_igla_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 3 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- -----------------

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_ammo, instance_us_stinger_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 3 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	end)

-- -----------------

end
end
end
end

end)
	
