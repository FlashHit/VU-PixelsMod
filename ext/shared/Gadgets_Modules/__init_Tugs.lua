-- Pimped Tugs

	local partition_tugs = Guid ("C6AC3720-4E44-11E0-B74F-973632ECCDB7")
         local Instance_tugs = Guid ("6AD11C63-B795-4233-B943-C6DE347E26A7")

ResourceManager:RegisterInstanceLoadHandler(partition_tugs, Instance_tugs, function(loadedInstance)

    loadedInstance = RadarSweepComponentData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.controllableSweepRadius = 60
    loadedInstance.controllableSweepInterval = 1.5
    loadedInstance.sweepForMines = true
    loadedInstance.mineSweepRadius = 60
    loadedInstance.mineSweepInterval = 1.5

	print('Changed Gadgets: T-UGS Sweep Range...')
end)

--

	local partition_more_tugs = Guid ("483F1918-1815-11E0-8BA5-9B1E2E41035E")
         local Instance_more_tugs = Guid ("974BC154-2239-4619-B845-271BEBAFE33A")

ResourceManager:RegisterInstanceLoadHandler(partition_more_tugs, Instance_more_tugs, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 5
    loadedInstance.ammo.magazineCapacity = 5 -- Default = 1
	print('Changed Gadgets: T-UGS - More to place ! ...')
end)

--
	local partition_placemore_tugs = Guid ("483F1918-1815-11E0-8BA5-9B1E2E41035E")
         local Instance_placemore_tugs = Guid ("E8BDE781-EBCA-4FFB-8219-6DCAC05DE5AE")

ResourceManager:RegisterInstanceLoadHandler(partition_placemore_tugs, Instance_placemore_tugs, function(loadedInstance)

    loadedInstance = VehicleProjectileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxCount = 5
	print('Changed Gadgets: T-UGS - can place more ! ...')
	end)

--

	local partition_tugs_boom = Guid ("C6AC3720-4E44-11E0-B74F-973632ECCDB7")
         local Instance_tugs_boom = Guid ("D41B0855-6874-4650-8064-DC9F7ED76B0E")


ResourceManager:RegisterInstanceLoadHandler(partition_tugs_boom, Instance_tugs_boom, function(loadedInstance)

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

	print('Changed Gadgets: T-UGS - Goes BOOOM like a small nuke !! ...')
end)

--
