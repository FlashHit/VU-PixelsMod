   local partition_pp19 = Guid ("983A236F-22EB-11E0-87CC-DAB15BD78BE2")
   local instance_pp19 = Guid ("68808EAD-C07B-4642-B97A-C0B49D55AAB5")

ResourceManager:RegisterInstanceLoadHandler(partition_pp19, instance_pp19, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Common weapon: pp19 - Pimped AMMO size...')
	end)
