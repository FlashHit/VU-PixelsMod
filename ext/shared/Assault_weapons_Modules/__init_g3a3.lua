   local partition_g3a3 = Guid ("34347158-E5AA-11DF-99EB-E13A35414FEB")
   local instance_g3a3 = Guid ("B0DD2A45-0E62-427A-8834-562D0DCFBC6A")

ResourceManager:RegisterInstanceLoadHandler(partition_g3a3, instance_g3a3, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: g3a3 - Super charched AMMO...')
	end)
