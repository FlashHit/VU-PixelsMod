   local partition_auga3 = Guid ("91978925-827B-4DA2-82C1-307ECCB7B83B")
   local instance_auga3 = Guid ("6AD6C194-AAF8-4B19-A204-6F0CB8E41764")

ResourceManager:RegisterInstanceLoadHandler(partition_auga3, instance_auga3, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10

	print('Changed Assault weapon: aug A3- Pimped AMMO size...')
	end)
