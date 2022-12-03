-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- OK
   local partition_a91 = Guid ("98DAE0F8-1717-11E0-9317-9BA393B7EF47")
   local instance_a91 = Guid ("A7D5788E-0209-4B51-8857-363DA07B9ECD")

ResourceManager:RegisterInstanceLoadHandler(partition_a91, instance_a91, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Engineer weapon: a91 - Pimped AMMO size...')
	end
end)
