-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m1128shell = Guid ("6244034F-4140-41D5-BFA8-C19FFA05B915")
   local instance_m1128shell = Guid ("19252A4F-00C8-40C3-81BC-62CC02625CE0")
		
ResourceManager:RegisterInstanceLoadHandler(partition_m1128shell, instance_m1128shell, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0
    loadedInstance.timeToLive = 4
	if (bEnable_announcement) == (true) then print('Changed M1128 Stryker Shell Modifier ... ... ...')
	end
end)
