class "MMVehicles_Z11_chopper"

function MMVehicles_Z11_chopper:Write(mmResources)


	if (mmResources:IsLoaded('z11wengine')) then
		mmResources:SetLoaded('z11wengine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('z11wengine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 2
		engineData.forceMagnitudeMultiplier = 4
		engineData.spForwardStrength = 40.0
		--engineData.spSidewaysStrength = 16.0
		--engineData.spVerticalStrength = 45.0
		print('Changed Z11W Engine...')
	end

	if (mmResources:IsLoaded('z11wrotors')) then
		mmResources:SetLoaded('z11wrotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('z11wrotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed Z11W Rotors...')
	end

end

return MMVehicles_Z11_chopper()