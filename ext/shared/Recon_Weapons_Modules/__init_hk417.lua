-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_hk417 = Guid ("E9658C2B-DE00-413D-B63B-BC3504652373")
   local instance_hk417 = Guid ("365D2E80-5EAD-4DA5-A7B7-4CD953B52E25")

ResourceManager:RegisterInstanceLoadHandler(partition_hk417, instance_hk417, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: hk417...')
	end
end)
