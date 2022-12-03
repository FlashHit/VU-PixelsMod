-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_sks = Guid ("409062B8-2AEF-11E0-9848-9E9BC51DCED8")
	   local instance_sks = Guid ("BDBDF5AB-2919-4B69-B225-29362632D7F3")

ResourceManager:RegisterInstanceLoadHandler(partition_sks, instance_sks, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: sks...')
	end
end)
