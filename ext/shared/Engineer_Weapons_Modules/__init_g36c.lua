-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- OK
   local partition_g36c = Guid ("00204E5D-09D2-11E0-9907-B7A8F369505D")
   local instance_g36c = Guid ("4E846F32-FCE3-4AB9-AF84-61584B7C9846")

ResourceManager:RegisterInstanceLoadHandler(partition_g36c, instance_g36c, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Engineer weapon: g36c - Pimped AMMO size...')
	end
end)
