class "MMWeapons_an94"

function MMWeapons_an94:Write(mmResources)


	if (mmResources:IsLoaded('an94')) then
		mmResources:SetLoaded('an94', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('an94'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed an94 - Super charched AMMO...')
	end

end
return MMWeapons_an94()