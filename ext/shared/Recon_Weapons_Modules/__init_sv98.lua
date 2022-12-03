-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_sv98 = Guid ("0B551663-E80F-11DF-9138-C690837A65DF")
	   local instance_sv98 = Guid ("3CC3FF85-FB0C-4686-8B55-949FD31A09CE")

ResourceManager:RegisterInstanceLoadHandler(partition_sv98, instance_sv98, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: sv98...')
	end
end)
