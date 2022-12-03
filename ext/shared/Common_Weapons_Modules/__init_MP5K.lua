-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_mp5k = Guid ("B0F05591-F4AE-4BFF-9570-8DB045590A72")
    local instance_mp5k = Guid ("DBF391F1-A554-4EF0-A2BC-25DDA7F2298C")

ResourceManager:RegisterInstanceLoadHandler(partition_mp5k, instance_mp5k, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 3
	if (bEnable_announcement) == (true) then print('Changed Common weapon: MP5K - Pimped AMMO size...')
	end
end)

-- ############

   local partition_mp5k = Guid ("B0F05591-F4AE-4BFF-9570-8DB045590A72")
    local instance_mp5k = Guid ("1240EE17-948A-4245-B7BD-E7F5FA1EF0B0")

ResourceManager:RegisterInstanceLoadHandler(partition_mp5k, instance_mp5k, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 240
    loadedInstance.numberOfMagazines = 3

	if (bEnable_announcement) == (true) then print('Changed Common weapon: MP5K - Ext magazine Pimped AMMO size...')
	end
end)
