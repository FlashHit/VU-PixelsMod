-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_g17c = Guid ("3B3F9879-EB4B-11DF-8AA6-AE0344995412")
   local instance_g17c = Guid ("56911FB5-F016-456D-8B7E-A50C4EE33D6C")
   local partition_g17c_supp = Guid ("3B3F9879-EB4B-11DF-8AA6-AE0344995412")
   local instance_g17c_supp = Guid ("EE3C5B46-187E-43CF-8D9C-9058482BAABB")

ResourceManager:RegisterInstanceLoadHandler(partition_g17c, instance_g17c, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Handgun: g17c - Pimped AMMO size...')
	end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_g17c_supp, instance_g17c_supp, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Handgun: g17c Silenced - Pimped AMMO size...')
	end
end)
