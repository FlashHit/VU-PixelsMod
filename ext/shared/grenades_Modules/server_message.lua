Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" then
	print('Changed -CQ Large- 32x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" then
	print('Changed -Assault64- 32x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "TankSuperiority0" then
	print('Changed -Tank Superiority- 32x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" then
	print('Changed -Assault- 32x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall1" then
	print('Changed -Assault2- 32x M67 - Increased AMMO size...')

-- ------------------------------
	elseif SharedUtils:GetCurrentGameMode() == "ConquestSmall0" then
	print('Changed -CQ Small- 16x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "RushLarge0" then
	print('Changed -RUSH- 16x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "SquadRush0" then
	print('Changed -SQUADRUSH- 16x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "CaptureTheFlag0" then
	print('Changed -Capture The Flag- 16x M67 - Increased AMMO size...')

-- ------------------------------
	elseif SharedUtils:GetCurrentGameMode() == "Domination0" then
	print('Changed -Conquest Domination- 8x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "TeamDeathMatch0" then
	print('Changed -TDM- 8x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "TeamDeathMatchC0" then
	print('Changed -TDM Close Quarters- 8x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "SquadDeathMatch0" then
	print('Changed -Squad DeathMatch- 8x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "Scavenger0" then
	print('Changed -Scavenger- 8x M67 - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "AirSuperiority0" then
	print('Changed -Air Superiority- No M67 in a jet ...')

	elseif SharedUtils:GetCurrentGameMode() == "GunMaster0" then
	print('Changed -Gun Master- No M67 in Gun Master mode ...')


end

end)
