class "MMHandgun_g18"

function MMHandgun_g18:Write(mmResources)

	if (mmResources:IsLoaded('g18')) then
		mmResources:SetLoaded('g18', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('g18'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed g18 - Pimped AMMO size...')
	end

	if (mmResources:IsLoaded('g18_supp')) then
		mmResources:SetLoaded('g18_supp', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('g18_supp'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed g18 Silenced - Pimped AMMO size...')
	end


end
return MMHandgun_g18()