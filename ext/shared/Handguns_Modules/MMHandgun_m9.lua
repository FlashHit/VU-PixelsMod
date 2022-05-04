class "MMHandgun_m9"

function MMHandgun_m9:Write(mmResources)

	if (mmResources:IsLoaded('m9')) then
		mmResources:SetLoaded('m9', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m9'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed M9 - Pimped AMMO size...')
	end

	if (mmResources:IsLoaded('gm_m9')) then
		mmResources:SetLoaded('gm_m9', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('gm_m9'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed M9 - (GM) Pimped AMMO size...')
	end


end
return MMHandgun_m9()