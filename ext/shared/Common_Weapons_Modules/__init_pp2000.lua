-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_pp2000 = Guid ("144442BD-173B-11E0-B7E4-E4E608316920")
    local instance_pp2000 = Guid ("F1DBB6DF-FAAC-4B70-A7EA-2D40068C5CCF")

ResourceManager:RegisterInstanceLoadHandler(partition_pp2000, instance_pp2000, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 3
	if (bEnable_announcement) == (true) then print('Changed Common weapon: pp2000 - Pimped AMMO size...')
	end
end)

-- ############

   local partition_pp2000 = Guid ("144442BD-173B-11E0-B7E4-E4E608316920")
    local instance_pp2000 = Guid ("E3DCB733-CB32-48B2-8942-4A4AE37CD95C")

ResourceManager:RegisterInstanceLoadHandler(partition_pp2000, instance_pp2000, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 240
    loadedInstance.numberOfMagazines = 3

	if (bEnable_announcement) == (true) then print('Changed Common weapon: PP2000 - Ext magazine Pimped AMMO size...')
	end
end)
 