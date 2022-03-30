class "MMChoppers_atack_chopper"

function MMChoppers_atack_chopper:Write(mmResources)


	if (mmResources:IsLoaded('ah6engine')) then
		mmResources:SetLoaded('ah6engine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('ah6engine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 2
		engineData.forceMagnitudeMultiplier = 4
		engineData.spForwardStrength = 40.0
		--engineData.spSidewaysStrength = 20.0
		--engineData.spVerticalStrength = 50.0
		print('Changed AH6-J Engine...')
	end

	if (mmResources:IsLoaded('ah6rotors')) then
		mmResources:SetLoaded('ah6rotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('ah6rotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed AH6-J Rotors...')
	end

end

return MMChoppers_atack_chopper()