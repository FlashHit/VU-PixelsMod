class "MMWeapons_type88_lmg"

function MMWeapons_type88_lmg:Write(mmResources)

	if (mmResources:IsLoaded('type88')) then
		mmResources:SetLoaded('type88', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('type88'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed type88 LMG - Pimped AMMO size...')
	end

end
return MMWeapons_type88_lmg()