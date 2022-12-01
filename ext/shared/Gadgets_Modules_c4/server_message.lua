Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" then
	print('Changed -CQ Large- 32x C4 - Increased AMMO size...')
	print('Changed -CQ Large- 32x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" then
	print('Changed -Assault64- 32x C4 - Increased AMMO size...')
	print('Changed -Assault64- 32x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "TankSuperiority0" then
	print('Changed -Tank Superiority- 32x C4 - Increased AMMO size...')
	print('Changed -Tank Superiority- 32x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestSmall0" then
	print('Changed -CQ Small- 16x C4 - Increased AMMO size...')
	print('Changed -CQ Small- 16x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "Domination0" then
	print('Changed -Conquest Domination- 16x C4 - Increased AMMO size...')
	print('Changed -Conquest Domination- 16x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "TeamDeathMatch0" then
	print('Changed -TDM- 8x C4 - Increased AMMO size...')
	print('Changed -TDM- 8x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "TeamDeathMatchC0" then
	print('Changed -TDM Close Quarters- 8x C4 - Increased AMMO size...')
	print('Changed -TDM Close Quarters- 8x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "SquadDeathMatch0" then
	print('Changed -Squad DeathMatch- 8x C4 - Increased AMMO size...')
	print('Changed -Squad DeathMatch- 8x C4 Packages you can place !...')
	
	elseif SharedUtils:GetCurrentGameMode() == "RushLarge0" then
	print('Changed -RUSH- 12x C4 - Increased AMMO size...')
	print('Changed -RUSH- 12x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "SquadRush0" then
	print('Changed -SQUADRUSH- 12x C4 - Increased AMMO size...')
	print('Changed -SQUADRUSH- 12x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "CaptureTheFlag0" then
	print('Changed -Capture The Flag- 12x C4 - Increased AMMO size...')
	print('Changed -Capture The Flag- 12x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" then
	print('Changed -Assault- 24x C4 - Increased AMMO size...')
	print('Changed -Assault- 24x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall1" then
	print('Changed -Assault2- 24x C4 - Increased AMMO size...')
	print('Changed -Assault2- 24x C4 Packages you can place !...')

	elseif SharedUtils:GetCurrentGameMode() == "AirSuperiority0" then
	print('Changed -Air Superiority- No C4 in a jet ...')

	elseif SharedUtils:GetCurrentGameMode() == "GunMaster0" then
	print('Changed -Gun Master- No C4 in Gun Master mode ...')

	elseif SharedUtils:GetCurrentGameMode() == "Scavenger0" then
	print('Changed -Scavenger- No C4 in Scavenger mode ...')

end

end)
