class "MMChoppers_KA60_Kasatka_Recon_RU"

function MMChoppers_KA60_Kasatka_Recon_RU:Write(mmResources)

	if (mmResources:IsLoaded('ka60engine')) then
		mmResources:SetLoaded('ka60engine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('ka60engine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 1.5
		engineData.forceMagnitudeMultiplier = 3
		engineData.spForwardStrength = 30.0
		engineData.spSidewaysStrength = 15.0
		engineData.spVerticalStrength = 20.0
		print('Changed KA-60 Engine... (KA-60_Kasatka_Recon_RU) ... ...')
	end

	if (mmResources:IsLoaded('ka60rotors')) then
		mmResources:SetLoaded('ka60rotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('ka60rotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed KA-60 Rotors... (KA-60_Kasatka_Recon_RU) ... ...')
	end
end

return MMChoppers_KA60_Kasatka_Recon_RU()