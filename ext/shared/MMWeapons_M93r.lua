class "MMWeapons_M93r"

function MMWeapons_M93r:Write(instance)

	if (mmResources:IsLoaded('m93r') and mmResources:IsLoaded('m93rbullet')) then
		mmResources:SetLoaded('m93r', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/M93R/M93R')
		local weaponData = SoldierWeaponData(weaponBP.object)

--		self:OverrideGMMagSize(weaponData, 5)

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 380
		fireData.shot.numberOfBulletsPerBurst = 16
		fireData.fireLogic.rateOfFire = 900
		fireData.fireLogic.rateOfFireForBurst = 900
		fireData.ammo.magazineCapacity = 16
		fireData.ammo.numberOfMagazines = -1
		
		local bulletData = BulletEntityData(mmResources:GetInstance('m93rbullet'))
		bulletData:MakeWritable()
		bulletData.gravity = -9.8
		bulletData.startDamage = 15
		bulletData.endDamage = 15
		bulletData.damageFalloffStartDistance = 0
		bulletData.damageFalloffEndDistance = 1
		dprint('Changed M93r...')
	end 

	if (mmResources:IsLoaded('gm_m93r') and mmResources:IsLoaded('m93rbullet')) then
		mmResources:SetLoaded('gm_m93r', false)

		local weaponBP = ebxEditUtils:GetWritableInstance('Weapons/M93R/M93R_GM')
		local weaponData = SoldierWeaponData(weaponBP.object)

--		self:OverrideGMMagSize(weaponData, 5)

		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 380
		fireData.shot.numberOfBulletsPerBurst = 16
		fireData.fireLogic.rateOfFire = 900
		fireData.fireLogic.rateOfFireForBurst = 900
		fireData.ammo.magazineCapacity = 16
		fireData.ammo.numberOfMagazines = -1
		
		local bulletData = BulletEntityData(mmResources:GetInstance('m93rbullet'))
		bulletData:MakeWritable()
		bulletData.gravity = -9.8
		bulletData.startDamage = 15
		bulletData.endDamage = 15
		bulletData.damageFalloffStartDistance = 0
		bulletData.damageFalloffEndDistance = 1
		dprint('Changed M93r (GM)...')
	end 

end
return MMWeapons_M93r()
