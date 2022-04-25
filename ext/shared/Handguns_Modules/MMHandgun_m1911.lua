class "MMHandgun_m1911"

function MMHandgun_m1911:Write(mmResources)

	if (mmResources:IsLoaded('m1911')) then
		mmResources:SetLoaded('m1911', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m1911'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed m1911 - Pimped AMMO size...')
	end

end
return MMHandgun_m1911()