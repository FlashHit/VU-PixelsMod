	   local partition_qbu88 = Guid ("62FBED30-927B-11E0-A920-988860D1D68B")
	   local instance_qbu88 = Guid ("6B1AE33E-6CE2-422F-BA8E-297BD12A1FAA")

ResourceManager:RegisterInstanceLoadHandler(partition_qbu88, instance_qbu88, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: qbu88...')
	end)
