-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_sprutsdshell = Guid ("115E78B1-74E7-A5A0-490E-853DC10F3FF5")
   local instance_sprutsdshell = Guid ("5F71446D-A417-AD79-3154-074D00ADCF7B")

ResourceManager:RegisterInstanceLoadHandler(partition_sprutsdshell, instance_sprutsdshell, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0
    loadedInstance.timeToLive = 4
	if (bEnable_announcement) == (true) then print('Changed Sprut-SD Shell Modifier ... ... ...')
	end
end)