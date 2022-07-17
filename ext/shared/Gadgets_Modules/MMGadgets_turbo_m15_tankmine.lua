class "MMWeapons_m15_tankmine"



 function MMWeapons_m15_tankmine:Write(instance)
	if (mmResources:IsLoaded('m15')) then
		mmResources:SetLoaded('m15', false)
	end 

var_blastDamage = 1500 -- Normal = 500
var_blastRadius = 15 -- Normal = 5
var_blastImpulse = 9000 -- Normal = 6000
var_shockwaveDamage = 10 -- Normal = 1
var_shockwaveRadius = 15 -- Normal = 6
var_shockwaveImpulse = 2000-- Normal = 2000


	if (mmResources:IsLoaded('m15expentity')) then
		mmResources:SetLoaded('m15expentity', false)
		dprint('Changed Turbo M15 tank mine - Increased AMMO size...')
	end 


	if (mmResources:IsLoaded('m15exp')) then
		mmResources:SetLoaded('m15exp', false)

		local expData = VeniceExplosionEntityData(mmResources:GetInstance('m15exp'))
		expData:MakeWritable()
		
		expData.blastDamage = var_blastDamage
		expData.blastRadius = var_blastRadius
		expData.blastImpulse = var_blastImpulse
		expData.shockwaveDamage = var_shockwaveDamage
		expData.shockwaveRadius = var_shockwaveRadius
		expData.shockwaveImpulse = var_shockwaveImpulse
		expData.shockwaveTime = 0
		expData.triggerImpairedHearing = true
		expData.isCausingSuppression = true
		dprint('Changed Turbo M15 tank mine - Things goes BOOOOOOOOM !!!...')
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
		local fireData = FiringFunctionData(mmResources:GetInstance('m15'))
		if (fireData ~= nil) then

		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 8 -- atention, this is a multiplier x2
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1
		fireData.fireLogic.rateOfFire = 250.0
	end

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('m15expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.maxAttachableInclination = 180
		expEntityData.health = 1
		expEntityData.maxCount = 16  -- Total mines you can place
	end


	else
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('m15'))
		if (fireData ~= nil) then

		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 3 -- atention, this is a multiplier x2
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1
		fireData.fireLogic.rateOfFire = 250.0
	end

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('m15expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.maxAttachableInclination = 180
		expEntityData.health = 1
		expEntityData.maxCount = 6  -- Total mines you can place
	end

	else
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('m15'))
		if (fireData ~= nil) then

		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 6 -- atention, this is a multiplier x2
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1
		fireData.fireLogic.rateOfFire = 250.0
	end

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('m15expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.maxAttachableInclination = 180
		expEntityData.health = 1
		expEntityData.maxCount = 12  -- Total mines you can place
	end

end
end
end
end)


end
return MMWeapons_m15_tankmine()
 