-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_kh2002 = Guid ("CF1239D1-1738-11E0-B7E4-E4E608316920")
   local instance_kh2002 = Guid ("D8CDC02F-42A9-4278-B3DD-89375EB6B9D4")

ResourceManager:RegisterInstanceLoadHandler(partition_kh2002, instance_kh2002, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	if (bEnable_announcement) == (true) then print('Changed Assault weapon: kh2002 - Super charched AMMO...')
	end
end)
