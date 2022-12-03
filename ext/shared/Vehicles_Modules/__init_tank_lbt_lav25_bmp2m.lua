-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_lbt_shell1 = Guid ("347C7F28-38E4-4888-8567-AD4FFBD25299")
   local instance_lbt_shell1 = Guid ("F0F54699-EE70-4F17-8416-DF41912E183F")

ResourceManager:RegisterInstanceLoadHandler(partition_lbt_shell1, instance_lbt_shell1, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
		if (bEnable_announcement) == (true) then print('Changed US LAV-25 - RU BMP-2M - BTR90 LBT (1) Ammo Modifier ...')
	end
end)

-- -----------------

    local partition_lbt_grav = Guid ("347C7F28-38E4-4888-8567-AD4FFBD25299")
     local instance_lbt_grav = Guid ("05E2D345-409B-488A-9696-0B6F4B9A84A8") 

ResourceManager:RegisterInstanceLoadHandler(partition_lbt_grav, instance_lbt_grav, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 700 -- default = 350
    loadedInstance.gravity = 0        -- default = -4.9
    loadedInstance.timeToLive = 8     -- default = 5
	if (bEnable_announcement) == (true) then print('Changed US LAV-25 - RU BMP-2M - BTR90 LBT - (2) Gravity modifier ...')
	end
end) 

-- -----------------

   local partition_lbt_dmg = Guid ("347C7F28-38E4-4888-8567-AD4FFBD25299")
    local instance_lbt_dmg = Guid ("A5E855A8-BE86-46F8-836F-80C076FD406E")

 ResourceManager:RegisterInstanceLoadHandler(partition_lbt_dmg, instance_lbt_dmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 40 -- Normal = 20
     loadedInstance.blastRadius = 5 -- Normal = 2
     loadedInstance.blastImpulse = 800 -- Normal = 400
     loadedInstance.shockwaveDamage = 5 -- Normal = 1
     loadedInstance.shockwaveRadius = 4 -- Normal = 2
     loadedInstance.shockwaveImpulse = 200 -- Normal = 100
     loadedInstance.shockwaveTime = 0
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	if (bEnable_announcement) == (true) then print('Changed US LAV-25 - RU BMP-2M - BTR90 LBT (3) explosion modifier ...')
 	end
end) 

-- #####################################

-- -----------------
   local partition_lbt_shell2 = Guid ("35DA1164-EAA9-4622-8D5A-704FF73DD295")
   local instance_lbt_shell2 = Guid ("382C510B-6F52-4FA3-9D4A-C113F05323B8")

ResourceManager:RegisterInstanceLoadHandler(partition_lbt_shell2, instance_lbt_shell2, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
		if (bEnable_announcement) == (true) then print('Changed US LAV-25 - RU BMP-2M - BTR90 LBT (4) Ammo Modifier ...')
	end
end)

-- -----------------

    local partition_lbt2_grav = Guid ("35DA1164-EAA9-4622-8D5A-704FF73DD295")
     local instance_lbt2_grav = Guid ("6B6AE9B0-2592-4E94-9193-B4BE7F3C394A") 

ResourceManager:RegisterInstanceLoadHandler(partition_lbt2_grav, instance_lbt2_grav, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 700 -- default = 350
    loadedInstance.gravity = 0        -- default = -4.9
    loadedInstance.timeToLive = 8     -- default = 5
	if (bEnable_announcement) == (true) then print('Changed US LAV-25 - RU BMP-2M - BTR90 LBT - (5) Gravity modifier ...')
	end
end) 

-- -----------------

   local partition_lbt2_dmg = Guid ("35DA1164-EAA9-4622-8D5A-704FF73DD295")
    local instance_lbt2_dmg = Guid ("37947774-F524-41E7-9207-DA3CDD0D2FFE")

 ResourceManager:RegisterInstanceLoadHandler(partition_lbt2_dmg, instance_lbt2_dmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 40 -- Normal = 34
     loadedInstance.blastRadius = 5 -- Normal = 5
     loadedInstance.blastImpulse = 800 -- Normal = 750
     loadedInstance.shockwaveDamage = 5 -- Normal = 1
     loadedInstance.shockwaveRadius = 4 -- Normal = 8
     loadedInstance.shockwaveImpulse = 200 -- Normal = 40
     loadedInstance.shockwaveTime = 0
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	if (bEnable_announcement) == (true) then print('Changed US LAV-25 - RU BMP-2M - BTR90 LBT (6) explosion modifier ...')
 	end
end) 
