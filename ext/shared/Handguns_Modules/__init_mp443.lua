   local partition_mp443 = Guid ("0D4646B4-F3DF-11DF-B48C-9F474D51EF2A")
   local instance_mp443 = Guid ("53489D8D-BE0B-4180-9F96-F1B728EFD898")

ResourceManager:RegisterInstanceLoadHandler(partition_mp443, instance_mp443, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Handgun: mp443 - Pimped AMMO size...')
	end)
