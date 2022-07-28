   local partition_scarl = Guid ("6695DE67-4178-4EA7-95F9-9D575EF95E2A")
   local instance_scarl = Guid ("97E50571-45A0-47FF-9A40-ABA5F76AA19A")

ResourceManager:RegisterInstanceLoadHandler(partition_scarl, instance_scarl, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10

	print('Changed Assault weapon: scarl - Pimped AMMO size...')
	end)
