-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- OK
   local partition_scarh = Guid ("3DD281E1-279E-11E0-BCCD-BF5F79C336AA")
   local instance_scarh = Guid ("44311C4C-0308-4CB5-82FD-341584BB1EC0")

ResourceManager:RegisterInstanceLoadHandler(partition_scarh, instance_scarh, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Engineer weapon: scarh - Pimped AMMO size...')
	end
end)
