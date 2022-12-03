-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_mtar = Guid ("057A5DF0-209C-4C31-880F-479AF453884D")
   local instance_mtar = Guid ("3E9966A1-4FE4-4069-A53E-18938CE487F8")

ResourceManager:RegisterInstanceLoadHandler(partition_mtar, instance_mtar, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Engineer weapon: mtar - Pimped AMMO size...')
	end
end)
