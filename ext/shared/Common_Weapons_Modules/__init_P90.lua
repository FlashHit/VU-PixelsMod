-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_p90 = Guid ("C75DBA86-F326-11DF-ABE6-A89858BEBE43")
   local instance_p90 = Guid ("9629652F-135E-4EE6-A9FB-343D947A4861")
   local partition_p90_silenced = Guid ("C75DBA86-F326-11DF-ABE6-A89858BEBE43")
   local instance_p90_silenced = Guid ("6DE2965E-F31E-4A71-B8AC-36DE4E07E993")

ResourceManager:RegisterInstanceLoadHandler(partition_p90, instance_p90, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Common weapon: P90 - Pimped AMMO size...')
	end
end)

ResourceManager:RegisterInstanceLoadHandler(partition_p90_silenced, instance_p90_silenced, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed P90 Common weapon: Silenced - Pimped AMMO size...')
	end
end)
