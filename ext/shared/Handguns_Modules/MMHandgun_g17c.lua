class "MMHandgun_g17c"

function MMHandgun_g17c:Write(mmResources)

	if (mmResources:IsLoaded('g17c')) then
		mmResources:SetLoaded('g17c', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('g17c'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed g17c - Pimped AMMO size...')
	end

	if (mmResources:IsLoaded('g17c_supp')) then
		mmResources:SetLoaded('g17c_supp', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('g17c_supp'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed g17c Silenced - Pimped AMMO size...')
	end

end
return MMHandgun_g17c()