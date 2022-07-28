	   local partition_m40a5 = Guid ("65B7D9D8-256F-11E0-96DC-FF63A5537869")
	   local instance_m40a5 = Guid ("4DD1F6F8-01D8-49C4-8D2B-A88BB12B52EE")

ResourceManager:RegisterInstanceLoadHandler(partition_m40a5, instance_m40a5, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: m40a5...')
	end)
