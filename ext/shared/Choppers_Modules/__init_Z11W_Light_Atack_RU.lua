-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_z11wengine = Guid ("D78088E5-38B7-11DE-BF1C-984D9AEE762C")
   local instance_z11wengine = Guid ("D780B01D-38B7-11DE-BF1C-984D9AEE762C")

ResourceManager:RegisterInstanceLoadHandler(partition_z11wengine, instance_z11wengine, function(loadedInstance)
     loadedInstance = PropellerEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance:MakeWritable()
    loadedInstance.enginePowerMultiplier = 1.5
    loadedInstance.forceMagnitudeMultiplier = 3
    loadedInstance.spForwardStrength = 30.0
    loadedInstance.spSidewaysStrength = 15.0
    loadedInstance.spVerticalStrength = 20.0
	if (bEnable_announcement) == (true) then print('Changed Chopper: Z11W Engine... (RU Light Atack chopper) ... ...')
	end
end)


-- -----------------
   local partition_z11wrotors = Guid ("D78088E5-38B7-11DE-BF1C-984D9AEE762C")
   local instance_z11wrotors = Guid ("D780B01E-38B7-11DE-BF1C-984D9AEE762C")

ResourceManager:RegisterInstanceLoadHandler(partition_z11wrotors, instance_z11wrotors, function(loadedInstance)
     loadedInstance = RotorParameters(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.horizontalForceModifier = 2
	if (bEnable_announcement) == (true) then print('Changed Chopper: Z11W Rotors... (RU Light Atack chopper) ... ...')
	end
end)
