-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_m40a5 = Guid ("65B7D9D8-256F-11E0-96DC-FF63A5537869")
	   local instance_m40a5 = Guid ("4DD1F6F8-01D8-49C4-8D2B-A88BB12B52EE")

ResourceManager:RegisterInstanceLoadHandler(partition_m40a5, instance_m40a5, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: m40a5...')
	end
end)
