-- Pimped Ammo and medic bags
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible

-- ####################################################################################################

	      local partition_ammobag = Guid ("04CD683B-1F1B-11E0-BBD1-F7235575FD24")
     local partition_ammobag_Instance = Guid ("4AE515CE-846D-6070-5F56-1285B7E8E187")


ResourceManager:RegisterInstanceLoadHandler(partition_ammobag, partition_ammobag_Instance, function(loadedInstance)

    loadedInstance = SupplySphereEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxCount = 3
    loadedInstance.receivesExplosionDamage = false         -- Default = true
    loadedInstance.supplyData.ammo.infiniteCapacity = true -- Default = true
    loadedInstance.supplyData.teamSpecific = true          -- Default = false

    loadedInstance.supplyData.ammo.radius = 10          -- Default = 3.5
    loadedInstance.supplyData.ammo.supplyIncSpeed = 1.5 -- Default = 1
    loadedInstance.supplyData.ammo.supplyPointsRefillSpeed = 1 -- This a multiplier ! -- Default = 0
    loadedInstance.supplyData.ammo.supplyPointsCapacity = 2    -- This a multiplier ! -- Default = 7

    loadedInstance.supplyData.healing.radius = 10 -- Default = 3.5
    loadedInstance.supplyData.healing.supplyIncSpeed = 3 -- it is still a ammo bag -- Default = 0
    loadedInstance.supplyData.healing.supplyPointsRefillSpeed = 1 -- This a multiplier ! -- Default = 0
    loadedInstance.supplyData.healing.supplyPointsCapacity = 1 -- This a multiplier ! -- Default = 0

	if (bEnable_announcement) == (true) then print('Changed Ammobag - you are now a medic in training !... ... ...')
end
end)
-- ####################################################################################################



	      local partition_medicbag = Guid ("1D6061B2-2234-11E0-92F5-C9B649EF6972")
     local partition_medicbag_Instance = Guid ("A867A678-615B-3FA6-7AF5-0DEE6ED69EA0")

ResourceManager:RegisterInstanceLoadHandler(partition_medicbag, partition_medicbag_Instance, function(loadedInstance)

    loadedInstance = SupplySphereEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxCount = 3
    loadedInstance.receivesExplosionDamage = false -- Default = true
    loadedInstance.supplyData.healing.infiniteCapacity = true -- Default = true
    loadedInstance.supplyData.teamSpecific = true -- Default = false

    loadedInstance.supplyData.healing.radius = 10 -- Default = 3.5
    loadedInstance.supplyData.healing.supplyIncSpeed = 18 -- Default = 12
    loadedInstance.supplyData.healing.supplyPointsRefillSpeed = 1 -- This a multiplier ! -- Default = 0
    loadedInstance.supplyData.healing.supplyPointsCapacity = 1 -- This a multiplier ! -- Default = 0

    loadedInstance.supplyData.ammo.radius = 10 -- Default = 3.5
    loadedInstance.supplyData.ammo.supplyIncSpeed = 0.5 -- it is still a medic bag -- Default = 0
    loadedInstance.supplyData.ammo.supplyPointsRefillSpeed = 1 -- This a multiplier ! -- Default = 0
    loadedInstance.supplyData.ammo.supplyPointsCapacity = 1 -- This a multiplier ! -- Default = 0

	if (bEnable_announcement) == (true) then print('Changed Medicbag - Now you are a ammo dealer in training !... ... ...')
end
end)

