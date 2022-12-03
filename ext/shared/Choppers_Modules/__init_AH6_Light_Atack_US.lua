-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_ah6engine = Guid ("FD8AB747-FF4D-11DD-A7B1-F7C6DEEC9D32")
   local instance_ah6engine = Guid ("15AB2B27-FF4E-11DD-A7B1-F7C6DEEC9D32")

ResourceManager:RegisterInstanceLoadHandler(partition_ah6engine, instance_ah6engine, function(loadedInstance)
     loadedInstance = PropellerEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.enginePowerMultiplier = 1.5
    loadedInstance.forceMagnitudeMultiplier = 3
    loadedInstance.spForwardStrength = 30.0
    loadedInstance.spSidewaysStrength = 15.0
    loadedInstance.spVerticalStrength = 20.0
	if (bEnable_announcement) == (true) then print('Changed Chopper: AH6-J Engine... (AH6_Light_Atack_US) ... ...')
	end
end)

-- -------------------------
   local partition_ah6rotors = Guid ("FD8AB747-FF4D-11DD-A7B1-F7C6DEEC9D32")
   local instance_ah6rotors = Guid ("15AB2B28-FF4E-11DD-A7B1-F7C6DEEC9D32")

ResourceManager:RegisterInstanceLoadHandler(partition_ah6rotors, instance_ah6rotors, function(loadedInstance)
     loadedInstance = RotorParameters(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.horizontalForceModifier = 2
	if (bEnable_announcement) == (true) then print('Changed Chopper: AH6-J Rotors... (AH6_Light_Atack_US) ... ...')
	end
end)
