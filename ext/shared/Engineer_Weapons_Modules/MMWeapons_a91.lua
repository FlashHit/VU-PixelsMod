class "MMWeapons_a91"

function MMWeapons_a91:Write(mmResources)

	if (mmResources:IsLoaded('a91')) then
		mmResources:SetLoaded('a91', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('a91'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed a91 - Pimped AMMO size...')
	end

end
return MMWeapons_a91()