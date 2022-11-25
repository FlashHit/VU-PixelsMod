-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_grenades = true
            if (bEnable_modules_grenades) == (true) then print('Grenades modules config Enabled... ... ...')


-- Only ONE can be active !
 bEnable_grenade = false
 bEnable_turbo_grenade = true


	else
	    if (bEnable_modules_grenades) == (false) then print('Grenades Modules config Disabled... ... ...')

 bEnable_turbo_grenade = false
 bEnable_grenade = false

 end
end


-- ----------------------
	    if (bEnable_grenade) == (true) then print('grenade Enabled...')
__init_grenade = require('__shared/grenades_Modules/__init_grenade')
	else
	    if (bEnable_grenade) == (false) then print('grenade Disabled...')
end
end

	    if (bEnable_turbo_grenade) == (true) then print('SUPER grenade Enabled...')
__init_turbo_grenade = require('__shared/grenades_Modules/__init_turbo_grenade')
	else
	    if (bEnable_turbo_grenade) == (false) then print('SUPER grenade Disabled...')
end
end
-- ----------------------
