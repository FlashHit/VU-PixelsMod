class "MMWeapons_sg553"

function MMWeapons_sg553:Write(mmResources)

	if (mmResources:IsLoaded('sg553')) then
		mmResources:SetLoaded('sg553', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('sg553'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed sg553 - Pimped AMMO size...')
	end

end
return MMWeapons_sg553()