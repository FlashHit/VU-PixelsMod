-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_famas = Guid ("706A1BD6-6DAB-4CEE-BFCA-82814251E2D8")
   local instance_famas = Guid ("F91A9BA8-A08B-44EE-B6F3-9B181FAD71BA")

ResourceManager:RegisterInstanceLoadHandler(partition_famas, instance_famas, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10

	if (bEnable_announcement) == (true) then print('Changed Assault weapon: famas - Pimped AMMO size...')
	end
end)
