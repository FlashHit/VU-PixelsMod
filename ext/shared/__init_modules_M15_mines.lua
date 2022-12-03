-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_m15 = true
            if (bEnable_modules_m15) == (true) then print('M15 Tank mine module config Enabled... ... ...')

-- M15 Gadgets stuff --
-- ONLY ONE CAN BE ACTIVE !
 bEnable_extended_M15 = hidden -- This increased the M15 ammount you can carry and place to 40
 bEnable_pimped_M15 = hidden  -- Has 32 packages, but the explosion is pimped by 3 times
 bEnable_mapmode_M15 = hidden -- depended on mapmode the M15 you can carry varies from 8 to 40
 bEnable_mapmode_extreme_M15 = true -- depended on mapmode the M15 you can carry varies from 8 to 40 - Pimped Explosion damage !

	else
	    if (bEnable_modules_m15) == (false) then print('M15 tank mine Module config Disabled... ... ...')

 bEnable_extended_M15 = false
 bEnable_pimped_M15 = false
 bEnable_mapmode_M15 = false
 bEnable_mapmode_extreme_M15 = false

 end
end

-- ------------------------
-- M15 modules --
-- ----------------------------------------------------------------------------------

	    if (bEnable_extended_M15) == (true) then print('M15 extended ammo Enabled ...')
__init_extended_M15 = require('__shared/M15_mines_Modules/__init_extended_M15')
	
	else
	    if (bEnable_extended_M15) == (false) then print('M15 extended ammo Disabled ...')
end
end
--

-- ----------------------------------------------------------------------------------

	    if (bEnable_pimped_M15) == (true) then print('Pimped ammo M15 Enabled ...')
__init_pimped_M15 = require('__shared/M15_mines_Modules/__init_pimped_M15')
	
	else
	    if (bEnable_pimped_M15) == (false) then print('Pimped ammo M15 Disabled ...')
end
end
--

-- ----------------------------------------------------------------------------------

	    if (bEnable_mapmode_M15) == (true) then print('M15 mapmode depending Enabled ...')

__init_mapmode_M15 = require('__shared/M15_mines_Modules/__init_mapmode_M15')
   server_message = require('__shared/M15_mines_Modules/server_message')
	
	else
	    if (bEnable_mapmode_M15) == (false) then print('M15 mapmode depending Disabled ...')
end
end
--
-- ----------------------------------------------------------------------------------

	    if (bEnable_mapmode_extreme_M15) == (true) then print('M15 extreme mapmode depending Enabled ...')

__init_mapmode_extreme_M15 = require('__shared/M15_mines_Modules/__init_mapmode_extreme_M15')
   server_message = require('__shared/M15_mines_Modules/server_message')
	
	else
	    if (bEnable_mapmode_extreme_M15) == (false) then print('M15 extreme mapmode depending Disabled ...')
end
end
--
-- ----------------------------------------------------------------------------------
