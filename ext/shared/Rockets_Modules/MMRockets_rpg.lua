class "MMRockets_rpg"

 function MMRockets_rpg:Write(instance)
	if (mmResources:IsLoaded('rpg7')) then
		mmResources:SetLoaded('rpg7', false)
		dprint('Changed RPG-7 - Increased AMMO size...')
	end 


	if (mmResources:IsLoaded('rpg7gravity')) then
		mmResources:SetLoaded('rpg7gravity', false)
		local fireData = MissileEntityData(mmResources:GetInstance('rpg7gravity'))
--		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.initialSpeed = 500.0
		fireData.timeToLive = 8
		fireData.gravity = 0
		dprint('Changed RPG-7 - Gravity ...')
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
		local fireData = FiringFunctionData(mmResources:GetInstance('rpg7'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 20 -- x2 !
	end

	else
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('rpg7'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.ammo.magazineCapacity = 1
		fireData.ammo.numberOfMagazines = 3 -- x2 !
	end

	else
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('rpg7'))
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
return MMRockets_rpg()
 