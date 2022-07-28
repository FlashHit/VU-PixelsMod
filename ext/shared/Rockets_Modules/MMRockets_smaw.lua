   local partition_smaw = Guid ("BCE98CA0-17EC-11E0-8CD8-85483A75A7C5")
   local instance_smaw = Guid ("AB8577C5-D5F9-4A17-BEB2-2E153E171630")
   local partition_smawgravity = Guid ("168F529B-17F6-11E0-8CD8-85483A75A7C5")
   local instance_smawgravity = Guid ("168F529C-17F6-11E0-8CD8-85483A75A7C5")

ResourceManager:RegisterInstanceLoadHandler(partition_smawgravity, instance_smawgravity, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500.0
    loadedInstance.timeToLive = 8
    loadedInstance.gravity = 0
	print('Changed SMAW - Gravity ...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_smaw, instance_smaw, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
	print('Changed SMAW - Ammo size increased ...')
	end)
