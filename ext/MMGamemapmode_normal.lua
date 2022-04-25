class "MMGamemapmode_normal"
-- Reading the gamemap modes

Events:Subscribe('Level:Loaded', function()
function MMGamemapmode_normal:onLevelLoaded(levelName, gameMode)

	local balanceGameModes_normal = {
		'ConquestLarge0',
		'ConquestSmall0',
		'Domination0',
		'RushLarge0',
		'GunMaster0',
		'Scavenger0',
		'CaptureTheFlag0'
	}
end
end)
		dprint('Loaded Gamemapmode normal stuff...')

return MMGamemapmode_normal()


