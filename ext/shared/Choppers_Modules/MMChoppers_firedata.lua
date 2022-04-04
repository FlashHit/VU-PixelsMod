class "MMChoppers_firedata"

function MMChoppers_firedata:Write(mmResources)
		dprint('Loading MMChoppers_firedat module ... ... ... ... ... ')


	if (mmResources:IsLoaded('rocketpods')) then
		dprint('Loading Rocketpods data ... ... ... ... ... ')
		mmResources:SetLoaded('rocketpods', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('rocketpods'))
		fireData:MakeWritable()
--		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = 50
		fireData.ammo.numberOfMagazines = -1
	
		dprint('Changed Atack Chopper - Super charched Rocketpods ammo... ... ... ... ... ')
	end

	if (mmResources:IsLoaded('gunnercannon')) then
		dprint('Loading Chopper Gunner data ... ... ... ... ... ')
		mmResources:SetLoaded('gunnercannon', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('gunnercannon'))
		bulletData:MakeWritable()

		bulletData.initialSpeed = 400
--		bulletData.gravity = 0
		bulletData.startDamage = 25
		bulletData.endDamage = 25
		bulletData.damageFalloffStartDistance = 100
		bulletData.damageFalloffEndDistance = 300
		bulletData.timeToLive = 15
		bulletData.impactImpulse = 25

		bulletData.numberOfBulletsPerShell = 1
		bulletData.numberOfBulletsPerShot = 1
		bulletData.numberOfBulletsPerBurst = 3
		bulletData.ammo.magazineCapacity = 50
		bulletData.ammo.numberOfMagazines = -1
		dprint('Changed Atack Chopper - Gunner bullet entity ammo... ... ... ... ... ')
	end


end
return MMChoppers_firedata()
