class "MMWeapons_lsat_lmg"

function MMWeapons_lsat_lmg:Write(mmResources)

	if (mmResources:IsLoaded('lsat')) then
		mmResources:SetLoaded('lsat', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('lsat'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed lsat LMG - Pimped AMMO size...')
	end

end
return MMWeapons_lsat_lmg()