class "MMShotgun_M1014"

function MMShotgun_M1014:Write(mmResources)

	if (mmResources:IsLoaded('M1014')) then
		mmResources:SetLoaded('M1014', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('M1014'))
		local weaponData = SoldierWeaponData(weaponBP.object)

		local fireData = {
			FiringFunctionData(mmResources:GetInstance('M1014', 'FireFunction1')),
			FiringFunctionData(mmResources:GetInstance('M1014', 'FireFunction2')),
			FiringFunctionData(mmResources:GetInstance('M1014', 'FireFunction3')),
			FiringFunctionData(mmResources:GetInstance('M1014', 'FireFunction4'))
		}

		for i=1, #fireData do
			fireData[i]:MakeWritable()
			fireData[i].fireLogic.rateOfFire = 500
			fireData[i].ammo.magazineCapacity = 40
			fireData[i].ammo.numberOfMagazines = 10
		
	end

		fireData[1].shot.numberOfBulletsPerShell = 50 -- Buckshot
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
		dprint('Changed M1014 - Buckshot entity changed ...')

		local bulletDataFlechet = BulletEntityData(fireData[2].shot.projectileData)
		bulletDataFlechet:MakeWritable()
		bulletDataFlechet.gravity = 0
		bulletDataFlechet.startDamage = 200
		bulletDataFlechet.endDamage = 200
		bulletDataFlechet.damageFalloffStartDistance = 0
		bulletDataFlechet.damageFalloffEndDistance = 50
		dprint('Changed M1014 - Flechets entity changed ...')

		local bulletDataFrags = BulletEntityData(fireData[3].shot.projectileData)
		bulletDataFrags:MakeWritable()
		bulletDataFrags.gravity = 0
		bulletDataFrags.startDamage = 200
		bulletDataFrags.endDamage = 200
		bulletDataFrags.damageFalloffStartDistance = 0
		bulletDataFrags.damageFalloffEndDistance = 50
		dprint('Changed M1014 - FRAG entity changed ...')

		local bulletDataSlugs = BulletEntityData(fireData[4].shot.projectileData)
		bulletDataSlugs:MakeWritable()
		bulletDataSlugs.gravity = 0
		bulletDataSlugs.startDamage = 400
		bulletDataSlugs.endDamage = 400
		bulletDataSlugs.damageFalloffStartDistance = 0
		bulletDataSlugs.damageFalloffEndDistance = 50
		dprint('Changed M1014 - SLUGS entity changed ...')
	
	end

end
return MMShotgun_M1014()
