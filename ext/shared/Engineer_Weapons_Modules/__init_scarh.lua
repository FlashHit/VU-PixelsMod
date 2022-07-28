-- OK
   local partition_scarh = Guid ("3DD281E1-279E-11E0-BCCD-BF5F79C336AA")
   local instance_scarh = Guid ("44311C4C-0308-4CB5-82FD-341584BB1EC0")

ResourceManager:RegisterInstanceLoadHandler(partition_scarh, instance_scarh, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: scarh - Pimped AMMO size...')
	end)
