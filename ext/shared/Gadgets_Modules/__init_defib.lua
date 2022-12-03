-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible

-- -------------------------------------
   local partition_defibs = Guid ("1B81A779-135F-11E0-B4A8-98C3FD926350")
   local instance_defibs = Guid ("ECFCD019-F32C-4CBD-94CC-A69B3DF99AB2")

   local partition_defib_projectile = Guid ("1B81A779-135F-11E0-B4A8-98C3FD926350")
   local instance_defib_projectile = Guid ("1861554A-8C81-4944-96D1-7347494F7688")

ResourceManager:RegisterInstanceLoadHandler(partition_defibs, instance_defibs, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.fireLogic.rateOfFire = 250
 	if (bEnable_announcement) == (true) then print('Changed Defibs - Go trololol with the defib ...') 
end
end)
	
ResourceManager:RegisterInstanceLoadHandler(partition_defib_projectile, instance_defib_projectile, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.timeToLive = 25 -- This is the ZAP range !
 	if (bEnable_announcement) == (true) then print('Changed Defibs - Go trololol with the defib range ...') 
end
end)

