   local partition_c4 = Guid ("90D317AC-2554-11E0-9BE1-9E3A551FF0D1")
   local instance_c4 = Guid ("6CF717B6-188A-4AE7-A1D2-CC1A2333C0D7")

ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	print('Changed extended C4 - Increased AMMO size...')
	end)

-- ------------------------------
   local partition_c4expentity = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
   local instance_c4expentity = Guid ("09DCA5BB-BB2E-4EC6-B07F-5F74863EB458")

ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 32
	print('Changed extended C4 - can place more !...')
	end)

