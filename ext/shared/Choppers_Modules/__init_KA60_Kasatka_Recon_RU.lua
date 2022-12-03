-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_ka60engine = Guid ("2C5892FC-37CB-4A4E-92E2-2DD7BAF08A5C")
   local instance_ka60engine = Guid ("3B771741-64EC-4740-B340-88D69EDCB2A4")

ResourceManager:RegisterInstanceLoadHandler(partition_ka60engine, instance_ka60engine, function(loadedInstance)
     loadedInstance = PropellerEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.enginePowerMultiplier = 2 -- Default = 1
    loadedInstance.forceMagnitudeMultiplier = 30 -- Default = 75
    loadedInstance.spForwardStrength = 40.0 -- Default = 30
    loadedInstance.spSidewaysStrength = 15.0 -- Default = 10
    loadedInstance.spVerticalStrength = 20.0 -- Default = 10
	if (bEnable_announcement) == (true) then print('Changed Chopper: KA-60 Engine... (KA-60_Kasatka_Recon_RU) ... ...')
	end
end)

-- --------------------
   local partition_ka60rotors = Guid ("2C5892FC-37CB-4A4E-92E2-2DD7BAF08A5C")
   local instance_ka60rotors = Guid ("2D14442E-7269-4E54-9B53-5AFA0D64B302")

ResourceManager:RegisterInstanceLoadHandler(partition_ka60rotors, instance_ka60rotors, function(loadedInstance)
     loadedInstance = RotorParameters(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.horizontalForceModifier = 2 -- Default = 1.2
	if (bEnable_announcement) == (true) then print('Changed Chopper: KA-60 Rotors... (KA-60_Kasatka_Recon_RU) ... ...')
	end
end)
