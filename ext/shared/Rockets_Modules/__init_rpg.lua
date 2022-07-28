   local partition_rpg7 = Guid ("E7F8EC1A-E8F5-11DF-AC96-84E6B0EFF32E")
   local instance_rpg7 = Guid ("7584D16E-6B77-4A7B-BEEE-15DA5EF98E2E")
   local partition_rpg7gravity = Guid ("6C857FD9-6FB3-11DE-B35E-864CF572E1C4")
   local instance_rpg7gravity = Guid ("CDD3A384-8243-A258-E23D-239CC0D52698")
   local partition_rpg7damage = Guid ("6C857FD9-6FB3-11DE-B35E-864CF572E1C4")
   local instance_rpg7damage = Guid ("663BA5C9-7511-4F7F-8736-8FE6172F28DE")

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

ResourceManager:RegisterInstanceLoadHandler(partition_rpg7damage, instance_rpg7damage, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 250.0 -- Default = 112
    loadedInstance.blastRadius = 8.0 -- Default = 4
    loadedInstance.blastImpulse = 4000.0 -- Default = 2000
    loadedInstance.shockwaveDamage = 5.0 -- Default = 1
    loadedInstance.shockwaveRadius = 20.0 -- Default = 10
    loadedInstance.shockwaveImpulse = 1500.0 -- Default = 500
    loadedInstance.shockwaveTime = 0.25 -- Default = 0.25
	print('Changed RPG-7 - Damage increased ...')
	end)
