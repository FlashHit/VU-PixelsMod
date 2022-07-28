   local partition_f2000 = Guid ("B73816D2-F3B8-11DF-B48C-9F474D51EF2A")
   local instance_f2000 = Guid ("D900F1B8-0C20-4A04-9448-5459500470AE")

ResourceManager:RegisterInstanceLoadHandler(partition_f2000, instance_f2000, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: f2000 - Super charched AMMO...')
	end)
