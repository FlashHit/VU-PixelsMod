   local partition_l85a2 = Guid ("197EE0EE-6190-46FF-982C-AA90A37439C7")
   local instance_l85a2 = Guid ("99F73917-43AC-4C61-BE0B-AD6570F9CE17")

ResourceManager:RegisterInstanceLoadHandler(partition_l85a2, instance_l85a2, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: l85a2 - Super charched AMMO...')
	end)
