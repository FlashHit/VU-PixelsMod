-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m1abramsshell = Guid ("D684EC68-0FE9-4DF1-A732-9279BBA202F8")
   local instance_m1abramsshell = Guid ("F8903680-77AE-4D0C-88B7-88E5407CE897")

ResourceManager:RegisterInstanceLoadHandler(partition_m1abramsshell, instance_m1abramsshell, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0
    loadedInstance.timeToLive = 4
	if (bEnable_announcement) == (true) then print('Changed US Tank - M1Abrams Shell...')
	end
end)

-- ##################
   local partition_m1abrams_dmg = Guid ("D684EC68-0FE9-4DF1-A732-9279BBA202F8")
    local instance_m1abrams_dmg = Guid ("FDA5C3A0-5785-4D47-A305-E981562A1DBD")

 ResourceManager:RegisterInstanceLoadHandler(partition_m1abrams_dmg, instance_m1abrams_dmg, function(loadedInstance)
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
 	if (bEnable_announcement) == (true) then print('Changed US Tank - Pimped Explosion data ...')
 	end
end)

