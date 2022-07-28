   local partition_an94 = Guid ("37A1075D-0467-11E0-A970-FF10D557871E")
   local instance_an94 = Guid ("B4E31807-4480-4393-93C0-8B4DFACC6A53")

ResourceManager:RegisterInstanceLoadHandler(partition_an94, instance_an94, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: an94 - Super charched AMMO...')
	end)
