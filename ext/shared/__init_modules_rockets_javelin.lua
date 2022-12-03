-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Gadgets funcs and utils

local bEnable_modules_rockets_Javelin = true
            if (bEnable_modules_rockets_Javelin) == (true) then print('Rockets Javelin modules config Enabled... ... ...')


-- Javelin Gadgets stuff --
-- ONLY ONE CAN BE ACTIVE !
 bEnable_extended_Javelin = hidden -- This increased the Javelin ammount you can carry and place to 40
 bEnable_pimped_Javelin = hidden  -- Has 40 packages, but the explosion is pimped by 2 times
 bEnable_mapmode_Javelin = hidden -- depended on mapmode the Javelin you can carry varies from 8 to 40
 bEnable_mapmode_extreme_Javelin = true -- depended on mapmode the Javelin you can carry varies from 8 to 40 - Pimped Explosion damage !


	else
	    if (bEnable_modules_rockets_Javelin) == (false) then print('Rockets Javelin Modules config Disabled... ... ...')

 bEnable_extended_Javelin = hidden
 bEnable_pimped_Javelin = hidden
 bEnable_mapmode_Javelin = hidden
 bEnable_mapmode_extreme_Javelin = hidden


 end
end


-- Rockets Javelin modules --
-- ---------------------------------------------------------------------
	    if (bEnable_extended_Javelin) == (true) then print('Javelin exented ammo Enabled...')
__init_extended_Javelin = require('__shared/Rockets_Modules_Javelin/__init_extended_Javelin')
	else
	    if (bEnable_extended_Javelin) == (false) then print('Javelin exented ammo Disabled...')
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_pimped_Javelin) == (true) then print('Javelin pimped ammo Enabled...')
__init_pimped_Javelin = require('__shared/Rockets_Modules_Javelin/__init_pimped_Javelin')
	else
	    if (bEnable_pimped_Javelin) == (false) then print('Javelin pimped ammo Disabled...')
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_mapmode_Javelin) == (true) then print('Javelin ammo mapmode depending Enabled...')
__init_mapmode_Javelin = require('__shared/Rockets_Modules_Javelin/__init_mapmode_Javelin')
   if (bEnable_announcement) == (true) then server_message = require('__shared/Rockets_Modules_Javelin/server_message')
	else
	    if (bEnable_mapmode_Javelin) == (false) then print('Javelin ammo mapmode depepending Disabled...')
end
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_mapmode_extreme_Javelin) == (true) then print('Javelin extreme ammo mapmode depending Enabled...')
__init_mapmode_extreme_Javelin = require('__shared/Rockets_Modules_Javelin/__init_mapmode_extreme_Javelin')
   if (bEnable_announcement) == (true) then server_message = require('__shared/Rockets_Modules_Javelin/server_message')
	else
	    if (bEnable_mapmode_extreme_Javelin) == (false) then print('Javelin extreme ammo mapmode depepending Disabled...')
end
end
end
--
-- ---------------------------------------------------------------------

