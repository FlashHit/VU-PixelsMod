class "MMWeapons_grenade"

 function MMWeapons_grenade:Write(instance)
	if (mmResources:IsLoaded('grenade')) then
		mmResources:SetLoaded('grenade', false)
		dprint('Changed M67 SUPER Grenade - Increased AMMO size...')
	end

	if (mmResources:IsLoaded('grenadeent')) then
		mmResources:SetLoaded('grenadeent', false)

		local grenadeData = GrenadeEntityData(mmResources:GetInstance('grenadeent'))
		grenadeData:MakeWritable()

		grenadeData.transform.left.x = 8
		grenadeData.transform.up.y = 8
		grenadeData.transform.forward.z = 8

--		grenadeData.timeToLive = 2
--		grenadeData.gravity = -0.5
--		dprint('Changed M67 Grenade Entity...')
	end

	if (mmResources:IsLoaded('grenadeexp')) then
		mmResources:SetLoaded('grenadeexp', false)

		local expData = VeniceExplosionEntityData(mmResources:GetInstance('grenadeexp'))
		expData:MakeWritable()
		expData.blastDamage = 150
		expData.blastRadius = 12
		expData.blastImpulse = 60
		expData.shockwaveDamage = 40
		expData.shockwaveRadius = 10
		expData.shockwaveImpulse = 60 
		expData.triggerImpairedHearing = true
		expData.isCausingSuppression = true
		dprint('Changed M67 Grenade Explosion...')
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
		local fireData = FiringFunctionData(mmResources:GetInstance('grenade'))
		if (fireData ~= nil) then
		fireData:MakeWritable()

		fireData.weaponDispersion.standDispersion.minAngle = 5
		fireData.weaponDispersion.standDispersion.maxAngle = 7
		fireData.weaponDispersion.standDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.crouchDispersion.minAngle = 5
		fireData.weaponDispersion.crouchDispersion.maxAngle = 7
		fireData.weaponDispersion.crouchDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.proneDispersion.minAngle = 5
		fireData.weaponDispersion.proneDispersion.maxAngle = 7
		fireData.weaponDispersion.proneDispersion.increasePerShot = 0.8

		fireData.shot.initialSpeed.z = 25
		fireData.shot.numberOfBulletsPerShell = 10
		fireData.shot.numberOfBulletsPerShot = 10

		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 16
		fireData.ammo.ammoBagPickupDelayMultiplier = 2
--		dprint('Changed Grenade ('..gm..').Pimped.')
	end

	else 
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('grenade'))
		if (fireData ~= nil) then
		fireData:MakeWritable()

		fireData.weaponDispersion.standDispersion.minAngle = 5
		fireData.weaponDispersion.standDispersion.maxAngle = 7
		fireData.weaponDispersion.standDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.crouchDispersion.minAngle = 5
		fireData.weaponDispersion.crouchDispersion.maxAngle = 7
		fireData.weaponDispersion.crouchDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.proneDispersion.minAngle = 5
		fireData.weaponDispersion.proneDispersion.maxAngle = 7
		fireData.weaponDispersion.proneDispersion.increasePerShot = 0.8

		fireData.shot.initialSpeed.z = 25
		fireData.shot.numberOfBulletsPerShell = 10
		fireData.shot.numberOfBulletsPerShot = 10

		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 3
		fireData.ammo.ammoBagPickupDelayMultiplier = 2
--		dprint('Changed grenade ('..gm..').Normal.')
	end
	else 
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('grenade'))
		if (fireData ~= nil) then
		fireData:MakeWritable()

		fireData.weaponDispersion.standDispersion.minAngle = 5
		fireData.weaponDispersion.standDispersion.maxAngle = 7
		fireData.weaponDispersion.standDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.crouchDispersion.minAngle = 5
		fireData.weaponDispersion.crouchDispersion.maxAngle = 7
		fireData.weaponDispersion.crouchDispersion.increasePerShot = 0.8
		fireData.weaponDispersion.proneDispersion.minAngle = 5
		fireData.weaponDispersion.proneDispersion.maxAngle = 7
		fireData.weaponDispersion.proneDispersion.increasePerShot = 0.8

		fireData.shot.initialSpeed.z = 25
		fireData.shot.numberOfBulletsPerShell = 10
		fireData.shot.numberOfBulletsPerShot = 10

		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 6
		fireData.ammo.ammoBagPickupDelayMultiplier = 2
--		dprint('Changed grenade ('..gm..').Normal.')
	end
end
end
end
end)

end
return MMWeapons_grenade()
