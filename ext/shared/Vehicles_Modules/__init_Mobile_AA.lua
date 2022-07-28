   local partition_tunguskacannon = Guid ("22D80A30-0A76-176C-C559-6E71C4F17915")
   local instance_tunguskacannon = Guid ("5ED03B20-CEE4-52F7-6C9B-DDE56DE6F800")
   local partition_tunguskabullets = Guid ("22D80A30-0A76-176C-C559-6E71C4F17915")
   local instance_tunguskabullets = Guid ("78DE0889-A11A-7660-A607-BB57A2995BA3") 

ResourceManager:RegisterInstanceLoadHandler(partition_tunguskacannon, instance_tunguskacannon, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1000
    loadedInstance.ammo.numberOfMagazines = -1
    loadedInstance.ammo.ammoPickupMinAmount = 100
    loadedInstance.ammo.ammoPickupMaxAmount = 0

    loadedInstance.dispersion[1].minAngle = 0.05
    loadedInstance.dispersion[1].maxAngle = 0.08
    loadedInstance.dispersion[1].increasePerShot = 0.0005
    loadedInstance.dispersion[1].decreasePerSecond = 0.025
    loadedInstance.shot.initialSpeed.z = 600 -- Default = 350
    loadedInstance.fireLogic.rateOfFire = 2000 -- Default = 2000
    loadedInstance.fireLogic.reloadDelay = 2.0
    loadedInstance.fireLogic.reloadTime = 3.5 -- Default = 3.5
--
    loadedInstance.fireLogic.recoil.maxRecoilAngleX = 0
    loadedInstance.fireLogic.recoil.minRecoilAngleX = 0
    loadedInstance.fireLogic.recoil.maxRecoilAngleY = 0
    loadedInstance.fireLogic.recoil.minRecoilAngleY = 0
    loadedInstance.fireLogic.recoil.maxRecoilAngleZ = 0
    loadedInstance.fireLogic.recoil.minRecoilAngleZ = 0
    loadedInstance.overHeat.heatPerBullet = 0.009  -- Time till Mobile AA stops fireing, Default 0.014 --
		print('Changed Mobile AA Cannon - No recoil - Tweaked AMMO size...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_tunguskabullets, instance_tunguskabullets, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.impactImpulse = 100 -- Default = 50
    loadedInstance.startDamage = 10 -- Default = 10
    loadedInstance.endDamage = 15 -- Default = 10
    loadedInstance.initialSpeed = 600 -- 1400 PIMPED -- Default = 350
    loadedInstance.timeToLive = 1.0 -- Default = 1.2
		print('Changed Mobile AA Tweaked Bullets data ...')
	end)


