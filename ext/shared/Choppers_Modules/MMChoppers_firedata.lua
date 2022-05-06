class "MMChoppers_firedata"

function MMChoppers_firedata:Write(mmResources)

-- US and RU Rocketpods --
	if (mmResources:IsLoaded('rocketpods')) then
		mmResources:SetLoaded('rocketpods', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('rocketpods'))
		fireData:MakeWritable()
--		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
--		fireData.reloadTime = 5.0
		fireData.ammo.magazineCapacity = 45
		fireData.ammo.numberOfMagazines = -1
		dprint('... ... Changed Atack Choppers - Increased rocketpods ... ... ... ... ... ')
	end

---- US and RU TV Missile --
--	if (mmResources:IsLoaded('tv_missile')) then
--		mmResources:SetLoaded('tv_missile', false)
--
--		local fireData = VehicleProjectileEntityData(mmResources:GetInstance('tv_missile'))
--		fireData:MakeWritable()
--		fireData.timeToLive = 15
--	
--		dprint('Changed Atack Chopper - Super charched tv_missile time... ... ... ... ... ')
--	end


--
	if (mmResources:IsLoaded('gunnercannon')) then
		mmResources:SetLoaded('gunnercannon', false)

----		local bulletData = BulletEntityData(mmResources:GetInstance('gunnercannon'))
		local bulletData = FiringFunctionData(mmResources:GetInstance('gunnercannon'))
		bulletData:MakeWritable()

----		bulletData.initialSpeed = 400
----		bulletData.gravity = 0
----		bulletData.startDamage = 25
----		bulletData.endDamage = 25
----		bulletData.damageFalloffStartDistance = 100
----		bulletData.damageFalloffEndDistance = 300
----		bulletData.timeToLive = 15
----		bulletData.impactImpulse = 25
----		bulletData.reloadTime = 2.0
--
----		bulletData.numberOfBulletsPerShell = 1
----		bulletData.numberOfBulletsPerShot = 1
----		bulletData.numberOfBulletsPerBurst = 3
		bulletData.ammo.magazineCapacity = 90
		bulletData.ammo.numberOfMagazines = -1
		dprint('Changed US Atack Chopper - Gunner bullet entity ammo... ... ... ... ... ')
	end

	if (mmResources:IsLoaded('gunnercannon1')) then
		mmResources:SetLoaded('gunnercannon1', false)

----		local bulletData = BulletEntityData(mmResources:GetInstance('gunnercannon'))
		local bulletData = FiringFunctionData(mmResources:GetInstance('gunnercannon1'))
		bulletData:MakeWritable()

----		bulletData.initialSpeed = 400
----		bulletData.gravity = 0
----		bulletData.startDamage = 25
----		bulletData.endDamage = 25
----		bulletData.damageFalloffStartDistance = 100
----		bulletData.damageFalloffEndDistance = 300
----		bulletData.timeToLive = 15
----		bulletData.impactImpulse = 25
----		bulletData.reloadTime = 2.0
--
----		bulletData.numberOfBulletsPerShell = 1
----		bulletData.numberOfBulletsPerShot = 1
----		bulletData.numberOfBulletsPerBurst = 3
		bulletData.ammo.magazineCapacity = 90
		bulletData.ammo.numberOfMagazines = -1
		dprint('Changed RU Atack Chopper - Gunner bullet entity ammo... ... ... ... ... ')
	end


end
return MMChoppers_firedata()
