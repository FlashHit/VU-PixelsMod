-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Gadgets funcs and utils

local bEnable_modules_handguns = true

            if (bEnable_modules_handguns) == (true) then print('Handguns modules config Enabled... ... ...')

 bEnable_m1911 = true
 bEnable_mp412rex = true
 bEnable_magnum44 = true
 bEnable_mp443 = true
 bEnable_m9 = true
 bEnable_g17c = true
 bEnable_g18 = true
 bEnable_M93r = true

	else
	    if (bEnable_modules_handguns) == (false) then print('Handgun Modules config Disabled... ... ...')

 bEnable_m1911 = false
 bEnable_mp412rex = false
 bEnable_magnum44 = false
 bEnable_mp443 = false
 bEnable_m9 = false
 bEnable_g17c = false
 bEnable_g18 = false
 bEnable_M93r = false

 end
end

-- ---------------------------------------------------------------------
-- Handguns modules --

            if (bEnable_m1911) == (true) then print('m1911 Enabled...')
        __init_m1911 = require('__shared/Handguns_Modules/__init_m1911')
	else
	    if (bEnable_m1911) == (false) then print('m1911 Disabled...')
end
end
--

            if (bEnable_mp412rex) == (true) then print('mp412rex Enabled...')
        __init_mp412rex = require('__shared/Handguns_Modules/__init_mp412rex')
	else
	    if (bEnable_mp412rex) == (false) then print('mp412rex Disabled...')
end
end
--

            if (bEnable_magnum44) == (true) then print('magnum44 Enabled...')
        __init_magnum44 = require('__shared/Handguns_Modules/__init_magnum44')
	else
	    if (bEnable_magnum44) == (false) then print('magnum44 Disabled...')
end
end
--

            if (bEnable_mp443) == (true) then print('mp443 Enabled...')
        __init_mp443 = require('__shared/Handguns_Modules/__init_mp443')
	else
	    if (bEnable_mp443) == (false) then print('mp443 Disabled...')
end
end
--

            if (bEnable_m9) == (true) then print('m9 Enabled...')
        __init_m9 = require('__shared/Handguns_Modules/__init_m9')
	else
	    if (bEnable_m9) == (false) then print('m9 Disabled...')
end
end
--

            if (bEnable_g17c) == (true) then print('g17c Enabled...')
        __init_g17c = require('__shared/Handguns_Modules/__init_g17c')
	else
	    if (bEnable_g17c) == (false) then print('g17c Disabled...')
end
end
--

	    if (bEnable_g18) == (true) then print('g18 Enabled...')
        __init_g18 = require('__shared/Handguns_Modules/__init_g18')
	else
	    if (bEnable_g18) == (false) then print('g18 Disabled...')
end
end
--

            if (bEnable_M93r) == (true) then print('M93r Enabled...')
        __init_M93r = require('__shared/Handguns_Modules/__init_M93r')
	else
	    if (bEnable_M93r) == (false) then print('M93r Disabled...')
end
end
--

-- ---------------------------------------------------------------------

