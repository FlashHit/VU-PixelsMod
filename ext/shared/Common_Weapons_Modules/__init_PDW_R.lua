   local partition_pdwr = Guid ("C47BFE6F-1F1E-11E0-AE3C-E30EAF72F572")
   local instance_pdwr = Guid ("EA2D2761-E274-4836-8C92-9825594A879C")

ResourceManager:RegisterInstanceLoadHandler(partition_pdwr, instance_pdwr, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Common weapon: PDW-R - Pimped AMMO size...')
	end)
