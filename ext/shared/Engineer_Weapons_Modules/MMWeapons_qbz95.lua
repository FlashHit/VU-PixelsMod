class "MMWeapons_qbz95"

function MMWeapons_qbz95:Write(mmResources)

	if (mmResources:IsLoaded('qbz95')) then
		mmResources:SetLoaded('qbz95', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('qbz95'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed qbz95 - Pimped AMMO size...')
	end

end
return MMWeapons_qbz95()