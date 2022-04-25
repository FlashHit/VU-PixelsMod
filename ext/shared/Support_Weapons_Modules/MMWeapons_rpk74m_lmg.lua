class "MMWeapons_rpk74m_lmg"

function MMWeapons_rpk74m_lmg:Write(mmResources)

	if (mmResources:IsLoaded('rpk74m')) then
		mmResources:SetLoaded('rpk74m', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('rpk74m'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed rpk74m LMG - Pimped AMMO size...')
	end

end
return MMWeapons_rpk74m_lmg()