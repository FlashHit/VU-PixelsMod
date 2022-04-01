class "MMWeapons_scarl"

function MMWeapons_scarl:Write(mmResources)

	if (mmResources:IsLoaded('scarl')) then
		mmResources:SetLoaded('scarl', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('scarl'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed scarl - Pimped AMMO size...')
	end

end
return MMWeapons_scarl()