-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils

local bEnable_modules_assault_weapons = true

            if (bEnable_modules_assault_weapons) == (true) then print('Assault Weapons modules config Enabled... ... ...')

 bEnable_l85a2 = true
 bEnable_ak74m = true
 bEnable_kh2002 = true
 bEnable_an94 = true
 bEnable_g3a3 = true
 bEnable_f2000 = true
 bEnable_m416 = true
 bEnable_m16a3 = true
 bEnable_famas = true
 bEnable_m16a4 = true
 bEnable_aek971 = true
 bEnable_auga3 = true
 bEnable_scarl = true
 bEnable_m320 = true

	else
	    if (bEnable_modules_assault_weapons) == (false) then print('Assault Weapons Modules config Disabled... ... ...')

 bEnable_l85a2 = false
 bEnable_ak74m = false
 bEnable_kh2002 = false
 bEnable_an94 = false
 bEnable_g3a3 = false
 bEnable_f2000 = false
 bEnable_m416 = false
 bEnable_m16a3 = false
 bEnable_famas = false
 bEnable_m16a4 = false
 bEnable_aek971 = false
 bEnable_auga3 = false
 bEnable_scarl = false
 bEnable_m320 = false

 end
end

-- ---------------------------------------------------------------------
-- Assault weapons modules --  

            if (bEnable_m320) == (true) then print('m320 Enabled...')
    __init_m320 = require('__shared/Assault_weapons_Modules/__init_m320')
	else
	    if (bEnable_m320) == (false) then print('M320 Disabled...')
end
end
--

            if (bEnable_l85a2) == (true) then print('l85a2 Enabled...')
    __init_l85a2 = require('__shared/Assault_weapons_Modules/__init_l85a2')
	else
	    if (bEnable_l85a2) == (false) then print('l85a2 Disabled...')
end
end
--

            if (bEnable_ak74m) == (true) then print('ak74m Enabled...')
    __init_ak74m = require('__shared/Assault_weapons_Modules/__init_ak74m')
	else
	    if (bEnable_ak74m) == (false) then print('ak74m Disabled...')
end
end
--

            if (bEnable_kh2002) == (true) then print('kh2002 Enabled...')
    __init_kh2002 = require('__shared/Assault_weapons_Modules/__init_kh2002')
	else
	    if (bEnable_kh2002) == (false) then print('kh2002 Disabled...')
end
end
--

            if (bEnable_an94) == (true) then print('an94 Enabled...')
    __init_an94 = require('__shared/Assault_weapons_Modules/__init_an94')
	else
	    if (bEnable_an94) == (false) then print('an94 Disabled...')
end
end
--

            if (bEnable_g3a3) == (true) then print('g3a3 Enabled...')
    __init_g3a3 = require('__shared/Assault_weapons_Modules/__init_g3a3')
	else
	    if (bEnable_g3a3) == (false) then print('g3a3 Disabled...')
end
end
--

            if (bEnable_f2000) == (true) then print('f2000 Enabled...')
    __init_f2000 = require('__shared/Assault_weapons_Modules/__init_f2000')
	else
	    if (bEnable_f2000) == (false) then print('f2000 Disabled...')
end
end
--

            if (bEnable_m416) == (true) then print('m416 Enabled...')
    __init_m416 = require('__shared/Assault_weapons_Modules/__init_m416')
	else
	    if (bEnable_m416) == (false) then print('m416 Disabled...')
end
end
--

            if (bEnable_m16a3) == (true) then print('m16a3 Enabled...')
    __init_m16a3 = require('__shared/Assault_weapons_Modules/__init_m16a3')
	else
	    if (bEnable_m16a3) == (false) then print('m16a3 Disabled...')
end
end
--

            if (bEnable_m16a4) == (true) then print('m16a4 Enabled...')
    __init_m16a4 = require('__shared/Assault_weapons_Modules/__init_m16a4')
	else
	    if (bEnable_m16a4) == (false) then print('m16a4 Disabled...')
end
end
--

            if (bEnable_famas) == (true) then print('famas Enabled...')
        __init_famas = require('__shared/Assault_weapons_Modules/__init_famas')
	else
	    if (bEnable_famas) == (false) then print('famas Disabled...')
end
end
--

            if (bEnable_auga3) == (true) then print('aug a3 Enabled...')
        __init_auga3 = require('__shared/Assault_weapons_Modules/__init_auga3')
	else
	    if (bEnable_auga3) == (false) then print('aug a3 Disabled...')
end
end
--

	    if (bEnable_scarl) == (true) then print('scarl Enabled...')
        __init_scarl = require('__shared/Assault_weapons_Modules/__init_scarl')
	else
	    if (bEnable_scarl) == (false) then print('scarl Disabled...')
end
end
--

            if (bEnable_aek971) == (true) then print('aek971 Enabled...')
    __init_aek971 = require('__shared/Assault_weapons_Modules/__init_aek971')
	else
	    if (bEnable_aek971) == (false) then print('aek971 Disabled...')
end
end
--
-- ---------------------------------------------------------------------

