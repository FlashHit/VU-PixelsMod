-- Gunship tweaks

    local partition_gunship_ac = Guid ("D1507C85-243B-45D5-9378-9ADE0C936909") -- 
     local instance_gunship_ac = Guid ("1EBA0568-FB66-4BCA-BC5D-D2C43FD0ECF6") --
 
 ResourceManager:RegisterInstanceLoadHandler(partition_gunship_ac, instance_gunship_ac, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.ammo.magazineCapacity = 90 -- Default = 30
 
     loadedInstance.fireLogic.reloadTime = 4.0
 	print('Changed Gunship AutoCannon ammo - Increased ammo ...')
 	end)

-- ----------------------------------------

   local partition_gunship_ac_dmg = Guid ("D1507C85-243B-45D5-9378-9ADE0C936909")
    local instance_gunship_ac_dmg = Guid ("18003E66-D168-4E53-BCDD-BCAB3FEF8419")

 ResourceManager:RegisterInstanceLoadHandler(partition_gunship_ac_dmg, instance_gunship_ac_dmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 120 -- Normal = 35
     loadedInstance.blastRadius = 9 -- Normal = 3
     loadedInstance.blastImpulse = 8000 -- Normal = 5000
     loadedInstance.shockwaveDamage = 8 -- Normal = 1
     loadedInstance.shockwaveRadius = 15 -- Normal = 7
     loadedInstance.shockwaveImpulse = 30 -- Normal = 10
     loadedInstance.shockwaveTime = 0.1 -- Deafault = 0.5
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	print('Changed Gunship AutoCannon ammo - Increased Damage ...')
 	end) 

-- ----------------------------------------

   local partition_gunship_60mm_dmg = Guid ("0D139F47-C360-428C-A91B-5B247F236F0F")
    local instance_gunship_60mm_dmg = Guid ("5A903893-799A-4B52-8A5C-6AE373D7038C")

 ResourceManager:RegisterInstanceLoadHandler(partition_gunship_60mm_dmg, instance_gunship_60mm_dmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 600 -- Normal = 150
     loadedInstance.blastRadius = 40 -- Normal = 10
     loadedInstance.blastImpulse = 10000 -- Normal = 5000
     loadedInstance.shockwaveDamage = 50 -- Normal = 1
     loadedInstance.shockwaveRadius = 60 -- Normal = 15
     loadedInstance.shockwaveImpulse = 5000 -- Normal = 2500
     loadedInstance.shockwaveTime = 0.1 -- Deafault = 0.14
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	print('Changed Gunship 60mm cannon - Increased Damage ...')
 	end) 


-- ----------------------------------------
-- Partition B1481690-4049-4F83-A9D7-3DCDB253C309
-- BulletEntityData 8AD9C100-CC74-46C3-901E-443C151CD413
-- FiringFunctionData 3435DF74-324D-4A75-9A48-D1C2162C37FB


   local partition_gunship_rg1 = Guid ("B1481690-4049-4F83-A9D7-3DCDB253C309")
    local instance_gunship_rg1 = Guid ("3435DF74-324D-4A75-9A48-D1C2162C37FB")

ResourceManager:RegisterInstanceLoadHandler(partition_gunship_rg1, instance_gunship_rg1, function(loadedInstance)
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
    loadedInstance.overHeat.heatPerBullet = 0.009  -- Time till Guynship stops fireing, Default 0.014 --
	print('Changed Gunship Railgun (1) -  Tweaked AMMO size...')
	end) 

-- ----------------------------------------
-- Partition 15A6F4C7-1700-432B-95A7-D5DE8A058ED2
-- BulletEntityData 66C5F2C0-E97D-4850-900C-89D655E7E354
-- FiringFunctionData 465DA0A5-F57D-44CF-8383-7F7DC105973A


   local partition_gunship_rg2 = Guid ("15A6F4C7-1700-432B-95A7-D5DE8A058ED2")
    local instance_gunship_rg2 = Guid ("465DA0A5-F57D-44CF-8383-7F7DC105973A")

ResourceManager:RegisterInstanceLoadHandler(partition_gunship_rg2, instance_gunship_rg2, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 500
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
    loadedInstance.overHeat.heatPerBullet = 0.009  -- Time till Guynship stops fireing, Default 0.014 --
	print('Changed Gunship Railgun (2) -  Tweaked AMMO size...')
	end) 


-- ----------------------------------------
-- Partition B1481690-4049-4F83-A9D7-3DCDB253C309
-- BulletEntityData 8AD9C100-CC74-46C3-901E-443C151CD413

   local partition_gunship_tbd1 = Guid ("B1481690-4049-4F83-A9D7-3DCDB253C309")
    local instance_gunship_tbd1 = Guid ("8AD9C100-CC74-46C3-901E-443C151CD413")

ResourceManager:RegisterInstanceLoadHandler(partition_gunship_tbd1, instance_gunship_tbd1, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.impactImpulse = 100 -- Default = 50
    loadedInstance.startDamage = 10 -- Default = 10
    loadedInstance.endDamage = 15 -- Default = 10
    loadedInstance.initialSpeed = 600 -- 1400 PIMPED -- Default = 350
    loadedInstance.timeToLive = 1.0 -- Default = 1.2
	print('Changed Gunship (1) - Tweaked Bullets data ...')
	end)

-- ----------------------------------------
-- Partition 15A6F4C7-1700-432B-95A7-D5DE8A058ED2
-- BulletEntityData 66C5F2C0-E97D-4850-900C-89D655E7E354

   local partition_gunship_tbd2 = Guid ("15A6F4C7-1700-432B-95A7-D5DE8A058ED2")
    local instance_gunship_tbd2 = Guid ("66C5F2C0-E97D-4850-900C-89D655E7E354")

ResourceManager:RegisterInstanceLoadHandler(partition_gunship_tbd2, instance_gunship_tbd2, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.impactImpulse = 100 -- Default = 50
    loadedInstance.startDamage = 10 -- Default = 10
    loadedInstance.endDamage = 15 -- Default = 10
    loadedInstance.initialSpeed = 600 -- 1400 PIMPED -- Default = 350
    loadedInstance.timeToLive = 1.0 -- Default = 1.2
	print('Changed Gunship (2) - Tweaked Bullets data ...')
	end)

 