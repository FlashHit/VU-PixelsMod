   local partition_acwr = Guid ("E1DE3897-F570-11E0-B897-D25D16CBAAAF")
   local instance_acwr = Guid ("D0D3C6B8-8E77-4876-A809-F663C8FC10E7")

ResourceManager:RegisterInstanceLoadHandler(partition_acwr, instance_acwr, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: acwr - Pimped AMMO size...')
	end)
