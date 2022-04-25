class "MMWeapons_m16a4"

function MMWeapons_m16a4:Write(mmResources)


	if (mmResources:IsLoaded('m16a4')) then
		mmResources:SetLoaded('m16a4', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m16a4'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed M16A4 - Super charched AMMO...')
	end

end
return MMWeapons_m16a4()