-- Kinky Claymore
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible

-- -------------------------------------

   local partition_claymore = Guid ("D9EAFB20-1357-11E0-B5EB-8AEE7FB8A0AF")
    local instance_claymore = Guid ("526C78FC-D2CA-491B-9D18-1EDEFB10A762")

   local partition_claymoreexp = Guid ("8709A814-1FF9-11E0-8A74-C88A4F19AAB4")
    local instance_claymoreexp = Guid ("5120E4F0-CD8C-4926-A45C-DA4460865508")

   local partition_claymore_havok = Guid ("8709A814-1FF9-11E0-8A74-C88A4F19AAB4")
    local instance_claymore_havok = Guid ("426247C9-56D7-FBA7-539C-F6C6BD7FD07A")

   local partition_claymore_expentity = Guid ("8709A814-1FF9-11E0-8A74-C88A4F19AAB4")
    local instance_claymore_expentity = Guid ("AA3BA4F5-2F8E-65FD-016A-D1E6F8C870FB")

--
ResourceManager:RegisterInstanceLoadHandler(partition_claymore, instance_claymore, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
 	if (bEnable_announcement) == (true) then print('Changed Claymore magazine ...')
end
	end)
--
 ResourceManager:RegisterInstanceLoadHandler(partition_claymore_expentity, instance_claymore_expentity, function(loadedInstance)
      loadedInstance = ExplosionPackEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.health = 5
     loadedInstance.maxCount = 32
 	if (bEnable_announcement) == (true) then print('Changed Claymore Placed Entity ...')
end
 	end)


--
 ResourceManager:RegisterInstanceLoadHandler(partition_claymore_havok, instance_claymore_havok, function(loadedInstance)
      loadedInstance = HavokAsset(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.scale = 2.0
 	if (bEnable_announcement) == (true) then print('Changed Claymore HavokAsset ...')
end
 	end)

--
 ResourceManager:RegisterInstanceLoadHandler(partition_claymoreexp, instance_claymoreexp, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 200 -- Normal = 112
     loadedInstance.blastRadius = 10 -- Normal = 4
     loadedInstance.blastImpulse = 3000 -- Normal = 2000
     loadedInstance.shockwaveDamage = 10 -- Normal = 1
     loadedInstance.shockwaveRadius = 15 -- Normal = 6
     loadedInstance.shockwaveImpulse = 1500 -- Normal = 500
     loadedInstance.shockwaveTime = 0
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	if (bEnable_announcement) == (true) then print('Changed Claymore Explosions data ...')
end
 	end)
