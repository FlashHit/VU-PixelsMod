   local partition_mp412rex = Guid ("2EB76B74-1F16-11E0-BE14-C6BC4F4ED27B")
   local instance_mp412rex = Guid ("97E1D650-4F0D-4F1D-91B2-F65CD8A2C7EC")

ResourceManager:RegisterInstanceLoadHandler(partition_mp412rex, instance_mp412rex, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Handgun: mp412rex - Pimped AMMO size...')
	end)
