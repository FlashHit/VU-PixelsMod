class "MMWeapons_repairtool"

 function MMWeapons_repairtool:Write(instance)
	if (mmResources:IsLoaded('repairtool')) then
		mmResources:SetLoaded('repairtool', false)
		dprint('Changed Repairtool - Increased range...')
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
		local fireData = FiringFunctionData(mmResources:GetInstance('repairtool'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 20
		fireData.shot.numberOfBulletsPerShell = 3
		fireData.overHeat.heatPerBullet = 0
	end

	else
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('repairtool'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 1
		fireData.shot.numberOfBulletsPerShell = 2
		fireData.overHeat.heatPerBullet = 0
	end

	else
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('repairtool'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.shot.initialSpeed.z = 3
		fireData.shot.numberOfBulletsPerShell = 2
		fireData.overHeat.heatPerBullet = 0
	end

end
end
end
end)


end
return MMWeapons_repairtool()
 