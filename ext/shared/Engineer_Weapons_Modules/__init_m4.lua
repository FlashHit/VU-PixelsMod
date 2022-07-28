-- M4a1 OK
   local partition_m4 = Guid ("E58B6AE6-E32E-11DF-8110-9522DC68C5EB")
   local instance_m4 = Guid ("C2C9ECFB-CDB9-43FC-BD69-EBA56E151FA8")

ResourceManager:RegisterInstanceLoadHandler(partition_m4, instance_m4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: m4 - Pimped AMMO size...')
	end)
