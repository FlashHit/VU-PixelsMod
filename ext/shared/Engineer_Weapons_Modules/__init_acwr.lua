-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_acwr = Guid ("E1DE3897-F570-11E0-B897-D25D16CBAAAF")
   local instance_acwr = Guid ("D0D3C6B8-8E77-4876-A809-F663C8FC10E7")

ResourceManager:RegisterInstanceLoadHandler(partition_acwr, instance_acwr, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Engineer weapon: acwr - Pimped AMMO size...')
	end
end)
