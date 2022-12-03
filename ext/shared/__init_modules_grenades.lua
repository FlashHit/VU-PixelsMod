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

local bEnable_modules_grenades = true
            if (bEnable_modules_grenades) == (true) then print('M67 Grenades modules config Enabled... ... ...')


-- M67 Gadgets stuff --
-- ONLY ONE CAN BE ACTIVE !
 bEnable_extended_M67 = hidden -- This increased the M67 ammount you can carry to 32
 bEnable_pimped_M67 = hidden  -- Has 32 packages, but the explosion is pimped by 3 times
 bEnable_mapmode_M67 = hidden -- depended on mapmode the M67 you can carry varies from 8 to 32
 bEnable_mapmode_extreme_M67 = true -- depended on mapmode the M67 you can carry varies from 8 to 32 - Pimped Explosion damage !


	else
	    if (bEnable_modules_grenades) == (false) then print('M67 Grenades Modules config Disabled... ... ...')

 bEnable_extended_M67 = hidden
 bEnable_pimped_M67 = hidden
 bEnable_mapmode_M67 = hidden
 bEnable_mapmode_extreme_M67 = hidden

 end
end


-- M67 modules --
-- ----------------------------------------------------------------------------------

	    if (bEnable_extended_M67) == (true) then print('M67 extended ammo Enabled ...')
__init_extended_grenade = require('__shared/grenades_Modules/__init_extended_grenade')
	
	else
	    if (bEnable_extended_M67) == (false) then print('M67 extended ammo Disabled ...')
end
end
--

-- ----------------------------------------------------------------------------------

	    if (bEnable_pimped_M67) == (true) then print('Pimped ammo M67 Enabled ...')
__init_pimped_grenade = require('__shared/grenades_Modules/__init_pimped_grenade')
	
	else
	    if (bEnable_pimped_M67) == (false) then print('Pimped ammo M67 Disabled ...')
end
end
--

-- ----------------------------------------------------------------------------------

	    if (bEnable_mapmode_M67) == (true) then print('M67 mapmode depending Enabled ...')

__init_mapmode_grenade = require('__shared/grenades_Modules/__init_mapmode_grenade')
   if (bEnable_announcement) == (true) then server_message = require('__shared/grenades_Modules/server_message')
	
	else
	    if (bEnable_mapmode_M67) == (false) then print('M67 mapmode depending Disabled ...')
end
end
end
--
-- ----------------------------------------------------------------------------------

	    if (bEnable_mapmode_extreme_M67) == (true) then print('M67 extreme mapmode depending Enabled ...')

__init_mapmode_extreme_grenade = require('__shared/grenades_Modules/__init_mapmode_extreme_grenade')
   if (bEnable_announcement) == (true) then server_message = require('__shared/grenades_Modules/server_message')
	
	else
	    if (bEnable_mapmode_extreme_M67) == (false) then print('M67 extreme mapmode depending Disabled ...')
end
end
end
--
-- ----------------------------------------------------------------------------------
