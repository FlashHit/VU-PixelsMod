class "MMWeapons_mg36_lmg"

function MMWeapons_mg36_lmg:Write(mmResources)

	if (mmResources:IsLoaded('mg36')) then
		mmResources:SetLoaded('mg36', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('mg36'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed mg36 LMG - Pimped AMMO size...')
	end

end
return MMWeapons_mg36_lmg()