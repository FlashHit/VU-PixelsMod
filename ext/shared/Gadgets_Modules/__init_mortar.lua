-- Pimped Mortar

   local partition_mortarexp2 = Guid ("5350B268-18C9-11E0-B820-CD6C272E4FCC")
    local instance_mortarexp2 = Guid ("BF5478A3-77E5-4F87-BAC7-91936CAD1C81")

ResourceManager:RegisterInstanceLoadHandler(partition_mortarexp2, instance_mortarexp2, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 15000      -- Default = 20
    loadedInstance.blastRadius = 15          -- Default = 5
    loadedInstance.blastImpulse = 18000     -- Default = 500
    loadedInstance.shockwaveDamage = 1000   -- Default = 1
    loadedInstance.shockwaveRadius = 15     -- Default = 7
    loadedInstance.shockwaveImpulse = 15000 -- Default = 300
    loadedInstance.shockwaveTime = 0.15     -- Default = 0.25
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true

    dprint("Chanched Mortar:  Explosion (2) ... ... ...")
	end)

-- ###############################################

   local partition_mortarexp = Guid ("5350B268-18C9-11E0-B820-CD6C272E4FCC")
    local instance_mortarexp = Guid ("4827959A-8A3B-4C9F-994E-E54150AA565F")

ResourceManager:RegisterInstanceLoadHandler(partition_mortarexp, instance_mortarexp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 15000      -- Default = 60
    loadedInstance.blastRadius = 15          -- Default = 5
    loadedInstance.blastImpulse = 18000     -- Default = 1500
    loadedInstance.shockwaveDamage = 1000   -- Default = 1
    loadedInstance.shockwaveRadius = 15     -- Default = 8
    loadedInstance.shockwaveImpulse = 15000 -- Default = 300
    loadedInstance.shockwaveTime = 0.15     -- Default = 0.25
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true

    dprint("Chanched Mortar:  Explosion (1) ... ... ...")
	end)

-- ###############################################

   local partition_mortarsmk = Guid ("7C592ADA-6915-4969-BFF2-A875027A9962")
    local instance_mortarsmk = Guid ("A420BDD8-F89F-49E3-B6DB-E8327253A589")

ResourceManager:RegisterInstanceLoadHandler(partition_mortarsmk, instance_mortarsmk, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.timeToArm = 0         -- Default = 0.5
    loadedInstance.nearTargetDetonation.detonationRadius = 100 -- Default = 10.0
    loadedInstance.visualConvergeDistance = 300.0 -- Default = 30
    loadedInstance.timeToLive = 15       -- Default = 5.0
    loadedInstance.damage = 420          -- Default = 100
    loadedInstance.maxCount = 100        -- Default = 1
    loadedInstance.impactImpulse = 5000 -- Default = 500
	dprint('Changed Mortar Explosion (Smoke)...')
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
