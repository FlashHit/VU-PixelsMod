class "MMWeapons_rockets_igla"

 function MMWeapons_rockets_igla:Write(instance)
	if (mmResources:IsLoaded('igla_ammo')) then
		mmResources:SetLoaded('igla_ammo', false)
		dprint('Changed Sa18IGLA - Increased AMMO size...')
	end 

	if (mmResources:IsLoaded('igla_lock')) then
		mmResources:SetLoaded('igla_lock', false)

		local lockingWeaponData = LockingWeaponData(mmResources:GetInstance('igla_lock'))
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
		dprint('Changed Sa18IGLA turbo locking...')
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
		local fireData = FiringFunctionData(mmResources:GetInstance('igla_ammo'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 20 -- x2 !
	end

	else
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('igla_ammo'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 30 -- x2 !
	end

	else
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('igla_ammo'))
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
return MMWeapons_rockets_igla()
 