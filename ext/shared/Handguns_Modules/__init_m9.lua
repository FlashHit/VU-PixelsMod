-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m9 = Guid ("94D0FEE8-E685-11DF-805B-F4FA4757ED08")
   local instance_m9 = Guid ("4CDDA2E9-C167-4F81-9958-835EAC8C65D7")

ResourceManager:RegisterInstanceLoadHandler(partition_m9, instance_m9, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Handgun: M9 - Pimped AMMO size...')
	end
end)
