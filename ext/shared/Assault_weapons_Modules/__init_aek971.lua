   local partition_aek971 = Guid ("64DB81AD-1F08-11E0-BE14-C6BC4F4ED27B")
   local instance_aek971 = Guid ("CE3372DA-991B-41C1-95BC-19B5D26AAE5B")
   local partition_aek971_heavy = Guid ("64DB81AD-1F08-11E0-BE14-C6BC4F4ED27B")
   local instance_aek971_heavy = Guid ("5F2C908F-56EA-42EF-A0C8-C800A38C32E4")
   local partition_aek971_silenced = Guid ("64DB81AD-1F08-11E0-BE14-C6BC4F4ED27B")
   local instance_aek971_silenced = Guid ("D87F08AD-D44F-4C77-92F6-D67C161F8233")

ResourceManager:RegisterInstanceLoadHandler(partition_aek971, instance_aek971, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	print('Changed Assault weapon: AEK - Super charched AMMO...')
	end)
