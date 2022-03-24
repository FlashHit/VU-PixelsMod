class "MMWeapons_grenade"

 function MMWeapons_grenade:Write(instance)
	if (mmResources:IsLoaded('grenade')) then
		mmResources:SetLoaded('grenade', false)
		dprint('Changed M67 Grenade - Increased AMMO size...')
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
