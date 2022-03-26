class "MMShotgun_spas12"

function MMShotgun_spas12:Write(mmResources)

	if (mmResources:IsLoaded('spas12')) then
		mmResources:SetLoaded('spas12', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('spas12'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = FiringFunctionData(weaponData.weaponFiring.primaryFire)
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 380
		fireData.shot.numberOfBulletsPerShell = 250
		fireData.fireLogic.rateOfFire = 100
		fireData.ammo.magazineCapacity = 16
		fireData.ammo.numberOfMagazines = 10 -- This a multiplier !
		
		local bulletData = BulletEntityData(fireData.shot.projectileData)
		bulletData:MakeWritable()
		bulletData.gravity = -5
		bulletData.startDamage = 100
		bulletData.endDamage = 500
		bulletData.damageFalloffStartDistance = 0
		bulletData.damageFalloffEndDistance = 50
		dprint('Changed Spas-12 - Pimped AMMO size...')
	end


end
return MMShotgun_spas12()