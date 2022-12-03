-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_qbu88 = Guid ("62FBED30-927B-11E0-A920-988860D1D68B")
	   local instance_qbu88 = Guid ("6B1AE33E-6CE2-422F-BA8E-297BD12A1FAA")

ResourceManager:RegisterInstanceLoadHandler(partition_qbu88, instance_qbu88, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: qbu88...')
	end
end)
