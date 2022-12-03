-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- OK
   local partition_qbz95 = Guid ("1F059380-D6B9-437F-B9D4-BD85038233A9")
   local instance_qbz95 = Guid ("7A40EBD2-B50B-4BD5-9AEC-6C7DB4D457FB")

ResourceManager:RegisterInstanceLoadHandler(partition_qbz95, instance_qbz95, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Engineer weapon: qbz95 - Pimped AMMO size...')
	end
end)
