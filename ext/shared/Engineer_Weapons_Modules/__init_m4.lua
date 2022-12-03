-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- M4a1 OK
   local partition_m4 = Guid ("E58B6AE6-E32E-11DF-8110-9522DC68C5EB")
   local instance_m4 = Guid ("C2C9ECFB-CDB9-43FC-BD69-EBA56E151FA8")

ResourceManager:RegisterInstanceLoadHandler(partition_m4, instance_m4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Engineer weapon: m4 - Pimped AMMO size...')
	end
end)
