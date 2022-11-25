-- Generic pimped ammo data
-- Shared data: (US)ASRAD - (RU)Vodnik-AA 
   local partition_asrad_aa = Guid ("00001130-B1AD-4D5D-8D86-07D87AFE5F9B")
   local instance_asrad_aa = Guid ("D7B1F6F8-9564-4B5C-A59A-E84984C5E041")

ResourceManager:RegisterInstanceLoadHandler(partition_asrad_aa, instance_asrad_aa, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
	print('Changed ASRAD / Vodnik Shell Modifier ...')
	end)

-- ---------------------

    local partition_asrad_grav = Guid ("4CBA81C7-2078-4B37-BF1B-8D03C7783363")
     local instance_asrad_grav = Guid ("637A87DE-FC71-412A-98AC-522FA7005BB6") 

ResourceManager:RegisterInstanceLoadHandler(partition_asrad_grav, instance_asrad_grav, function(loadedInstance)
     loadedInstance = MissileEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.engineStrength = 150 -- default = 100.0
    loadedInstance.maxSpeed = 250       -- default = 150.0
    loadedInstance.initialSpeed = 700 -- default = 350
    loadedInstance.gravity = 0        -- default = -1.5
    loadedInstance.timeToLive = 8     -- default = 10
	print('Changed ASRAD / Vodnik No gravity on shell ...')
	end) 