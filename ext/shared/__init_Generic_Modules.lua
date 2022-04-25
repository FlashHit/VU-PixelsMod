-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_generic_modules = true

            if (bEnable_generic_modules) == (true) then dprint('Generic game modules config Enabled... ... ...')

bEnable_players = true
bEnable_weapons = hidden  -- Also contains some Gun Master setting stuff -

	else
	    if (bEnable_generic_modules) == (false) then dprint('Generic game Modules config Disabled... ... ...')

bEnable_players = false
bEnable_weapons = false  -- Also contains some Gun Master setting stuff -

 end
end


-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------

            if (bEnable_players) == (true) then dprint('Player stuff Enabled... ... ...')
mmPlayers = require('__shared/generic_modules/MMPlayers')
mmResources:AddLoadHandler(mmPlayers, mmPlayers.Write)
	else
	    if (bEnable_players) == (false) then dprint('Player stuff Disabled... ... ...')
end
end
--
            if (bEnable_weapons) == (true) then dprint('Weapon stuff Enabled... ... ...')
mmWeapons = require('__shared/generic_modules/MMWeapons')
mmResources:AddLoadHandler(mmWeapons, mmWeapons.Write)
	else
	    if (bEnable_weapons) == (false) then dprint('Weapon stuff Disabled... ... ...')
end
end
--

mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

