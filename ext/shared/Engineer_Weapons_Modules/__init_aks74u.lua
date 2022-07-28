-- ok
   local partition_aks74u = Guid ("BC650B69-F196-11DF-B91B-D0A172B2A94A")
   local instance_aks74u = Guid ("48E3784D-9858-4616-99C0-4E85EE9B5523")

ResourceManager:RegisterInstanceLoadHandler(partition_aks74u, instance_aks74u, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: aks74u - Pimped AMMO size...')
	end)
