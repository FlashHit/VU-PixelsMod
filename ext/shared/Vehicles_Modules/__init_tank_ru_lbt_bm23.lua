   local partition_bm23shell = Guid ("AB65DA57-DAC6-4201-AA97-F1B8F5328E80")
   local instance_bm23shell = Guid ("9520BC73-20E0-4C99-A61D-07D6E3397DA7")
   local partition_bm23air = Guid ("0029E9E6-AB7A-4C54-AA46-0465C2EAC6F1")
   local instance_bm23air = Guid ("2810291B-035F-4074-97D2-C8FC83AF95F7")

ResourceManager:RegisterInstanceLoadHandler(partition_bm23shell, instance_bm23shell, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
		print('Changed RU BM-23 and US M142 Shell Modifier ... ... ...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_bm23air, instance_bm23air, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
		print('Changed RU BM-23 and US M142 Air Shell Modifier ... ... ...')
	end)
