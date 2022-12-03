   local partition_ump45 = Guid ("13D445F7-EBE3-11DF-91EC-895E59A6915B")
   local instance_ump45 = Guid ("4506ABFE-4F34-48BE-A724-C97DA9BA46B4")

ResourceManager:RegisterInstanceLoadHandler(partition_ump45, instance_ump45, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Common weapon: ump45 - Pimped AMMO size...')
	end
end)
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

