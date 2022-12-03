-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_m98 = Guid ("84BA0CE7-1755-11E0-B7E4-E4E608316920")
	   local instance_m98 = Guid ("7805C312-2B2B-49C6-B1A9-F6A99863BA3E")

ResourceManager:RegisterInstanceLoadHandler(partition_m98, instance_m98, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: m98...')
	end
end)
