-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
-- require('__shared/MMUtils')

local bEnable_generic_modules = true

            if (bEnable_generic_modules) == (true) then print('Generic game modules config Enabled... ... ...')

bEnable_players = true

	else
	    if (bEnable_generic_modules) == (false) then print('Generic game Modules config Disabled... ... ...')

bEnable_players = false

 end
end


-- ---------------------------------------------------------------------

            if (bEnable_players) == (true) then print('Player stuff Enabled... ... ...')
__init_Players = require('__shared/Player_modules/__init_Players')
-- mmResources:AddLoadHandler(mmPlayers, mmPlayers.Write)
	else
	    if (bEnable_players) == (false) then print('Player stuff Disabled... ... ...')
end
end
--

