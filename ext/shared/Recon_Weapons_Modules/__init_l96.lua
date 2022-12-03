-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_l96 = Guid ("30710090-22F9-11E0-9B3A-DBCC579DBD38")
	   local instance_l96 = Guid ("4A933C70-2E94-4FD7-B736-50A7ADD25CE5")

ResourceManager:RegisterInstanceLoadHandler(partition_l96, instance_l96, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: l96...')
	end
end)
