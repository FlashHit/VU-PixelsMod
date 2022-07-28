-- OK
   local partition_a91 = Guid ("98DAE0F8-1717-11E0-9317-9BA393B7EF47")
   local instance_a91 = Guid ("A7D5788E-0209-4B51-8857-363DA07B9ECD")

ResourceManager:RegisterInstanceLoadHandler(partition_a91, instance_a91, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: a91 - Pimped AMMO size...')
	end)
