class "MMChoppers_AH1Z_Atack_US"

function MMChoppers_AH1Z_Atack_US:Write(mmResources)

	if (mmResources:IsLoaded('ah1zengine')) then
		mmResources:SetLoaded('ah1zengine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('ah1zengine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 1.5
		engineData.forceMagnitudeMultiplier = 3
		engineData.spForwardStrength = 30.0
		engineData.spSidewaysStrength = 15.0
		engineData.spVerticalStrength = 20.0
		print('Changed AH1Z Viper Engine... (AH1Z_Atack_US) ... ...')
	end

	if (mmResources:IsLoaded('ah1zrotors')) then
		mmResources:SetLoaded('ah1zrotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('ah1zrotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed AH1Z Viper Rotors... (AH1Z_Atack_US) ... ...')
	end
end

return MMChoppers_AH1Z_Atack_US()