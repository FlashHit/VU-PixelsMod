class "MMWeapons_ak74m"

function MMWeapons_ak74m:Write(mmResources)


	if (mmResources:IsLoaded('ak74m')) then
		mmResources:SetLoaded('ak74m', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('ak74m'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed ak74m - Super charched AMMO...')
	end

end
return MMWeapons_ak74m()