class "MMRockets_stinger"

function MMRockets_stinger:Write(instance)

	if (mmResources:IsLoaded('us_stinger')) then
		mmResources:SetLoaded('us_stinger', false)

		local lockingWeaponData = LockingWeaponData(mmResources:GetInstance('us_stinger'))
		lockingWeaponData:MakeWritable()
		lockingWeaponData.isGuided = true
		lockingWeaponData.isGuidedWhenZoomed = true
		lockingWeaponData.fireOnlyWhenLockedOn = true

		local lockingData = LockingControllerData(lockingWeaponData.lockingController)
		lockingData:MakeWritable()
		lockingData.zoomLevelLock[2].lockType = LockType.LockAlways
		lockingData.lockTime = 0.3
		lockingData.releaseTime = 0.2
		lockingData.releaseOnNewTargetTime = 1
		lockingData.acceptanceAngle = 10
		print('Changed FIM92A Stinger turbo Locking and ammo size...')
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
		local fireData = FiringFunctionData(mmResources:GetInstance('us_stinger_ammo'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 20 -- x2 !
	end

	else
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('us_stinger_ammo'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 30 -- x2 !
	end

	else
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('us_stinger_ammo'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 5 -- x2 !
	end

end
end
end
end)

end
return MMRockets_stinger()
