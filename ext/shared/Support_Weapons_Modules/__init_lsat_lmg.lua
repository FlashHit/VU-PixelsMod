   local partition_lsat = Guid ("75E9AE70-B8B5-4A63-BDCC-AAF2914277D2")
   local instance_lsat = Guid ("66CF5A46-9D6C-4AD3-A4FE-F17452F4FCF5")

ResourceManager:RegisterInstanceLoadHandler(partition_lsat, instance_lsat, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 5

		print('Changed Support weapon: lsat LMG - Pimped AMMO size...')
	end)
