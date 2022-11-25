-- -------------------------

   local partition_m15 = Guid ("B38C8E78-EBE6-11DF-8768-F4F1C9378C27")
    local instance_m15 = Guid ("D1110C87-5913-43A4-A47F-04AD47B0C611")

ResourceManager:RegisterInstanceLoadHandler(partition_m15, instance_m15, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 16 -- atention, this is a multiplier x2
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	print('Changed M15 tank mine - Increased AMMO size ...')
	end)

-- -------------------------

   local partition_m15expentity = Guid ("49F4451D-D64E-45E5-BC96-B39CE8BC4D10")
    local instance_m15expentity = Guid ("D936971A-354B-49B7-BCCA-4FE01B68D395")

ResourceManager:RegisterInstanceLoadHandler(partition_m15expentity, instance_m15expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxAttachableInclination = 180
    loadedInstance.health = 1
    loadedInstance.maxCount = 32  -- Total mines you can place
	print('Changed M15 tank mine - now you can place even more mines ! ...')
	end)

-- -------------------------
 