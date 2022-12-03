-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_mp443 = Guid ("0D4646B4-F3DF-11DF-B48C-9F474D51EF2A")
   local instance_mp443 = Guid ("53489D8D-BE0B-4180-9F96-F1B728EFD898")

ResourceManager:RegisterInstanceLoadHandler(partition_mp443, instance_mp443, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Handgun: mp443 - Pimped AMMO size...')
	end
end)
