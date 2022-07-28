   local partition_kh2002 = Guid ("CF1239D1-1738-11E0-B7E4-E4E608316920")
   local instance_kh2002 = Guid ("D8CDC02F-42A9-4278-B3DD-89375EB6B9D4")

ResourceManager:RegisterInstanceLoadHandler(partition_kh2002, instance_kh2002, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: kh2002 - Super charched AMMO...')
	end)
