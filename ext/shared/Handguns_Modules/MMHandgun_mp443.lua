class "MMHandgun_mp443"

function MMHandgun_mp443:Write(mmResources)

	if (mmResources:IsLoaded('mp443')) then
		mmResources:SetLoaded('mp443', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('mp443'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed mp443 - Pimped AMMO size...')
	end

	if (mmResources:IsLoaded('gm_mp443')) then
		mmResources:SetLoaded('gm_mp443', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('gm_mp443'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed mp443 - (GM) Pimped AMMO size...')
	end

end
return MMHandgun_mp443()