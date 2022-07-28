   local partition_m1911 = Guid ("944B9E9B-279F-11E0-BCCD-BF5F79C336AA")
   local instance_m1911 = Guid ("95EA0974-BC1D-4657-AD19-2851223F25D3")

ResourceManager:RegisterInstanceLoadHandler(partition_m1911, instance_m1911, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Handgun: m1911 - Pimped AMMO size...')
	end)
