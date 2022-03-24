class "MMWeapons_C4"

function MMWeapons_C4:Write(instance)
	if (mmResources:IsLoaded('c4')) then
		mmResources:SetLoaded('c4', false)
	end

	if (mmResources:IsLoaded('c4expentity')) then
		mmResources:SetLoaded('c4expentity', false)
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
--		dprint('Changed C4 Pimed...')
	end

		
		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('c4expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.health = 1
		expEntityData.maxCount = 16
--		dprint('Changed C4 Entity pimped...')
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
--		dprint('Changed C4 Normal...')
	end

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('c4expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.health = 5
		expEntityData.maxCount = 3
--		dprint('Changed C4 Entity normal...')
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
--		dprint('Changed C4 low...')
	end

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('c4expentity'))
		if (expEntityData ~= nil) then

		expEntityData:MakeWritable()
		expEntityData.health = 5
		expEntityData.maxCount = 6
--		dprint('Changed C4 Entity low...')
	end

end
end
end
end)

end
return MMWeapons_C4()

