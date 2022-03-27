class "MMShotgun_MK3A1_buckshot"

function MMShotgun_MK3A1_buckshot:Write(mmResources)

	if (mmResources:IsLoaded('jackhammer_buckshot')) then
		mmResources:SetLoaded('jackhammer_buckshot', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jackhammer_buckshot'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('jackhammer_buckshot', 'FireFunction1'))
		if (fireData ~= nil) then

			fireData:MakeWritable()
			fireData.fireLogic.rateOfFire = 500
			fireData.ammo.magazineCapacity = 20
			fireData.ammo.numberOfMagazines = 20
	end

		fireData.shot.numberOfBulletsPerShell = 50
		local bulletDataFrags = BulletEntityData(fireData.shot.projectileData)
		bulletDataFrags:MakeWritable()
		bulletDataFrags.gravity = 0
		bulletDataFrags.startDamage = 200
		bulletDataFrags.endDamage = 200
		bulletDataFrags.damageFalloffStartDistance = 0
		bulletDataFrags.damageFalloffEndDistance = 500
		dprint('Changed MK3A1 Jackhammer - BUCKSHOT entity changed ...')
	end

end
return MMShotgun_MK3A1_buckshot()
