-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_t90shell = Guid ("E25400E3-4E66-31A4-D991-6E56084F10FF")
   local instance_t90shell = Guid ("36F86B49-A702-ED77-ACEC-015732F289E6")

ResourceManager:RegisterInstanceLoadHandler(partition_t90shell, instance_t90shell, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0
    loadedInstance.timeToLive = 4
	if (bEnable_announcement) == (true) then print('Changed RU Tank - T90A Shell...')
	end
end)

-- ##################
   local partition_t90_dmg = Guid ("E25400E3-4E66-31A4-D991-6E56084F10FF")
    local instance_t90_dmg = Guid ("CE7AC4AB-83B2-188B-3BAB-3F035BA5857A")

 ResourceManager:RegisterInstanceLoadHandler(partition_t90_dmg, instance_t90_dmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 250 -- Normal = 100
     loadedInstance.blastRadius = 10 -- Normal = 5
     loadedInstance.blastImpulse = 10000 -- Normal = 5000
     loadedInstance.shockwaveDamage = 25 -- Normal = 1
     loadedInstance.shockwaveRadius = 30 -- Normal = 15
     loadedInstance.shockwaveImpulse = 5000 -- Normal = 2500
     loadedInstance.shockwaveTime = 0
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	if (bEnable_announcement) == (true) then print('Changed RU Tank - Pimped Explosion data ...')
 	end
end)
