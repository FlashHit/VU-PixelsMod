class "MMWeapons_C4"

var_blastDamage = 1500 -- Normal = 500
var_blastRadius = 15.0 -- Normal = 5.0
var_blastImpulse = 6000.0 -- Normal = 6000
var_shockwaveDamage = 5.0 -- Normal = 1.0
var_shockwaveRadius = 12.0 -- Normal = 6.0
var_shockwaveImpulse = 4000.0 -- Normal = 2000

function MMWeapons_C4:Write(instance)
	if (mmResources:IsLoaded('c4')) then
		mmResources:SetLoaded('c4', false)
		dprint('Changed Turbo C4 - Increased AMMO size...')
	end

	if (mmResources:IsLoaded('c4expentity')) then
		mmResources:SetLoaded('c4expentity', false)
		dprint('Changed Turbo C4 - can place more !...')
	end


	if (mmResources:IsLoaded('c4exp')) then
		mmResources:SetLoaded('c4exp', false)

		local expData = VeniceExplosionEntityData(mmResources:GetInstance('c4exp'))
		expData:MakeWritable()

		expData.blastDamage = var_blastDamage
		expData.blastRadius = var_blastRadius
		expData.blastImpulse = var_blastImpulse
		expData.shockwaveDamage = var_shockwaveDamage
		expData.shockwaveRadius = var_shockwaveRadius
		expData.shockwaveImpulse = var_shockwaveImpulse
		expData.shockwaveTime = 0
		expData.triggerImpairedHearing = false
		expData.isCausingSuppression = false
		dprint('Changed Turbo C4 Explosion...')
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

		local fireData = FiringFunctionData(mmResources:GetInstance('c4'))
		if (fireData ~= nil) then

		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 16
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1
		fireData.fireLogic.rateOfFire = 250.0
	end

		
		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('c4expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.health = 1
		expEntityData.maxCount = 16
	end

	else 
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('c4'))
		if (fireData ~= nil) then

		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 3
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1
		fireData.fireLogic.rateOfFire = 250.0
	end

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('c4expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.health = 5
		expEntityData.maxCount = 3
	end

	else 
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('c4'))
		if (fireData ~= nil) then

		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 6
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1
		fireData.fireLogic.rateOfFire = 250.0
	end

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('c4expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.health = 5
		expEntityData.maxCount = 6
	end

end
end
end
end)

end
return MMWeapons_C4()

