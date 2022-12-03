-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_qbb95 = Guid ("EC29F616-A358-481C-BD2E-EEAD692CAA49")
    local instance_qbb95 = Guid ("A6F96A7A-B741-42F6-AC02-832FB41752DA")

ResourceManager:RegisterInstanceLoadHandler(partition_qbb95, instance_qbb95, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	if (bEnable_announcement) == (true) then print('Changed Support weapon: qbb95 LMG - Pimped AMMO size...')
	end
end)

 -- #############

   local partition_qbb95_mag = Guid ("EC29F616-A358-481C-BD2E-EEAD692CAA49")
    local instance_qbb95_mag = Guid ("131F4C61-A030-4EAE-A7CE-F93B7DF94751")

ResourceManager:RegisterInstanceLoadHandler(partition_qbb95_mag, instance_qbb95_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	if (bEnable_announcement) == (true) then print('Changed Support weapon: QBB95 LMG - Ext magazine Pimped AMMO size...')
	end
end)
