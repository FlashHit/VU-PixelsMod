   local partition_mi28engine = Guid ("89BE53B6-2FF4-11DE-8C23-DAB1D69416DE")
   local instance_mi28engine = Guid ("89BEA1FD-2FF4-11DE-8C23-DAB1D69416DE")
   local partition_mi28rotors = Guid ("89BE53B6-2FF4-11DE-8C23-DAB1D69416DE")
   local instance_mi28rotors = Guid ("89BEA1FE-2FF4-11DE-8C23-DAB1D69416DE")

ResourceManager:RegisterInstanceLoadHandler(partition_mi28engine, instance_mi28engine, function(loadedInstance)
     loadedInstance = PropellerEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.enginePowerMultiplier = 1.5
    loadedInstance.forceMagnitudeMultiplier = 3
    loadedInstance.spForwardStrength = 30.0
    loadedInstance.spSidewaysStrength = 15.0
    loadedInstance.spVerticalStrength = 20.0
	print('Changed Chopper: Mi28 Engine... (RU Mi28 Atack chopper) ... ...')
	end)



ResourceManager:RegisterInstanceLoadHandler(partition_mi28rotors, instance_mi28rotors, function(loadedInstance)
     loadedInstance = RotorParameters(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.horizontalForceModifier = 2
		print('Changed Chopper: Mi28 Rotors... (RU Mi28 Atack chopper) ... ...')
	end)
