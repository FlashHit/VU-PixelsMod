Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" then
	print('Changed -CQ Large- 40x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" then
	print('Changed -Assault64- 40x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "TankSuperiority0" then
	print('Changed -Tank Superiority- 40x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestSmall0" then
	print('Changed -CQ Small- 20x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "Domination0" then
	print('Changed -Conquest Domination- 6x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "TeamDeathMatch0" then
	print('Changed -TDM- 6x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "TeamDeathMatchC0" then
	print('Changed -TDM Close Quarters- 6x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "SquadDeathMatch0" then
	print('Changed -Squad DeathMatch- 6x IGLA/STINGER - Increased AMMO size...')
	
	elseif SharedUtils:GetCurrentGameMode() == "RushLarge0" then
	print('Changed -RUSH- 10x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "SquadRush0" then
	print('Changed -SQUADRUSH- 10x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "CaptureTheFlag0" then
	print('Changed -Capture The Flag- 10x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" then
	print('Changed -Assault- 20x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall1" then
	print('Changed -Assault2- 20x IGLA/STINGER - Increased AMMO size...')

	elseif SharedUtils:GetCurrentGameMode() == "AirSuperiority0" then
	print('Changed -Air Superiority- No IGLA/STINGER in a jet ...')

	elseif SharedUtils:GetCurrentGameMode() == "GunMaster0" then
	print('Changed -Gun Master- No IGLA/STINGER in Gun Master mode ...')

	elseif SharedUtils:GetCurrentGameMode() == "Scavenger0" then
	print('Changed -Scavenger- No IGLA/STINGER in Scavenger mode ...')

end

end)
