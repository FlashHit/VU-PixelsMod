	   local partition_mk11 = Guid ("0B82D738-09DF-11E0-9907-B7A8F369505D")
	   local instance_mk11 = Guid ("8A3D05FC-5D85-4FD0-9B96-031E5BE0DED4")

ResourceManager:RegisterInstanceLoadHandler(partition_mk11, instance_mk11, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: MK11...')
	end)
