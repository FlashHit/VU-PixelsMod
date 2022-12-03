-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_ah1zengine = Guid ("643135EA-6CA7-11DF-B6FA-F715AA601362")
   local instance_ah1zengine = Guid ("DE4BF5C6-4EC4-45BE-9FDB-D71391F7D39B")

ResourceManager:RegisterInstanceLoadHandler(partition_ah1zengine, instance_ah1zengine, function(loadedInstance)
     loadedInstance = PropellerEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.enginePowerMultiplier = 1.5
    loadedInstance.forceMagnitudeMultiplier = 3
    loadedInstance.spForwardStrength = 30.0
    loadedInstance.spSidewaysStrength = 15.0
    loadedInstance.spVerticalStrength = 20.0
	if (bEnable_announcement) == (true) then print('Changed Chopper: AH1Z Viper Engine... (AH1Z_Atack_US) ... ...')
	end
end)

-- ------------------------
   local partition_ah1zrotors = Guid ("643135EA-6CA7-11DF-B6FA-F715AA601362")
   local instance_ah1zrotors = Guid ("1822C40A-247F-4EDB-AF22-5409774543B5")

ResourceManager:RegisterInstanceLoadHandler(partition_ah1zrotors, instance_ah1zrotors, function(loadedInstance)
     loadedInstance = RotorParameters(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.horizontalForceModifier = 2
	if (bEnable_announcement) == (true) then print('Changed Chopper: AH1Z Viper Rotors... (AH1Z_Atack_US) ... ...')
	end
end)
