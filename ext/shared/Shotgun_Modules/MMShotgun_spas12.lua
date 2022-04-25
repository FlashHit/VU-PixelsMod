class "MMShotgun_spas12"

function MMShotgun_spas12:Write(mmResources)

	if (mmResources:IsLoaded('spas12')) then
		mmResources:SetLoaded('spas12', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('spas12'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = {
			FiringFunctionData(mmResources:GetInstance('spas12', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('spas12', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('spas12', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('spas12', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 500
			fireData[i].ammo.magazineCapacity = 40
			fireData[i].ammo.numberOfMagazines = 10
		dprint('Changed Spas12 - AMMO entity changed ...')
		
	end
	end

end
return MMShotgun_spas12()
