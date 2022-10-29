   local partition_smaw = Guid ("BCE98CA0-17EC-11E0-8CD8-85483A75A7C5")
   local instance_smaw = Guid ("AB8577C5-D5F9-4A17-BEB2-2E153E171630")
   local partition_smawgravity = Guid ("168F529B-17F6-11E0-8CD8-85483A75A7C5")
   local instance_smawgravity = Guid ("168F529C-17F6-11E0-8CD8-85483A75A7C5")
   local partition_smawdamage = Guid ("168F529B-17F6-11E0-8CD8-85483A75A7C5")
   local instance_smawdamage = Guid ("F88F469B-E075-4770-AC03-42D9320CF000")

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
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
	print('Changed SMAW - Ammo size increased ...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_smawdamage, instance_smawdamage, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 250.0 -- Default = 112
    loadedInstance.blastRadius = 8.0 -- Default = 4
    loadedInstance.blastImpulse = 4000.0 -- Default = 2000
    loadedInstance.shockwaveDamage = 5.0 -- Default = 1
    loadedInstance.shockwaveRadius = 20.0 -- Default = 10
    loadedInstance.shockwaveImpulse = 1500.0 -- Default = 500
    loadedInstance.shockwaveTime = 0.25 -- Default = 0.25
	print('Changed SMAW - Damage increased ...')
	end)
