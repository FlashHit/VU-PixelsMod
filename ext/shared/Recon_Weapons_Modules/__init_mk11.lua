-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_mk11 = Guid ("0B82D738-09DF-11E0-9907-B7A8F369505D")
	   local instance_mk11 = Guid ("8A3D05FC-5D85-4FD0-9B96-031E5BE0DED4")

ResourceManager:RegisterInstanceLoadHandler(partition_mk11, instance_mk11, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: MK11...')
	end
end)
