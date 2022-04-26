class "MMGadgets_defib"

function MMGadgets_defib:Write(mmResources)


	if (mmResources:IsLoaded('defibs') and mmResources:IsLoaded('defib_projectile') and mmResources:IsLoaded('40mm_smokeburst_effect')) then
		mmResources:SetLoaded('defibs', false)
		mmResources:SetLoaded('defib_projectile', false)
		mmResources:SetLoaded('40mm_smokeburst_effect', false)
		dprint('Changed Defibs - Go trololol in the smoke...')
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
		local bulletData = BulletEntityData(mmResources:GetInstance('defib_projectile'))
		if (bulletData ~= nil) then
		bulletData:MakeWritable()
		bulletData.timeToLive = 25 -- This the range !
--		bulletData.explosion = VeniceExplosionEntityData(mmResources:GetInstance('40mm_smokeburst_effect'))

		local fireData = FiringFunctionData(mmResources:GetInstance('defibs'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = 250
	end
	else
	if (table.has(balanceGameModes_tdm, gm)) then
		local bulletData = BulletEntityData(mmResources:GetInstance('defib_projectile'))
		if (bulletData ~= nil) then
		bulletData:MakeWritable()
		bulletData.timeToLive = 5 -- This the range !
--		bulletData.explosion = VeniceExplosionEntityData(mmResources:GetInstance('40mm_smokeburst_effect'))

		local fireData = FiringFunctionData(mmResources:GetInstance('defibs'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = 250
	end
	else
	if (table.has(balanceGameModes_rush_ctf, gm)) then
		local bulletData = BulletEntityData(mmResources:GetInstance('defib_projectile'))
		if (bulletData ~= nil) then
		bulletData:MakeWritable()
		bulletData.timeToLive = 15 -- This the range !
--		bulletData.explosion = VeniceExplosionEntityData(mmResources:GetInstance('40mm_smokeburst_effect'))

		local fireData = FiringFunctionData(mmResources:GetInstance('defibs'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = 250
	end

end
end
end
end)

end
return MMGadgets_defib()
