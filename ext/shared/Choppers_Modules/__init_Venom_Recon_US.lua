   local partition_venomengine = Guid ("97945D87-011D-11E0-B97C-FC495C335A52")
   local instance_venomengine = Guid ("2B590EC0-F63D-482F-B210-0C707C9B71DB")
   local partition_venomrotors = Guid ("97945D87-011D-11E0-B97C-FC495C335A52")
   local instance_venomrotors = Guid ("CBA6B1C2-5690-4F23-9F2B-C24FB9C4958B")

ResourceManager:RegisterInstanceLoadHandler(partition_venomengine, instance_venomengine, function(loadedInstance)
     loadedInstance = PropellerEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.enginePowerMultiplier = 1.5
    loadedInstance.forceMagnitudeMultiplier = 3
    loadedInstance.spForwardStrength = 30.0
    loadedInstance.spSidewaysStrength = 15.0
    loadedInstance.spVerticalStrength = 20.0
	print('Changed Chopper: Venom Engine... (Venom_Recon_US) ... ...')
	end)


ResourceManager:RegisterInstanceLoadHandler(partition_venomrotors, instance_venomrotors, function(loadedInstance)
     loadedInstance = RotorParameters(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.horizontalForceModifier = 2
	print('Changed Venom Chopper: Rotors... (Venom_Recon_US) ... ...')
	end)
