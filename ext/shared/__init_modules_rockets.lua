-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Gadgets funcs and utils

local bEnable_modules_rockets = true
            if (bEnable_modules_rockets) == (true) then print('Rockets modules config Enabled... ... ...')


 bEnable_rpg7 = true
 bEnable_smaw = true
 bEnable_stinger = true
 bEnable_javelin = true
 bEnable_igla = true

	else
	    if (bEnable_modules_rockets) == (false) then print('Rockets Modules config Disabled... ... ...')

 bEnable_rpg7 = false
 bEnable_smaw = false
 bEnable_stinger = false
 bEnable_javelin = false
 bEnable_igla = false

 end
end

-- ---------------------------------------------------------------------
-- Rockets modules --
	    if (bEnable_rpg7) == (true) then print('rpg7 Enabled...')
__init_rpg = require('__shared/Rockets_Modules/__init_rpg')
	else
	    if (bEnable_rpg7) == (false) then print('rpg7 Disabled...')
end
end
--

            if (bEnable_smaw) == (true) then print('smaw Enabled...')
__init_smaw = require('__shared/Rockets_Modules/__init_smaw')
	else
	    if (bEnable_smaw) == (false) then print('smaw Disabled...')
end
end
--

            if (bEnable_stinger) == (true) then print('stinger Enabled...')
__init_stinger = require('__shared/Rockets_Modules/__init_stinger')
	else
	    if (bEnable_stinger) == (false) then print('stinger Disabled...')
end
end
--

            if (bEnable_javelin) == (true) then print('javelin Enabled...')
__init_javelin = require('__shared/Rockets_Modules/__init_javelin')
	else
	    if (bEnable_javelin) == (false) then print('javelin Disabled...')
end
end
--
            if (bEnable_igla) == (true) then print('igla Enabled...')
__init_igla = require('__shared/Rockets_Modules/__init_igla')
	else
	    if (bEnable_igla) == (false) then print('igla Disabled...')
end
end
--

-- ---------------------------------------------------------------------

