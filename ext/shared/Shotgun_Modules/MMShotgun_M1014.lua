class "MMShotgun_M1014"

function MMShotgun_M1014:Write(mmResources)

	if (mmResources:IsLoaded('M1014')) then
		mmResources:SetLoaded('M1014', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('M1014'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = {
			FiringFunctionData(mmResources:GetInstance('M1014', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('M1014', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('M1014', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('M1014', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 500
			fireData[i].ammo.magazineCapacity = 40
			fireData[i].ammo.numberOfMagazines = 10
		dprint('Changed M1014 - AMMO entity changed ...')
		
	end
	end

end
return MMShotgun_M1014()
