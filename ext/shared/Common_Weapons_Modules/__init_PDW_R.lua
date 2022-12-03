-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_pdwr = Guid ("C47BFE6F-1F1E-11E0-AE3C-E30EAF72F572")
    local instance_pdwr = Guid ("EA2D2761-E274-4836-8C92-9825594A879C")

ResourceManager:RegisterInstanceLoadHandler(partition_pdwr, instance_pdwr, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 3
	if (bEnable_announcement) == (true) then print('Changed Common weapon: PDW-R - Pimped AMMO size...')
	end
end)

-- ############

   local partition_pdwr = Guid ("C47BFE6F-1F1E-11E0-AE3C-E30EAF72F572")
    local instance_pdwr = Guid ("343087A5-14B9-4E4D-A60C-0AE894392BB5")

ResourceManager:RegisterInstanceLoadHandler(partition_pdwr, instance_pdwr, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 240
    loadedInstance.numberOfMagazines = 3

	if (bEnable_announcement) == (true) then print('Changed Common weapon: PDW-R - Ext magazine Pimped AMMO size...')
	end
end)
