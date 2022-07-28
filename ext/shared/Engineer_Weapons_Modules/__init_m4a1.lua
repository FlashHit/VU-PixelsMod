-- OK
   local partition_m4a1 = Guid ("E58B6AE6-E32E-11DF-8110-9522DC68C5EB")
   local instance_m4a1 = Guid ("13C4A7A7-85A0-42AF-92AD-2B9F80B0045A")

ResourceManager:RegisterInstanceLoadHandler(partition_m4a1, instance_m4a1, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Engineer weapon: m4a1 - Pimped AMMO size...')
	end)
