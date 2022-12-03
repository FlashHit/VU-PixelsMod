-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_an94 = Guid ("37A1075D-0467-11E0-A970-FF10D557871E")
   local instance_an94 = Guid ("B4E31807-4480-4393-93C0-8B4DFACC6A53")

ResourceManager:RegisterInstanceLoadHandler(partition_an94, instance_an94, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	if (bEnable_announcement) == (true) then print('Changed Assault weapon: an94 - Super charched AMMO...')
	end
end)

