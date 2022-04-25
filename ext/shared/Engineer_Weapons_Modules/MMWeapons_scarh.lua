class "MMWeapons_scarh"

function MMWeapons_scarh:Write(mmResources)

	if (mmResources:IsLoaded('scarh')) then
		mmResources:SetLoaded('scarh', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('scarh'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed scarh - Pimped AMMO size...')
	end

end
return MMWeapons_scarh()