class "MMWeapons_m4"

function MMWeapons_m4:Write(mmResources)

	if (mmResources:IsLoaded('m4')) then
		mmResources:SetLoaded('m4', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m4'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed m4 - Pimped AMMO size...')
	end

end
return MMWeapons_m4()