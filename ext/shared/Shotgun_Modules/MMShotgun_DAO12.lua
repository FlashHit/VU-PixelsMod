class "MMShotgun_DAO12"

function MMShotgun_DAO12:Write(mmResources)

	if (mmResources:IsLoaded('DAO12')) then
		mmResources:SetLoaded('DAO12', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('DAO12'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = {
			FiringFunctionData(mmResources:GetInstance('DAO12', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('DAO12', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('DAO12', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('DAO12', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 500
			fireData[i].ammo.magazineCapacity = 40
			fireData[i].ammo.numberOfMagazines = 10
			fireData[i].shot.numberOfBulletsPerShell = 50

		dprint('Changed DAO12 - AMMO entity changed ...')
		
	end
	end

end
return MMShotgun_DAO12()
