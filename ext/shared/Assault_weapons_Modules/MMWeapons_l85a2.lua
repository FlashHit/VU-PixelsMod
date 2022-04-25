class "MMWeapons_l85a2"

function MMWeapons_l85a2:Write(mmResources)


	if (mmResources:IsLoaded('l85a2')) then
		mmResources:SetLoaded('l85a2', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('l85a2'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed l85a2 - Super charched AMMO...')
	end

end
return MMWeapons_l85a2()