class "MMWeapons_g36c"

function MMWeapons_g36c:Write(mmResources)

	if (mmResources:IsLoaded('g36c')) then
		mmResources:SetLoaded('g36c', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('g36c'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed g36c - Pimped AMMO size...')
	end

end
return MMWeapons_g36c()