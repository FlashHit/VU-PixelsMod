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

local bEnable_modules_rockets_igla = true
            if (bEnable_modules_rockets_igla) == (true) then print('igla/stinger Rockets modules config Enabled... ... ...')


-- igla/stinger Gadgets stuff --
-- ONLY ONE CAN BE ACTIVE !
 bEnable_extended_igla = hidden -- This increased the igla/stinger ammount you can carry and place to 40
 bEnable_pimped_igla = hidden  -- Has 40 packages, but the explosion is pimped by 2 times
 bEnable_mapmode_igla = hidden -- depended on mapmode the igla/stinger you can carry varies from 8 to 40
 bEnable_mapmode_extreme_igla = true -- depended on mapmode the igla/stinger you can carry varies from 8 to 40 - Pimped Explosion damage !

	else
	    if (bEnable_modules_rockets_igla) == (false) then print('igla/stinger Rockets Modules config Disabled... ... ...')

 bEnable_extended_igla = hidden
 bEnable_pimped_igla = hidden
 bEnable_mapmode_igla = hidden
 bEnable_mapmode_extreme_igla = hidden

 end
end


-- Rockets modules --
-- ---------------------------------------------------------------------
	    if (bEnable_extended_igla) == (true) then print('igla/stinger exented ammo Enabled...')
__init_extended_igla = require('__shared/Rockets_Modules_igla/__init_extended_igla')
	else
	    if (bEnable_extended_igla) == (false) then print('igla/stinger exented ammo Disabled...')
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_pimped_igla) == (true) then print('igla/stinger pimped ammo Enabled...')
__init_pimped_igla = require('__shared/Rockets_Modules_igla/__init_pimped_igla')
	else
	    if (bEnable_pimped_igla) == (false) then print('igla/stinger pimped ammo Disabled...')
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_mapmode_igla) == (true) then print('igla/stinger ammo mapmode depending Enabled...')
__init_mapmode_igla = require('__shared/Rockets_Modules_igla/__init_mapmode_igla')
   if (bEnable_announcement) == (true) then server_message = require('__shared/Rockets_Modules_igla/server_message')
	else
	    if (bEnable_mapmode_igla) == (false) then print('igla/stinger ammo mapmode depepending Disabled...')
end
end
end
--

-- ---------------------------------------------------------------------
	    if (bEnable_mapmode_extreme_igla) == (true) then print('igla/stinger extreme ammo mapmode depending Enabled...')
__init_mapmode_extreme_igla = require('__shared/Rockets_Modules_igla/__init_mapmode_extreme_igla')
   if (bEnable_announcement) == (true) then server_message = require('__shared/Rockets_Modules_igla/server_message')
	else
	    if (bEnable_mapmode_extreme_igla) == (false) then print('igla/stinger extreme ammo mapmode depepending Disabled...')
end
end
end
--
-- ---------------------------------------------------------------------

