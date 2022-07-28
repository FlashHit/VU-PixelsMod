-- hk53.txt weapon data OK
   local partition_g53 = Guid ("3E24517D-B208-4D69-8FF9-A6120249E6EC")
   local instance_g53 = Guid ("9E90DB5A-B56A-4595-8DBD-77406754D0C8")

ResourceManager:RegisterInstanceLoadHandler(partition_g53, instance_g53, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: g53 - Pimped AMMO size...')
	end)
