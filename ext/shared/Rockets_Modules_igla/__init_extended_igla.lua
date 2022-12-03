-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_igla_speed = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_igla_speed = Guid ("5DFC8761-7C3F-26EB-79F0-A40D780C5A82")

ResourceManager:RegisterInstanceLoadHandler(partition_igla_speed, instance_igla_speed, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 200.0 -- Default = 350
    loadedInstance.timeToLive = 60.0 -- Default = 10
    loadedInstance.maxSpeed = 150.0 -- Default = 200
    loadedInstance.engineStrength = 70.0 -- Default = 35
	if (bEnable_announcement) == (true) then print('Changed Sa18IGLA - changed speed / TTL ...')
	end
end)

-- ############
   local partition_igla_lockrange = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_igla_lockrange = Guid ("DFA0EF35-6E53-477C-9CB9-38B271AFC18C")

ResourceManager:RegisterInstanceLoadHandler(partition_igla_lockrange, instance_igla_lockrange, function(loadedInstance)
     loadedInstance = LockingControllerData(loadedInstance)

    loadedInstance:MakeWritable()
    loadedInstance.rayLength = 1500.0
	if (bEnable_announcement) == (true) then print('Changed Sa18IGLA - Increased locking range ...')
	end
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
	if (bEnable_announcement) == (true) then print('Changed Sa18IGLA guided data...')
	end
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
	if (bEnable_announcement) == (true) then print('Changed Sa18IGLA turbo locking...')
	end
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
	if (bEnable_announcement) == (true) then print('Changed Sa18IGLA - Damage increased ...')
	end
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
	if (bEnable_announcement) == (true) then print('Changed Stinger - changed speed / TTL ...')
	end
end)

-- ############
   local partition_us_stinger_lockrange = Guid ("38BED001-2A1F-11E0-BE1A-979F86D1AB92")
   local instance_us_stinger_lockrange = Guid ("DFA0EF35-6E53-477C-9CB9-38B271AFC18C")

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_lockrange, instance_us_stinger_lockrange, function(loadedInstance)
     loadedInstance = LockingControllerData(loadedInstance)

    loadedInstance:MakeWritable()
    loadedInstance.rayLength = 1500.0
	if (bEnable_announcement) == (true) then print('Changed Stinger - Increased locking range ...')
	end
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
	if (bEnable_announcement) == (true) then print('Changed Stinger guided data ...')
	end
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
	if (bEnable_announcement) == (true) then print('Changed Stinger turbo locking...')
	end
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
	if (bEnable_announcement) == (true) then print('Changed Stinger - Damage increased ...')
	end
end)

-- -----------------------------------

   local partition_igla_ammo = Guid ("B412A569-1413-11E0-A672-E0A480096E27")
   local instance_igla_ammo = Guid ("CE53E1AB-2B5B-4844-97B7-5A4990EB3913")

ResourceManager:RegisterInstanceLoadHandler(partition_igla_ammo, instance_igla_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	if (bEnable_announcement) == (true) then print('Changed Sa18IGLA - Increased AMMO size...')
	end
end)

-- -----------------

   local partition_us_stinger_ammo = Guid ("28C2561D-EC16-11DF-BA9E-F3DCE5C70CB9")
   local instance_us_stinger_ammo = Guid ("2EEC7BB1-BFD2-41C5-AFEF-C36A61BB9E6D")

ResourceManager:RegisterInstanceLoadHandler(partition_us_stinger_ammo, instance_us_stinger_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	if (bEnable_announcement) == (true) then print('Changed Stinger - Increased AMMO size...')
	end
end)

-- -----------------
