   local partition_mtar = Guid ("057A5DF0-209C-4C31-880F-479AF453884D")
   local instance_mtar = Guid ("3E9966A1-4FE4-4069-A53E-18938CE487F8")

ResourceManager:RegisterInstanceLoadHandler(partition_mtar, instance_mtar, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: mtar - Pimped AMMO size...')
	end)
