-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_f2000 = Guid ("B73816D2-F3B8-11DF-B48C-9F474D51EF2A")
   local instance_f2000 = Guid ("D900F1B8-0C20-4A04-9448-5459500470AE")

ResourceManager:RegisterInstanceLoadHandler(partition_f2000, instance_f2000, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	if (bEnable_announcement) == (true) then print('Changed Assault weapon: f2000 - Super charched AMMO...')
	end
end)
