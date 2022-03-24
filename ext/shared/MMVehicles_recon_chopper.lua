class "MMVehicles_recon_chopper"

function MMVehicles_recon_chopper:Write(mmResources)


	if (mmResources:IsLoaded('venomengine')) then
		mmResources:SetLoaded('venomengine', false)

		local engineData = PropellerEngineConfigData(mmResources:GetInstance('venomengine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 3
		engineData.forceMagnitudeMultiplier = 4
		engineData.spForwardStrength = 50.0
		--engineData.spSidewaysStrength = 15.0
		--engineData.spVerticalStrength = 25.0
		print('Changed Venom Engine...')
	end

	if (mmResources:IsLoaded('venomrotors')) then
		mmResources:SetLoaded('venomrotors', false)

		local rotorData = RotorParameters(mmResources:GetInstance('venomrotors'))
		rotorData:MakeWritable()
		rotorData.horizontalForceModifier = 2
		print('Changed Venom Rotors...')
	end

end

return MMVehicles_recon_chopper()