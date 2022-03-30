class "MMWeapons_famas"

function MMWeapons_famas:Write(mmResources)

	if (mmResources:IsLoaded('famas')) then
		mmResources:SetLoaded('famas', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('famas'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed famas - Pimped AMMO size...')

	end 


end
return MMWeapons_famas()


