-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_lsat = Guid ("75E9AE70-B8B5-4A63-BDCC-AAF2914277D2")
    local instance_lsat = Guid ("66CF5A46-9D6C-4AD3-A4FE-F17452F4FCF5")

ResourceManager:RegisterInstanceLoadHandler(partition_lsat, instance_lsat, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	if (bEnable_announcement) == (true) then print('Changed Support weapon: lsat LMG - Pimped AMMO size...')
	end
end)

 -- #############

   local partition_lsat_mag = Guid ("75E9AE70-B8B5-4A63-BDCC-AAF2914277D2")
    local instance_lsat_mag = Guid ("194B7D51-28B9-4EA1-855F-797EB32BC2D0")

ResourceManager:RegisterInstanceLoadHandler(partition_lsat_mag, instance_lsat_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	if (bEnable_announcement) == (true) then print('Changed Support weapon: LSAT LMG - Ext magazine Pimped AMMO size...')
	end
end)
