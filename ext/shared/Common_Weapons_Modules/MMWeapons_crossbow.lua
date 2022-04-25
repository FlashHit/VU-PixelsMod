class "MMWeapons_crossbow"

function MMWeapons_crossbow:Write(instance)
-- ---------------------------------------------------------------------------------------


-- ---------------------------------------------------------------------------------------
-- Generic AMMO stock for the crossbow
	if (mmResources:IsLoaded('crossbow_ammo')) then
		mmResources:SetLoaded('crossbow_ammo', false)
		dprint('Changed crossbolt AMMO capacity...')
	end

if (mmResources:IsLoaded('crossbolt_damage_HE')) then
		mmResources:SetLoaded('crossbolt_damage_HE', false)
		local expData = VeniceExplosionEntityData(mmResources:GetInstance('crossbolt_damage_HE'))
		expData:MakeWritable()
		expData.blastDamage = 70
		expData.blastRadius = 5
		expData.blastImpulse = 500
		expData.shockwaveDamage = 10
		expData.shockwaveRadius = 10
		expData.shockwaveImpulse = 125
		expData.shockwaveTime = 0.1
		expData.triggerImpairedHearing = true
		expData.isCausingSuppression = true 
		dprint('Changed crossbolt HE Blast damage (Global)...')
end

	if (mmResources:IsLoaded('crossbolt_default')) then
		mmResources:SetLoaded('crossbolt_default', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('crossbolt_default'))
		bulletData:MakeWritable()

		bulletData.initialSpeed = 1400
		bulletData.gravity = 0
		bulletData.startDamage = 25
		bulletData.endDamage = 25
		bulletData.damageFalloffStartDistance = 30
		bulletData.damageFalloffEndDistance = 30
		bulletData.timeToLive = 15
		bulletData.impactImpulse = 25
		dprint('Changed Crossbow Default bolt gravity xD...')
	end

	if (mmResources:IsLoaded('crossbolt_scan')) then
		mmResources:SetLoaded('crossbolt_scan', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('crossbolt_scan'))
		bulletData:MakeWritable()

		bulletData.initialSpeed = 1400
		bulletData.gravity = 0
		bulletData.startDamage = 25
		bulletData.endDamage = 25
		bulletData.damageFalloffStartDistance = 30
		bulletData.damageFalloffEndDistance = 30
		bulletData.timeToLive = 15
		bulletData.impactImpulse = 25
		dprint('Changed Crossbow SCAN bolt gravity xD...')
	end
	
	
	if (mmResources:IsLoaded('crossbolt_he')) then
		mmResources:SetLoaded('crossbolt_he', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('crossbolt_he'))
		bulletData:MakeWritable()

--		bulletData.detonateOnTimeout = True
		bulletData.initialSpeed = 500
		bulletData.gravity = 0
		bulletData.startDamage = 200
		bulletData.endDamage = 200
		bulletData.damageFalloffStartDistance = 50
		bulletData.damageFalloffEndDistance = 50
		bulletData.timeToLive = 5
		bulletData.impactImpulse = 100
		dprint('Changed Crossbow HE bolt Entity data...')
	end

	if (mmResources:IsLoaded('crossbolt_BA')) then
		mmResources:SetLoaded('crossbolt_BA', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('crossbolt_BA'))
		bulletData:MakeWritable()

		bulletData.initialSpeed = 1400
		bulletData.gravity = 0
		bulletData.startDamage = 40
		bulletData.endDamage = 40
		bulletData.damageFalloffStartDistance = 30
		bulletData.damageFalloffEndDistance = 30
		bulletData.timeToLive = 15
		bulletData.impactImpulse = 25
		dprint('Changed Crossbow BA bolt gravity xD...')
	end


 Events:Subscribe('Level:Loaded',  function()

	local balanceGameModes_tdm = {
		'SquadDeathMatch0',
		'TeamDeathMatch0',
		'TeamDeathMatchC0',
		'Domination0',
		'GunMaster0',
		'Scavenger0',
		'AirSuperiority0'
	}

	local balanceGameModes_pimped = {
		'TankSuperiority0',
		'ConquestAssaultLarge0',
		'ConquestAssaultSmall0',
		'ConquestAssaultSmall1',
		'ConquestLarge0',
		'ConquestSmall0'
	}

	local balanceGameModes_rush_ctf = {
		'SquadRush0',
		'RushLarge0',
		'CaptureTheFlag0'
	}


	local gm = SharedUtils:GetCurrentGameMode()
	if (table.has(balanceGameModes_pimped, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('crossbow_ammo'))
		if (fireData ~= nil) then
		fireData:MakeWritable()

		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 40
	end


	else
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('crossbow_ammo'))
		if (fireData ~= nil) then
		fireData:MakeWritable()

		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 15
	end


	
	else
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('crossbow_ammo'))
		if (fireData ~= nil) then
		fireData:MakeWritable()

		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 25
	end

end
end
end
end)


end
return MMWeapons_crossbow()
