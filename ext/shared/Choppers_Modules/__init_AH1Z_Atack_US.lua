   local partition_ah1zengine = Guid ("643135EA-6CA7-11DF-B6FA-F715AA601362")
   local instance_ah1zengine = Guid ("DE4BF5C6-4EC4-45BE-9FDB-D71391F7D39B")
   local partition_ah1zrotors = Guid ("643135EA-6CA7-11DF-B6FA-F715AA601362")
   local instance_ah1zrotors = Guid ("1822C40A-247F-4EDB-AF22-5409774543B5")

ResourceManager:RegisterInstanceLoadHandler(partition_ah1zengine, instance_ah1zengine, function(loadedInstance)
     loadedInstance = PropellerEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.enginePowerMultiplier = 1.5
    loadedInstance.forceMagnitudeMultiplier = 3
    loadedInstance.spForwardStrength = 30.0
    loadedInstance.spSidewaysStrength = 15.0
    loadedInstance.spVerticalStrength = 20.0
	print('Changed Chopper: AH1Z Viper Engine... (AH1Z_Atack_US) ... ...')
	end)


ResourceManager:RegisterInstanceLoadHandler(partition_ah1zrotors, instance_ah1zrotors, function(loadedInstance)
     loadedInstance = RotorParameters(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.horizontalForceModifier = 2
	print('Changed Chopper: AH1Z Viper Rotors... (AH1Z_Atack_US) ... ...')
	end)
