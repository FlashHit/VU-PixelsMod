-- Repair tool
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible

-- -------------------------------------

   local partition_repairtool = Guid ("9D6458CD-2955-11E0-864C-EDEE51946146")
    local instance_repairtool = Guid ("4D509E54-0572-4D7D-BF49-3D83AFCFD73D")

ResourceManager:RegisterInstanceLoadHandler(partition_repairtool, instance_repairtool, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.shot.initialSpeed.z = 20
    loadedInstance.shot.numberOfBulletsPerShell = 3
    loadedInstance.overHeat.heatPerBullet = 0
 	if (bEnable_announcement) == (true) then print("Changed Repairtool  ... ... ...")
end
	end)
