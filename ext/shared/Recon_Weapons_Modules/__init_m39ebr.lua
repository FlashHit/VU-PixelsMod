	   local partition_m39ebr = Guid ("351A4849-F3F3-11DF-B48C-9F474D51EF2A")
	   local instance_m39ebr = Guid ("3A02DDD1-F502-4335-80E1-2E4CDF970336")

ResourceManager:RegisterInstanceLoadHandler(partition_m39ebr, instance_m39ebr, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: m39ebr...')
	end)
