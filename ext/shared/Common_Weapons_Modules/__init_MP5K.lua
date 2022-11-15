   local partition_mp5k = Guid ("B0F05591-F4AE-4BFF-9570-8DB045590A72")
    local instance_mp5k = Guid ("DBF391F1-A554-4EF0-A2BC-25DDA7F2298C")

ResourceManager:RegisterInstanceLoadHandler(partition_mp5k, instance_mp5k, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 3
	print('Changed Common weapon: MP5K - Pimped AMMO size...')
	end)

-- ############

   local partition_mp5k = Guid ("B0F05591-F4AE-4BFF-9570-8DB045590A72")
    local instance_mp5k = Guid ("1240EE17-948A-4245-B7BD-E7F5FA1EF0B0")

ResourceManager:RegisterInstanceLoadHandler(partition_mp5k, instance_mp5k, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 240
    loadedInstance.numberOfMagazines = 3

	print('Changed Common weapon: MP5K - Ext magazine Pimped AMMO size...')
	end)
