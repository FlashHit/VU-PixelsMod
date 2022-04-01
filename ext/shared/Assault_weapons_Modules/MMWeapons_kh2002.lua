class "MMWeapons_kh2002"

function MMWeapons_kh2002:Write(mmResources)


	if (mmResources:IsLoaded('kh2002')) then
		mmResources:SetLoaded('kh2002', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('kh2002'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed kh2002 - Super charched AMMO...')
	end

end
return MMWeapons_kh2002()