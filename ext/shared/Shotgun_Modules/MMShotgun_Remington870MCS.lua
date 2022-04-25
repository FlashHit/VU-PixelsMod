class "MMShotgun_Remington870MCS"

function MMShotgun_Remington870MCS:Write(mmResources)

	if (mmResources:IsLoaded('870mcs')) then
		mmResources:SetLoaded('870mcs', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('870mcs'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = {
			FiringFunctionData(mmResources:GetInstance('870mcs', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('870mcs', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('870mcs', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('870mcs', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 500
			fireData[i].ammo.magazineCapacity = 40
			fireData[i].ammo.numberOfMagazines = 10
		dprint('Changed Remington 870 MCS - AMMO entity changed ...')
		
	end
	end

end
return MMShotgun_Remington870MCS()
