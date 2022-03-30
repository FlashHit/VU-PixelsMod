class "MMWeapons_m60e04_lmg"

function MMWeapons_m60e04_lmg:Write(mmResources)

	if (mmResources:IsLoaded('m60')) then
		mmResources:SetLoaded('m60', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m60'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed M60E04 LMG - Pimped AMMO size...')
	end

end
return MMWeapons_m60e04_lmg()