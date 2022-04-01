class "MMWeapons_pkp_lmg"

function MMWeapons_pkp_lmg:Write(mmResources)

	if (mmResources:IsLoaded('pkp')) then
		mmResources:SetLoaded('pkp', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('pkp'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed pkp LMG - Pimped AMMO size...')
	end

end
return MMWeapons_pkp_lmg()