-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m16a3 = Guid ("EA96401D-F166-11DF-A2F6-9139D3229269")
   local instance_m16a3 = Guid ("1CAE0E91-1EC1-48B9-8FFE-90EDA105FFB4")

ResourceManager:RegisterInstanceLoadHandler(partition_m16a3, instance_m16a3, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	
	if (bEnable_announcement) == (true) then print('Changed Assault weapon: M16A3 - Super charched AMMO...')
	end
end)

