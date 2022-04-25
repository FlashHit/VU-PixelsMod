class "MMWeapons_f2000"

function MMWeapons_f2000:Write(mmResources)


	if (mmResources:IsLoaded('f2000')) then
		mmResources:SetLoaded('f2000', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('f2000'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed f2000 - Super charched AMMO...')
	end

end
return MMWeapons_f2000()