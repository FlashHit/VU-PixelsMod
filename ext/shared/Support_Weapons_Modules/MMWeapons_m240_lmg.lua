class "MMWeapons_m240_lmg"

function MMWeapons_m240_lmg:Write(mmResources)

	if (mmResources:IsLoaded('m240')) then
		mmResources:SetLoaded('m240', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m240'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed m240 LMG - Pimped AMMO size...')
	end

end
return MMWeapons_m240_lmg()