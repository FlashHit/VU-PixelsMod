class "MMChoppers_Mi28_Atack_RU"

function MMChoppers_Mi28_Atack_RU:Write(mmResources)

	if (mmResources:IsLoaded('mi28engine')) then
		mmResources:SetLoaded('mi28engine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('mi28engine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 1.5
		engineData.forceMagnitudeMultiplier = 3
		engineData.spForwardStrength = 30.0
		engineData.spSidewaysStrength = 15.0
		engineData.spVerticalStrength = 20.0
		print('Changed Mi28 Engine... (RU Mi28 Atack chopper) ... ...')
	end

	if (mmResources:IsLoaded('mi28rotors')) then
		mmResources:SetLoaded('mi28rotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('mi28rotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed Mi28 Rotors... (RU Mi28 Atack chopper) ... ...')
	end
end

return MMChoppers_Mi28_Atack_RU()