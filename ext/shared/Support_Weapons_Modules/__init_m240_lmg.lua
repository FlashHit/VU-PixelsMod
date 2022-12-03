-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m240 = Guid ("5D6FD6B8-E5BC-11DF-A152-D82BD29AC2ED")
    local instance_m240 = Guid ("335B1E8B-8BFF-4A0B-80E7-9F55FB9C25DC")

ResourceManager:RegisterInstanceLoadHandler(partition_m240, instance_m240, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	if (bEnable_announcement) == (true) then print('Changed Support weapon: m240 LMG - Pimped AMMO size...')
	end
end)

 -- #############

   local partition_m240_mag = Guid ("5D6FD6B8-E5BC-11DF-A152-D82BD29AC2ED")
    local instance_m240_mag = Guid ("87CB23D8-28DA-4151-89C8-4C4E615E16CE")

ResourceManager:RegisterInstanceLoadHandler(partition_m240_mag, instance_m240_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	if (bEnable_announcement) == (true) then print('Changed Support weapon: M240 LMG - Ext magazine Pimped AMMO size...')
	end
end)
