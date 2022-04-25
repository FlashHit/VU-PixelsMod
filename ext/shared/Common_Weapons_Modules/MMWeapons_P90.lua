class "MMWeapons_P90"

function MMWeapons_P90:Write(mmResources)

	if (mmResources:IsLoaded('gm_p90')) then
		mmResources:SetLoaded('gm_p90', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/P90/P90_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 50
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 1
		fireData.ammo.numberOfMagazines = 7
		dprint('Changed P90 (GM) - Pimped AMMO size...')
	end

	if (mmResources:IsLoaded('p90')) then
		mmResources:SetLoaded('p90', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/P90/P90')
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 50
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 1
		fireData.ammo.numberOfMagazines = 7
		dprint('Changed P90 - Pimped AMMO size...')
	end

	if (mmResources:IsLoaded('p90_silenced')) then
		mmResources:SetLoaded('p90_silenced', false)

		local projectileMod = ebxEditUtils:GetWritableInstance(mmResources:GetInstance('p90_silenced'))
		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/P90/P90')
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 50
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 1
		fireData.ammo.numberOfMagazines = 7
		dprint('Changed P90 Silenced - Pimped AMMO size...')
	end


end
return MMWeapons_P90()