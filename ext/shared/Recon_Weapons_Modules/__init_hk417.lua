   local partition_hk417 = Guid ("E9658C2B-DE00-413D-B63B-BC3504652373")
   local instance_hk417 = Guid ("365D2E80-5EAD-4DA5-A7B7-4CD953B52E25")

ResourceManager:RegisterInstanceLoadHandler(partition_hk417, instance_hk417, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: hk417...')
	end)
