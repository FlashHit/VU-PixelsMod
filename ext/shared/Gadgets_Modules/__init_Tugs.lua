-- Pimped Tugs

	      local partition_tugs = Guid ("C6AC3720-4E44-11E0-B74F-973632ECCDB7")
     local partition_tugs_Instance = Guid ("6AD11C63-B795-4233-B943-C6DE347E26A7")

ResourceManager:RegisterInstanceLoadHandler(partition_tugs, partition_tugs_Instance, function(loadedInstance)

    loadedInstance = RadarSweepComponentData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.controllableSweepRadius = 60
    loadedInstance.controllableSweepInterval = 1.5
    loadedInstance.sweepForMines = true
    loadedInstance.mineSweepRadius = 60
    loadedInstance.mineSweepInterval = 1.5

	print('Changed T-UGS Sweep Range...')
end)
