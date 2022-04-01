class "MMWeapons_m416"

function MMWeapons_m416:Write(mmResources)


	if (mmResources:IsLoaded('m416')) then
		mmResources:SetLoaded('m416', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m416'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed m416 - Super charched AMMO...')
	end

end
return MMWeapons_m416()