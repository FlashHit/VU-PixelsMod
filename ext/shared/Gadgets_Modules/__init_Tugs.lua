-- Pimped Tugs
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible

-- -------------------------------------

	local partition_tugs = Guid ("C6AC3720-4E44-11E0-B74F-973632ECCDB7")
         local Instance_tugs = Guid ("6AD11C63-B795-4233-B943-C6DE347E26A7")

ResourceManager:RegisterInstanceLoadHandler(partition_tugs, Instance_tugs, function(loadedInstance)

    loadedInstance = RadarSweepComponentData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.controllableSweepRadius = 60
    loadedInstance.controllableSweepInterval = 1.5
    loadedInstance.sweepForMines = true
    loadedInstance.mineSweepRadius = 60
    loadedInstance.mineSweepInterval = 1.5

 	if (bEnable_announcement) == (true) then print('Changed Gadgets: T-UGS Sweep Range...')
end
end)

 	local partition_placemore_tugs = Guid ("483F1918-1815-11E0-8BA5-9B1E2E41035E")
       local Instance_placemore_tugs = Guid ("E8BDE781-EBCA-4FFB-8219-6DCAC05DE5AE")
 
 ResourceManager:RegisterInstanceLoadHandler(partition_placemore_tugs, Instance_placemore_tugs, function(loadedInstance)
 
     loadedInstance = VehicleProjectileEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.maxCount = 5
 	if (bEnable_announcement) == (true) then print('Changed Gadgets: T-UGS - can place more ! ...')
end
 	end)
--
