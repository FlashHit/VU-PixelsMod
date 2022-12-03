-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m416 = Guid ("88309FB2-3912-11E0-845E-D6BEC180D605")
   local instance_m416 = Guid ("CA28953E-9A4A-4579-B1B7-1FFBDBFBE7B9")

ResourceManager:RegisterInstanceLoadHandler(partition_m416, instance_m416, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	if (bEnable_announcement) == (true) then print('Changed Assault weapon: m416 - Super charched AMMO...')
	end
end)
