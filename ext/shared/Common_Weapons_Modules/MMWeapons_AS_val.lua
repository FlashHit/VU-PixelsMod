class "MMWeapons_AS_val"

function MMWeapons_AS_val:Write(mmResources)

	if (mmResources:IsLoaded('asval')) then
		mmResources:SetLoaded('asval', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('asval'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
--		fireData.ammo.numberOfMagazines = 10
		dprint('Changed AS-Val - (mod 2) Pimped AMMO size...')
	end

end
return MMWeapons_AS_val()
