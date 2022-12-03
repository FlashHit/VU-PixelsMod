-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_mi28engine = Guid ("89BE53B6-2FF4-11DE-8C23-DAB1D69416DE")
   local instance_mi28engine = Guid ("89BEA1FD-2FF4-11DE-8C23-DAB1D69416DE")

ResourceManager:RegisterInstanceLoadHandler(partition_mi28engine, instance_mi28engine, function(loadedInstance)
     loadedInstance = PropellerEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.enginePowerMultiplier = 1.5
    loadedInstance.forceMagnitudeMultiplier = 3
    loadedInstance.spForwardStrength = 30.0
    loadedInstance.spSidewaysStrength = 15.0
    loadedInstance.spVerticalStrength = 20.0
	if (bEnable_announcement) == (true) then print('Changed Chopper: Mi28 Engine... (RU Mi28 Atack chopper) ... ...')
	end
end)


-- ------------------
   local partition_mi28rotors = Guid ("89BE53B6-2FF4-11DE-8C23-DAB1D69416DE")
   local instance_mi28rotors = Guid ("89BEA1FE-2FF4-11DE-8C23-DAB1D69416DE")

ResourceManager:RegisterInstanceLoadHandler(partition_mi28rotors, instance_mi28rotors, function(loadedInstance)
     loadedInstance = RotorParameters(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.horizontalForceModifier = 2
		if (bEnable_announcement) == (true) then print('Changed Chopper: Mi28 Rotors... (RU Mi28 Atack chopper) ... ...')
	end
end)
