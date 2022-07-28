	   local partition_m98 = Guid ("84BA0CE7-1755-11E0-B7E4-E4E608316920")
	   local instance_m98 = Guid ("7805C312-2B2B-49C6-B1A9-F6A99863BA3E")

ResourceManager:RegisterInstanceLoadHandler(partition_m98, instance_m98, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	print('Changed Recon weapon: m98...')
	end)
