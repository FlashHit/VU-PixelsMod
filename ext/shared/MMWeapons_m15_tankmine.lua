class "MMWeapons_m15_tankmine"

 function MMWeapons_m15_tankmine:Write(instance)
	if (mmResources:IsLoaded('m15')) then
		mmResources:SetLoaded('m15', false)
	end 

	if (mmResources:IsLoaded('m15expentity')) then
		mmResources:SetLoaded('m15expentity', false)
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
 