class "MMWeapons_m249_lmg"

function MMWeapons_m249_lmg:Write(mmResources)

	if (mmResources:IsLoaded('m249')) then
		mmResources:SetLoaded('m249', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m249'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed m249 LMG - Pimped AMMO size...')
	end

end
return MMWeapons_m249_lmg()