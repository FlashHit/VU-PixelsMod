class "MMWeapons_qbb95_lmg"

function MMWeapons_qbb95_lmg:Write(mmResources)

	if (mmResources:IsLoaded('qbb95')) then
		mmResources:SetLoaded('qbb95', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('qbb95'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed qbb95 LMG - Pimped AMMO size...')
	end

end
return MMWeapons_qbb95_lmg()