   local partition_m416 = Guid ("88309FB2-3912-11E0-845E-D6BEC180D605")
   local instance_m416 = Guid ("CA28953E-9A4A-4579-B1B7-1FFBDBFBE7B9")

ResourceManager:RegisterInstanceLoadHandler(partition_m416, instance_m416, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: m416 - Super charched AMMO...')
	end)
