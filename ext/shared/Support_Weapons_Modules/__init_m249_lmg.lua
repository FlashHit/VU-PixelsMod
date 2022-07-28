   local partition_m249 = Guid ("F37DBC84-F61B-11DF-829C-95F94E7154E3")
   local instance_m249 = Guid ("7FCFC3D7-49C2-477E-8952-664FDA86B41E")

ResourceManager:RegisterInstanceLoadHandler(partition_m249, instance_m249, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 5

		print('Changed Support weapon: m249 LMG - Pimped AMMO size...')
	end)
