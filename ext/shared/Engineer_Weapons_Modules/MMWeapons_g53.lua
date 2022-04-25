class "MMWeapons_g53"

function MMWeapons_g53:Write(mmResources)

	if (mmResources:IsLoaded('g53')) then
		mmResources:SetLoaded('g53', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('g53'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed g53 - Pimped AMMO size...')
	end

end
return MMWeapons_g53()