-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_scarl = Guid ("6695DE67-4178-4EA7-95F9-9D575EF95E2A")
   local instance_scarl = Guid ("97E50571-45A0-47FF-9A40-ABA5F76AA19A")

ResourceManager:RegisterInstanceLoadHandler(partition_scarl, instance_scarl, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10

	if (bEnable_announcement) == (true) then print('Changed Assault weapon: scarl - Pimped AMMO size...')
	end
end)
