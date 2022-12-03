-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_l85a2 = Guid ("197EE0EE-6190-46FF-982C-AA90A37439C7")
   local instance_l85a2 = Guid ("99F73917-43AC-4C61-BE0B-AD6570F9CE17")

ResourceManager:RegisterInstanceLoadHandler(partition_l85a2, instance_l85a2, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	if (bEnable_announcement) == (true) then print('Changed Assault weapon: l85a2 - Super charched AMMO...')
	end
end)
