class "MMWeapons_aks74u"

function MMWeapons_aks74u:Write(mmResources)

	if (mmResources:IsLoaded('aks74u')) then
		mmResources:SetLoaded('aks74u', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('aks74u'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed aks74u - Pimped AMMO size...')
	end

end
return MMWeapons_aks74u()