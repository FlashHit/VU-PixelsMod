class "MMShotgun_Saiga20K"

function MMShotgun_Saiga20K:Write(mmResources)

	if (mmResources:IsLoaded('Saiga20K')) then
		mmResources:SetLoaded('Saiga20K', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('Saiga20K'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = {
			FiringFunctionData(mmResources:GetInstance('Saiga20K', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('Saiga20K', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('Saiga20K', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('Saiga20K', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 500
			fireData[i].ammo.magazineCapacity = 40
			fireData[i].ammo.numberOfMagazines = 10
			fireData[i].shot.numberOfBulletsPerShell = 50

		dprint('Changed Saiga20K - AMMO entity changed ...')
		
	end
	end

end
return MMShotgun_Saiga20K()
