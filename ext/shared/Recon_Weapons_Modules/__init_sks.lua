	   local partition_sks = Guid ("409062B8-2AEF-11E0-9848-9E9BC51DCED8")
	   local instance_sks = Guid ("BDBDF5AB-2919-4B69-B225-29362632D7F3")

ResourceManager:RegisterInstanceLoadHandler(partition_sks, instance_sks, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: sks...')
	end)
