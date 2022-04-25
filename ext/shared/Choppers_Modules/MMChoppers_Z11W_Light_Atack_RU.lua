class "MMChoppers_Z11W_Light_Atack_RU"

function MMChoppers_Z11W_Light_Atack_RU:Write(mmResources)

	if (mmResources:IsLoaded('z11wengine')) then
		mmResources:SetLoaded('z11wengine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('z11wengine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 1.5
		engineData.forceMagnitudeMultiplier = 3
		engineData.spForwardStrength = 30.0
		engineData.spSidewaysStrength = 15.0
		engineData.spVerticalStrength = 20.0
		print('Changed Z11W Engine... (RU Light Atack chopper) ... ...')
	end

	if (mmResources:IsLoaded('z11wrotors')) then
		mmResources:SetLoaded('z11wrotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('z11wrotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed Z11W Rotors... (RU Light Atack chopper) ... ...')
	end
end

return MMChoppers_Z11W_Light_Atack_RU()