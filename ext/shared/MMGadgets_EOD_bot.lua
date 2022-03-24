class "MMWeapons_EOD_bot"

function MMWeapons_EOD_bot:Write(instance)
	if (mmResources:IsLoaded('rpgprojectile') and mmResources:IsLoaded('eod')) then
		mmResources:SetLoaded('eod', false)
		dprint('Changed EOD Bot - fires RPG also...')
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
		local fireData = FiringFunctionData(mmResources:GetInstance('eod'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = 500 -- This is the amount in pulse a rocket is shot and repairs
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(mmResources:GetInstance('rpgprojectile'))
		fireData.shot.initialSpeed.z = 100 -- Firespeed ! but lowers repair speed dramaticly
	end

	else
	if (table.has(balanceGameModes_tdm, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('eod'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = 50 -- This is the amount in pulse a rocket is shot and repairs
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(mmResources:GetInstance('rpgprojectile'))
		fireData.shot.initialSpeed.z = 25 -- Firespeed ! but lowers repair speed dramaticly
	end

	else
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local fireData = FiringFunctionData(mmResources:GetInstance('eod'))
		if (fireData ~= nil) then
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = 150 -- This is the amount in pulse a rocket is shot and repairs
		fireData.shot.projectileData:MakeWritable()
		fireData.shot.projectileData = ProjectileEntityData(mmResources:GetInstance('rpgprojectile'))
		fireData.shot.initialSpeed.z = 50 -- Firespeed ! but lowers repair speed dramaticly
	end

end
end
end
end)


end
return MMWeapons_EOD_bot()
