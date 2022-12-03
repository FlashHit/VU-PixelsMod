-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_m39ebr = Guid ("351A4849-F3F3-11DF-B48C-9F474D51EF2A")
	   local instance_m39ebr = Guid ("3A02DDD1-F502-4335-80E1-2E4CDF970336")

ResourceManager:RegisterInstanceLoadHandler(partition_m39ebr, instance_m39ebr, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: m39ebr...')
	end
end)
