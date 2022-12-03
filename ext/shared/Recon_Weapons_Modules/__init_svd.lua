-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_svd = Guid ("C1A5290C-ED78-11DF-8D94-C4EBBBD642E1")
	   local instance_svd = Guid ("5C26F504-A95E-4E9B-A1A1-84A0440D329B")

ResourceManager:RegisterInstanceLoadHandler(partition_svd, instance_svd, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: svd...')
	end
end)
