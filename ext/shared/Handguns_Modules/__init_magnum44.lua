-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_magnum44 = Guid ("21E91507-2AF6-11E0-9848-9E9BC51DCED8")
    local instance_magnum44 = Guid ("B6CD5488-67E6-4063-8594-A09DAA2640F3")

ResourceManager:RegisterInstanceLoadHandler(partition_magnum44, instance_magnum44, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Handgun: magnum44 - Pimped AMMO size...')
	end
end)
