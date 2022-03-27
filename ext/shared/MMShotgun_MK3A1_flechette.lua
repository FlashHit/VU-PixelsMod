class "MMShotgun_MK3A1_flechette"

function MMShotgun_MK3A1_flechette:Write(mmResources)

	if (mmResources:IsLoaded('jackhammer_flechette')) then
		mmResources:SetLoaded('jackhammer_flechette', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jackhammer_flechette'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('jackhammer_flechette', 'FireFunction2'))
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
		dprint('Changed MK3A1 Jackhammer - FLECHETTE entity changed ...')
	end

end
return MMShotgun_MK3A1_flechette()
