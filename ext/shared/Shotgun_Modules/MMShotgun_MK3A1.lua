class "MMShotgun_MK3A1"

function MMShotgun_MK3A1:Write(mmResources)

	if (mmResources:IsLoaded('jackhammer')) then
		mmResources:SetLoaded('jackhammer', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jackhammer'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = {
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('jackhammer', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 500
			fireData[i].ammo.magazineCapacity = 40
			fireData[i].ammo.numberOfMagazines = 10
		dprint('Changed MK3A1 Jackhammer - AMMO entity changed ...')
		
	end
	end

end
return MMShotgun_MK3A1()
