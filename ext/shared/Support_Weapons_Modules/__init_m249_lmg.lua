-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m249 = Guid ("F37DBC84-F61B-11DF-829C-95F94E7154E3")
    local instance_m249 = Guid ("7FCFC3D7-49C2-477E-8952-664FDA86B41E")

ResourceManager:RegisterInstanceLoadHandler(partition_m249, instance_m249, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	if (bEnable_announcement) == (true) then print('Changed Support weapon: m249 LMG - Pimped AMMO size...')
	end
end)

 -- #############

   local partition_m249_mag = Guid ("F37DBC84-F61B-11DF-829C-95F94E7154E3")
    local instance_m249_mag = Guid ("1B58004C-7338-4B4A-960A-CB5ADE6AB4A3")

ResourceManager:RegisterInstanceLoadHandler(partition_m249_mag, instance_m249_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	if (bEnable_announcement) == (true) then print('Changed Support weapon: M249 LMG - Ext magazine Pimped AMMO size...')
	end
end)
