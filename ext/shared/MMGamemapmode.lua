class "MMGamemapmode"
-- Reading the gamemap modes

Events:Subscribe('Level:Loaded', function()
function MMGamemapmode:onLevelLoaded(levelName, gameMode)

	local balanceGameModes = {
		'SquadDeathMatch0',
		'TeamDeathMatch0',
		'TeamDeathMatchC0',
	}
end
end)
		dprint('Loaded Gamemapmode Pimped stuff...')

return MMGamemapmode()
