-- Pimped Ammo and medic bags
-- ####################################################################################################
--   local partition_ammobag_total = Guid ("0343F80F-06CC-11E0-8BDF-D7443366E28A")
--   local instance_ammobag_total = Guid ("5B73C5E2-127E-419B-95FB-A69D9F5CAA7B")

-- ResourceManager:RegisterInstanceLoadHandler(partition_ammobag_total, instance_ammobag_total, function(loadedInstance)
--     loadedInstance = FiringFunctionData(loadedInstance)
--    loadedInstance:MakeWritable()

--    loadedInstance.ammo.magazineCapacity = 1
--    loadedInstance.ammo.numberOfMagazines = 3
--	print('Changed Ammobag - Increased AMMO bags to place...')
--	end)


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

	print('Changed Ammobag - you are now a medic in training !... ... ...')
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

	print('Changed Medicbag - Now you are a ammo dealer in training !... ... ...')
end)

