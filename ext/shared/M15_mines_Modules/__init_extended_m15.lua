-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m15 = Guid ("B38C8E78-EBE6-11DF-8768-F4F1C9378C27")
    local instance_m15 = Guid ("D1110C87-5913-43A4-A47F-04AD47B0C611")

ResourceManager:RegisterInstanceLoadHandler(partition_m15, instance_m15, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 20 -- atention, this is a multiplier x2
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	if (bEnable_announcement) == (true) then print('Changed kinky M15 tank mine - Increased AMMO size ...')
	end
end)

-- -------------------------

   local partition_m15expentity = Guid ("49F4451D-D64E-45E5-BC96-B39CE8BC4D10")
    local instance_m15expentity = Guid ("D936971A-354B-49B7-BCCA-4FE01B68D395")

ResourceManager:RegisterInstanceLoadHandler(partition_m15expentity, instance_m15expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxAttachableInclination = 180
    loadedInstance.health = 1
    loadedInstance.maxCount = 40  -- Total mines you can place
end)

-- -----------------
