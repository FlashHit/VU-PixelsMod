class "MMWeapons_auga3"

function MMWeapons_auga3:Write(mmResources)

	if (mmResources:IsLoaded('auga3')) then
		mmResources:SetLoaded('auga3', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('auga3'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed aug A3- Pimped AMMO size...')
	end

end
return MMWeapons_auga3()