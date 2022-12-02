-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_rockets_rpg = true
            if (bEnable_modules_rockets_rpg) == (true) then print('rpg/smaw Rockets modules config Enabled... ... ...')

-- rpg/smaw Gadgets stuff --
-- ONLY ONE CAN BE ACTIVE !
 bEnable_extended_rpg = hidden -- This increased the rpg/smaw ammount you can carry and place to 40
 bEnable_pimped_rpg = hidden  -- Has 40 packages, but the explosion is pimped by 2 times
 bEnable_mapmode_rpg = hidden -- depended on mapmode the rpg/smaw you can carry varies from 8 to 40
 bEnable_mapmode_extreme_rpg = true -- depended on mapmode the rpg/smaw you can carry varies from 8 to 40 - Pimped Explosion damage !


	else
	    if (bEnable_modules_rockets_rpg) == (false) then print('rpg/smaw Rockets Modules config Disabled... ... ...')

 bEnable_extended_rpg = hidden
 bEnable_pimped_rpg = hidden
 bEnable_mapmode_rpg = hidden
 bEnable_mapmode_extreme_rpg = hidden


 end
end


-- Rockets modules --
-- ---------------------------------------------------------------------
	    if (bEnable_extended_rpg) == (true) then print('rpg/smaw exented ammo Enabled...')
__init_extended_rpg = require('__shared/Rockets_Modules_rpg/__init_extended_rpg')
	else
	    if (bEnable_extended_rpg) == (false) then print('rpg/smaw exented ammo Disabled...')
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_pimped_rpg) == (true) then print('rpg/smaw pimped ammo Enabled...')
__init_pimped_rpg = require('__shared/Rockets_Modules_rpg/__init_pimped_rpg')
	else
	    if (bEnable_pimped_rpg) == (false) then print('rpg/smaw pimped ammo Disabled...')
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_mapmode_rpg) == (true) then print('rpg/smaw ammo mapmode depending Enabled...')
__init_mapmode_rpg = require('__shared/Rockets_Modules_rpg/__init_mapmode_rpg')
   server_message = require('__shared/Rockets_Modules_rpg/server_message')
	else
	    if (bEnable_mapmode_rpg) == (false) then print('rpg/smaw ammo mapmode depepending Disabled...')
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_mapmode_extreme_rpg) == (true) then print('rpg/smaw extreme ammo mapmode depending Enabled...')
__init_mapmode_extreme_rpg = require('__shared/Rockets_Modules_rpg/__init_mapmode_extreme_rpg')
   server_message = require('__shared/Rockets_Modules_rpg/server_message')
	else
	    if (bEnable_mapmode_extreme_rpg) == (false) then print('rpg/smaw extreme ammo mapmode depepending Disabled...')
end
end
--
-- ---------------------------------------------------------------------

