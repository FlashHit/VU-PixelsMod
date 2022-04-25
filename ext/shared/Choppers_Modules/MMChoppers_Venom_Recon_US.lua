class "MMChoppers_Venom_Recon_US"

function MMChoppers_Venom_Recon_US:Write(mmResources)

	if (mmResources:IsLoaded('venomengine')) then
		mmResources:SetLoaded('venomengine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('venomengine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 1.5
		engineData.forceMagnitudeMultiplier = 3
		engineData.spForwardStrength = 30.0
		engineData.spSidewaysStrength = 15.0
		engineData.spVerticalStrength = 20.0
		print('Changed Venom Engine... (Venom_Recon_US) ... ...')
	end

	if (mmResources:IsLoaded('venomrotors')) then
		mmResources:SetLoaded('venomrotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('venomrotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed Venom Rotors... (Venom_Recon_US) ... ...')
	end
end

return MMChoppers_Venom_Recon_US()