class "MMWeapons_g3a3"

function MMWeapons_g3a3:Write(mmResources)


	if (mmResources:IsLoaded('g3a3')) then
		mmResources:SetLoaded('g3a3', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('g3a3'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed g3a3 - Super charched AMMO...')
	end

end
return MMWeapons_g3a3()