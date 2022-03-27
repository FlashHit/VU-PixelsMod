class "MMShotgun_MK3A1_slug"

function MMShotgun_MK3A1_slug:Write(mmResources)

	if (mmResources:IsLoaded('jackhammer_slug')) then
		mmResources:SetLoaded('jackhammer_slug', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('jackhammer_slug'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = FiringFunctionData(mmResources:GetInstance('jackhammer_slug', 'FireFunction3'))
		if (fireData ~= nil) then

			fireData:MakeWritable()
			fireData.fireLogic.rateOfFire = 350
			fireData.ammo.magazineCapacity = 20
			fireData.ammo.numberOfMagazines = 20
	end

		fireData.shot.numberOfBulletsPerShell = 5
		local bulletDataFrags = BulletEntityData(fireData.shot.projectileData)
		bulletDataFrags:MakeWritable()
		bulletDataFrags.gravity = 0
		bulletDataFrags.startDamage = 100
		bulletDataFrags.endDamage = 100
		bulletDataFrags.damageFalloffStartDistance = 0
		bulletDataFrags.damageFalloffEndDistance = 500
		dprint('Changed MK3A1 Jackhammer - SLUG entity changed ...')
	end

end
return MMShotgun_MK3A1_slug()
