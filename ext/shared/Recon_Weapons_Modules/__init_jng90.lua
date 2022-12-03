-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

	   local partition_jng90 = Guid ("8C663DDE-525E-4A4D-8D88-7CA1970E59D7")
	   local instance_jng90 = Guid ("A81D728D-9CAD-4277-88EE-01F96D515889")

ResourceManager:RegisterInstanceLoadHandler(partition_jng90, instance_jng90, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 5

	if (bEnable_announcement) == (true) then print('Changed Recon weapon: JNG-90...')
	end
end)
