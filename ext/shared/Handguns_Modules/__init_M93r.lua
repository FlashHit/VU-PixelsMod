-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m93r = Guid ("06374F08-F23B-11DF-A182-B47F2E879897")
   local instance_m93r = Guid ("C3CC5C43-0EAD-4C2A-A67F-123DE27C6476")

ResourceManager:RegisterInstanceLoadHandler(partition_m93r, instance_m93r, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.shot.numberOfBulletsPerBurst = 25
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 10
	if (bEnable_announcement) == (true) then print('Changed Handgun: M93r - Pimped AMMO size...')
	end
end)

