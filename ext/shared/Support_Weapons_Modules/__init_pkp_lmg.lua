   local partition_pkp = Guid ("D1DC5650-EBFE-11DF-8ACD-A1D8961E5550")
   local instance_pkp = Guid ("9893EBD7-95B1-43E7-8405-86803312D998")

ResourceManager:RegisterInstanceLoadHandler(partition_pkp, instance_pkp, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 5

		print('Changed Support weapon: pkp LMG - Pimped AMMO size...')
	end)
