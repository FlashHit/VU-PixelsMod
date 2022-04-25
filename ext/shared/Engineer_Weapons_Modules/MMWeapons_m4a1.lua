class "MMWeapons_m4a1"

function MMWeapons_m4a1:Write(mmResources)

	if (mmResources:IsLoaded('m4a1')) then
		mmResources:SetLoaded('m4a1', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m4a1'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed m4a1 - Pimped AMMO size...')
	end

end
return MMWeapons_m4a1()