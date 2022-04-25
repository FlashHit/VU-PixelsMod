class "MMChoppers_AH6_Light_Atack_US"

function MMChoppers_AH6_Light_Atack_US:Write(mmResources)

	if (mmResources:IsLoaded('ah6engine')) then
		mmResources:SetLoaded('ah6engine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('ah6engine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 1.5
		engineData.forceMagnitudeMultiplier = 3
		engineData.spForwardStrength = 30.0
		engineData.spSidewaysStrength = 15.0
		engineData.spVerticalStrength = 20.0
		print('Changed AH6-J Engine... (AH6_Light_Atack_US) ... ...')
	end

	if (mmResources:IsLoaded('ah6rotors')) then
		mmResources:SetLoaded('ah6rotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('ah6rotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed AH6-J Rotors... (AH6_Light_Atack_US) ... ...')
	end
end

return MMChoppers_AH6_Light_Atack_US()