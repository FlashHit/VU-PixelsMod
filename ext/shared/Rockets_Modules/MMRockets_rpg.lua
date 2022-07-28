   local partition_rpg7 = Guid ("E7F8EC1A-E8F5-11DF-AC96-84E6B0EFF32E")
   local instance_rpg7 = Guid ("7584D16E-6B77-4A7B-BEEE-15DA5EF98E2E")
   local partition_rpg7gravity = Guid ("6C857FD9-6FB3-11DE-B35E-864CF572E1C4")
   local instance_rpg7gravity = Guid ("CDD3A384-8243-A258-E23D-239CC0D52698")

ResourceManager:RegisterInstanceLoadHandler(partition_rpg7gravity, instance_rpg7gravity, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500.0
    loadedInstance.timeToLive = 8
    loadedInstance.gravity = 0
	print('Changed RPG-7 - Gravity ...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_rpg7, instance_rpg7, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 20 -- x2 !
	print('Changed RPG-7 - Ammo size increased ...')
	end)
