   local partition_mp5k = Guid ("B0F05591-F4AE-4BFF-9570-8DB045590A72")
   local instance_mp5k = Guid ("DBF391F1-A554-4EF0-A2BC-25DDA7F2298C")

ResourceManager:RegisterInstanceLoadHandler(partition_mp5k, instance_mp5k, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Common weapon: MP5K - Pimped AMMO size...')
	end)
