-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_pp19 = Guid ("983A236F-22EB-11E0-87CC-DAB15BD78BE2")
   local instance_pp19 = Guid ("68808EAD-C07B-4642-B97A-C0B49D55AAB5")

ResourceManager:RegisterInstanceLoadHandler(partition_pp19, instance_pp19, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Common weapon: pp19 - Pimped AMMO size...')
	end
end)
