   local partition_l86 = Guid ("0BF57B31-9632-484F-8922-0BD476C5FF62")
    local instance_l86 = Guid ("B7F09598-2A6B-4553-A8F7-43308F1C5EFC")

ResourceManager:RegisterInstanceLoadHandler(partition_l86, instance_l86, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	print('Changed Support weapon: l86 LMG - Pimped AMMO size...')
	end)

 -- #############

   local partition_l86_mag = Guid ("0BF57B31-9632-484F-8922-0BD476C5FF62")
    local instance_l86_mag = Guid ("63322952-AE51-4B58-BCB7-DF2C7C3AA730")

ResourceManager:RegisterInstanceLoadHandler(partition_l86_mag, instance_l86_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	print('Changed Support weapon: L86 LMG - Ext magazine Pimped AMMO size...')
	end)
 