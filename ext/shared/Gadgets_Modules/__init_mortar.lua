-- Pimped Mortar

-- ###############################################

   local partition_mortarexp = Guid ("5350B268-18C9-11E0-B820-CD6C272E4FCC")
    local instance_mortarexp = Guid ("4827959A-8A3B-4C9F-994E-E54150AA565F")

ResourceManager:RegisterInstanceLoadHandler(partition_mortarexp, instance_mortarexp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 15000      -- Default = 60
    loadedInstance.blastRadius = 30          -- Default = 5
    loadedInstance.blastImpulse = 18000     -- Default = 1500
    loadedInstance.shockwaveDamage = 1000   -- Default = 1
    loadedInstance.shockwaveRadius = 30     -- Default = 8
    loadedInstance.shockwaveImpulse = 15000 -- Default = 300
    loadedInstance.shockwaveTime = 0.15     -- Default = 0.25
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true

    dprint("Changed Mortar:  Explosion (1) ... ... ...")
	end)

-- ###############################################


   local partition_mortardeployedff1 = Guid ("A381F7C8-18DD-11E0-9A44-B310CA9F1EC8")
    local instance_mortardeployedff1 = Guid ("060D79AA-4FFB-4087-9D29-1D7015945B8A")

ResourceManager:RegisterInstanceLoadHandler(partition_mortardeployedff1, instance_mortardeployedff1, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 25 -- Default = 1
    loadedInstance.fireLogic.rateOfFire = 20  -- Default = 300

	dprint('Changed Mortar Ammo size (Explosion)...')
	end)

-- ###############################################

   local partition_mortardeployedff2 = Guid ("A381F7C8-18DD-11E0-9A44-B310CA9F1EC8")
    local instance_mortardeployedff2 = Guid ("19EAD11D-13BA-481A-9F5D-8B11D530AB55")

ResourceManager:RegisterInstanceLoadHandler(partition_mortardeployedff2, instance_mortardeployedff2, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 25 -- Default = 1
    loadedInstance.fireLogic.rateOfFire = 20  -- Default = 300

	dprint('Changed Mortar Ammo size (Smoke)...')
	end)

-- ###############################################

   local partition_mortardeployedrot1 = Guid ("A381F7C8-18DD-11E0-9A44-B310CA9F1EC8")
    local instance_mortardeployedrot1 = Guid ("047678CD-F731-4B09-A4F1-DBFE526CB6E6")

ResourceManager:RegisterInstanceLoadHandler(partition_mortardeployedrot1, instance_mortardeployedrot1, function(loadedInstance)
     loadedInstance = ChildRotationBodyData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.angularMomentumMultiplier = 750 -- Default = 100
    loadedInstance.angularConstraintMin = -360     -- Default = -45
    loadedInstance.angularConstraintMax = 360      -- Default = 44

	dprint('Changed Mortar Deployed Rotation Data (1)...')
	end)

-- ###############################################

   local partition_mortardeployedrot2 = Guid ("A381F7C8-18DD-11E0-9A44-B310CA9F1EC8")
    local instance_mortardeployedrot2 = Guid ("D0E48E36-0DEC-46CB-8981-BA3C281DDD9A")

ResourceManager:RegisterInstanceLoadHandler(partition_mortardeployedrot2, instance_mortardeployedrot2, function(loadedInstance)
     loadedInstance = ChildRotationBodyData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.angularMomentumMultiplier = 750 -- Default = 150
    loadedInstance.angularConstraintMin = -5       -- Default = -9
    loadedInstance.angularConstraintMax = 10       -- Default = 14.5

	dprint('Changed Mortar Deployed Rotation Data (2)...')
	end)

-- ###############################################

   local partition_mortardeployedrot3 = Guid ("A381F7C8-18DD-11E0-9A44-B310CA9F1EC8")
    local instance_mortardeployedrot3 = Guid ("B4D5D0FF-9A9A-4205-8FD1-1F9188F62F45")

ResourceManager:RegisterInstanceLoadHandler(partition_mortardeployedrot3, instance_mortardeployedrot3, function(loadedInstance)
     loadedInstance = ChildRotationBodyData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.angularMomentumMultiplier = -750 -- Default = -150
    loadedInstance.angularConstraintMin = -26       -- Default = -16
    loadedInstance.angularConstraintMax = 60        -- Default = 25

	dprint('Changed Mortar Deployed Rotation Data (3)...')
	end)

-- ###############################################

   local partition_mortar_med = Guid ("5350B268-18C9-11E0-B820-CD6C272E4FCC")
    local instance_mortar_med = Guid ("145C4108-7660-1329-4599-4402DA4801A0")

ResourceManager:RegisterInstanceLoadHandler(partition_mortar_med, instance_mortar_med, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500.0 -- default = 350
    loadedInstance.timeToLive = 20.0 -- default = 5
    loadedInstance.detonateOnTimeout = true -- default = false

	dprint('Changed Mortar: Longer time till it goes self destruct...')
	end)

-- ###############################################

   local partition_mortar_smk4 = Guid ("6A2C27D9-D455-458D-A542-C212C6F8F69C")
    local instance_mortar_smk4 = Guid ("7D0007C8-A755-41BB-A1F5-8455C31B2258")

ResourceManager:RegisterInstanceLoadHandler(partition_mortar_smk4, instance_mortar_smk4, function(loadedInstance)
     loadedInstance = EmitterEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.transform.left.x = 2.5
    loadedInstance.transform.up.y = 2.5
    loadedInstance.transform.forward.z = 2.5
    print("Changed mortar: Smoke size (3) ... ... ...")
end)

