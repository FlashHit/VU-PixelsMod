-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_c4exp = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
   local instance_c4exp = Guid ("5FE6E2AD-072E-4722-984A-5C52BC66D4C1")

ResourceManager:RegisterInstanceLoadHandler(partition_c4exp, instance_c4exp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 1500 -- Normal = 500
    loadedInstance.blastRadius = 15 -- Normal = 5.0
    loadedInstance.blastImpulse = 6000 -- Normal = 6000
    loadedInstance.shockwaveDamage = 15 -- Normal = 1.0
    loadedInstance.shockwaveRadius = 15 -- Normal = 6.0
    loadedInstance.shockwaveImpulse = 4000 -- Normal = 2000
    loadedInstance.shockwaveTime = 0
    loadedInstance.triggerImpairedHearing = false
    loadedInstance.isCausingSuppression = false
	if (bEnable_announcement) == (true) then print('Changed pimped C4 Explosion...')
	end
end)

-- ------------------------------

   local partition_c4 = Guid ("90D317AC-2554-11E0-9BE1-9E3A551FF0D1")
   local instance_c4 = Guid ("6CF717B6-188A-4AE7-A1D2-CC1A2333C0D7")

ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	if (bEnable_announcement) == (true) then print('Changed pimped C4 - Increased AMMO size...')
	end
end)

-- ------------------------------

   local partition_c4expentity = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
   local instance_c4expentity = Guid ("09DCA5BB-BB2E-4EC6-B07F-5F74863EB458")

ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 32
	if (bEnable_announcement) == (true) then print('Changed pimped C4 - can place more !...')
	end
end)

