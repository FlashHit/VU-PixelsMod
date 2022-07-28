-- Repair tool

   local partition_repairtool = Guid ("9D6458CD-2955-11E0-864C-EDEE51946146")
    local instance_repairtool = Guid ("4D509E54-0572-4D7D-BF49-3D83AFCFD73D")

ResourceManager:RegisterInstanceLoadHandler(partition_repairtool, instance_repairtool, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.shot.initialSpeed.z = 20
    loadedInstance.shot.numberOfBulletsPerShell = 3
    loadedInstance.overHeat.heatPerBullet = 0
    print("Chanched Repairtool  ... ... ...")
	end)
