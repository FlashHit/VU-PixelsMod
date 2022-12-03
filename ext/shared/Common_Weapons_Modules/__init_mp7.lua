-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_mp7 = Guid ("122FC693-ECA7-11DF-BD6E-C1427E3D6CAB")
    local instance_mp7 = Guid ("FD1B70F6-0E01-4698-874D-DD4B19CC550D")

ResourceManager:RegisterInstanceLoadHandler(partition_mp7, instance_mp7, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 3
	if (bEnable_announcement) == (true) then print('Changed Common weapon: mp7 - Pimped AMMO size...')
	end
end)

-- ############

   local partition_mp7 = Guid ("122FC693-ECA7-11DF-BD6E-C1427E3D6CAB")
    local instance_mp7 = Guid ("E9CE6474-4004-4692-BCF4-536170128B7C")

ResourceManager:RegisterInstanceLoadHandler(partition_mp7, instance_mp7, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 240
    loadedInstance.numberOfMagazines = 3

	if (bEnable_announcement) == (true) then print('Changed Common weapon: MP7 - Ext magazine Pimped AMMO size...')
	end
end)
