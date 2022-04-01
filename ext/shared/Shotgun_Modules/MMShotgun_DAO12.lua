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
			fireData[i].ammo.magazineCapacity = 75
			fireData[i].ammo.numberOfMagazines = -1
		
	end

		fireData[1].shot.numberOfBulletsPerShell = 50 -- Buckshot
--		fireData[1].ammo.magazineCapacity = 16
--		fireData[1].ammo.numberOfMagazines = 4

		fireData[2].shot.numberOfBulletsPerShell = 50 -- flechets
		fireData[3].shot.numberOfBulletsPerShell = 75 -- frags
		fireData[4].shot.numberOfBulletsPerShell = 8 -- slugs

		local bulletDataPellets = BulletEntityData(fireData[1].shot.projectileData)
		bulletDataPellets:MakeWritable()
		bulletDataPellets.gravity = 0
		bulletDataPellets.startDamage = 200
		bulletDataPellets.endDamage = 200
		bulletDataPellets.damageFalloffStartDistance = 0
		bulletDataPellets.damageFalloffEndDistance = 50
		dprint('Changed DAO12 - Buckshot entity changed ...')

		local bulletDataFlechet = BulletEntityData(fireData[2].shot.projectileData)
		bulletDataFlechet:MakeWritable()
--		bulletDataPellets.ammo.magazineCapacity = 16
--		bulletDataPellets.ammo.numberOfMagazines = 4

		bulletDataFlechet.gravity = 0
		bulletDataFlechet.startDamage = 200
		bulletDataFlechet.endDamage = 200
		bulletDataFlechet.damageFalloffStartDistance = 0
		bulletDataFlechet.damageFalloffEndDistance = 50
		dprint('Changed DAO12 - Flechets entity changed ...')

		local bulletDataFrags = BulletEntityData(fireData[3].shot.projectileData)
		bulletDataFrags:MakeWritable()
--		bulletDataPellets.ammo.magazineCapacity = 16
--		bulletDataPellets.ammo.numberOfMagazines = 4

		bulletDataFrags.gravity = 0
		bulletDataFrags.startDamage = 200
		bulletDataFrags.endDamage = 200
		bulletDataFrags.damageFalloffStartDistance = 0
		bulletDataFrags.damageFalloffEndDistance = 50
		dprint('Changed DAO12 - FRAG entity changed ...')

		local bulletDataSlugs = BulletEntityData(fireData[4].shot.projectileData)
		bulletDataSlugs:MakeWritable()
--		bulletDataPellets.ammo.magazineCapacity = 16
--		bulletDataPellets.ammo.numberOfMagazines = 4

		bulletDataSlugs.gravity = 0
		bulletDataSlugs.startDamage = 400
		bulletDataSlugs.endDamage = 400
		bulletDataSlugs.damageFalloffStartDistance = 0
		bulletDataSlugs.damageFalloffEndDistance = 50
		dprint('Changed DAO12 - SLUGS entity changed ...')
	
	end

end
return MMShotgun_DAO12()