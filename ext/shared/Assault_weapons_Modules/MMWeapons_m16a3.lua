class "MMWeapons_m16a3"

function MMWeapons_m16a3:Write(mmResources)


	if (mmResources:IsLoaded('m16a3')) then
		mmResources:SetLoaded('m16a3', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('m16a3'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed M16A3 - Super charched AMMO...')
	end

end
return MMWeapons_m16a3()