-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_g3a3 = Guid ("34347158-E5AA-11DF-99EB-E13A35414FEB")
   local instance_g3a3 = Guid ("B0DD2A45-0E62-427A-8834-562D0DCFBC6A")

ResourceManager:RegisterInstanceLoadHandler(partition_g3a3, instance_g3a3, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	if (bEnable_announcement) == (true) then print('Changed Assault weapon: g3a3 - Super charched AMMO...')
	end
end)
