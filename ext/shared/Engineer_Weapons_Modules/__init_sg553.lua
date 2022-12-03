-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- OK
   local partition_sg553 = Guid ("B8F7A8DD-17E0-11E0-8CD8-85483A75A7C5")
   local instance_sg553 = Guid ("770B6F5B-2126-4327-B439-8D77B744E12B")

ResourceManager:RegisterInstanceLoadHandler(partition_sg553, instance_sg553, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Engineer weapon: sg553 - Pimped AMMO size...')
	end
end)
