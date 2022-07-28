   local partition_famas = Guid ("706A1BD6-6DAB-4CEE-BFCA-82814251E2D8")
   local instance_famas = Guid ("F91A9BA8-A08B-44EE-B6F3-9B181FAD71BA")

ResourceManager:RegisterInstanceLoadHandler(partition_famas, instance_famas, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10

	print('Changed Assault weapon: famas - Pimped AMMO size...')
	end)
