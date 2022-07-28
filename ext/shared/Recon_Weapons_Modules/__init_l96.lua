	   local partition_l96 = Guid ("30710090-22F9-11E0-9B3A-DBCC579DBD38")
	   local instance_l96 = Guid ("4A933C70-2E94-4FD7-B736-50A7ADD25CE5")

ResourceManager:RegisterInstanceLoadHandler(partition_l96, instance_l96, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: l96...')
	end)
