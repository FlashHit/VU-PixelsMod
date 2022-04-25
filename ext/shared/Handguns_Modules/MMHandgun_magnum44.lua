class "MMHandgun_magnum44"

function MMHandgun_magnum44:Write(mmResources)

	if (mmResources:IsLoaded('magnum44')) then
		mmResources:SetLoaded('magnum44', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('magnum44'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed magnum44 - Pimped AMMO size...')
	end

end
return MMHandgun_magnum44()