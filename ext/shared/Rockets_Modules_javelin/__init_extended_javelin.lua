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

-- -----------------------------------

   local partition_fgm148_ammo = Guid ("F4C6BD34-0D15-11E0-99FE-EA6897C76A7E")
   local instance_fgm148_ammo = Guid ("C1CE96A7-C9DD-43B3-822F-1B5BAC0F331A")

ResourceManager:RegisterInstanceLoadHandler(partition_fgm148_ammo, instance_fgm148_ammo, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	print('Changed FGM148 Javelin - Increased AMMO size 40x ...')
	end)

-- -----------------