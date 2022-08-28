   local partition_grenade = Guid ("FFF5DB09-E74B-11DF-9B5E-86394B544891")
   local instance_grenade = Guid ("04E1FA90-5B6E-4316-862C-15EB89652441")

ResourceManager:RegisterInstanceLoadHandler(partition_grenade, instance_grenade, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.shot.initialSpeed.z = 25
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 2
	print('Changed M67 SUPER Grenade - Increased AMMO size...')
	end)
