-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_shotguns = true

            if (bEnable_modules_shotguns) == (true) then print('Shotgun modules config Enabled... ... ...')


-- Shotgun stuff combined --
 bEnable_firedata = true
 bEnable_spas12 = true
 bEnable_MK3A1 = true
 bEnable_Remington870MCS = true
 bEnable_Saiga20K = true
 bEnable_USAS12 = true
 bEnable_DAO12 = true
 bEnable_M1014 = true

	else
	    if (bEnable_modules_shotguns) == (false) then print('Shotgun Modules config Disabled... ... ...')

-- Shotgun stuff combined --
 bEnable_firedata = false
 bEnable_spas12 = false
 bEnable_MK3A1 = false
 bEnable_Remington870MCS = false
 bEnable_Saiga20K = false
 bEnable_USAS12 = false
 bEnable_DAO12 = false
 bEnable_M1014 = false

 end
end

-- ---------------------------------------------------------------------
-- Shotgun tweaked firedata --

            if (bEnable_firedata) == (true) then print('Shotgun tweaked firedata Enabled...')
        __init_Shotgun_firedata = require('__shared/Shotgun_Modules/__init_Shotgun_firedata')
	else
	    if (bEnable_firedata) == (false) then print('Shotgun tweaked firedata Disabled...')
end
end
--


-- Weapons Shotguns combined modules --
            if (bEnable_DAO12) == (true) then print('DAO12 Enabled...')
        __init_Shotgun_DAO12 = require('__shared/Shotgun_Modules/__init_Shotgun_DAO12')
	else
	    if (bEnable_DAO12) == (false) then print('DAO12 Disabled...')
end
end
--

            if (bEnable_M1014) == (true) then print('M1014 Enabled...')
        __init_Shotgun_M1014 = require('__shared/Shotgun_Modules/__init_Shotgun_M1014')
	else
	    if (bEnable_M1014) == (false) then print('M1014 Disabled...')
end
end
--

            if (bEnable_USAS12) == (true) then print('USAS12 Enabled...')
        __init_Shotgun_USAS12 = require('__shared/Shotgun_Modules/__init_Shotgun_USAS12')
	else
	    if (bEnable_USAS12) == (false) then print('USAS12 Disabled...')
end
end
--

            if (bEnable_Saiga20K) == (true) then print('Saiga20K Enabled...')
        __init_Shotgun_Saiga20K = require('__shared/Shotgun_Modules/__init_Shotgun_Saiga20K')
	else
	    if (bEnable_Saiga20K) == (false) then print('Saiga20K Disabled...')
end
end
--

            if (bEnable_Remington870MCS) == (true) then print('Remington 870MCS Enabled...')
        __init_Shotgun_Remington870MCS = require('__shared/Shotgun_Modules/__init_Shotgun_Remington870MCS')
	else
	    if (bEnable_Remington870MCS) == (false) then print('Remington 870MCS Disabled...')
end
end
--

	    if (bEnable_spas12) == (true) then print('spas12 Enabled...')
        __init_Shotgun_spas12 = require('__shared/Shotgun_Modules/__init_Shotgun_spas12')
	else
	    if (bEnable_spas12) == (false) then print('spas12 Disabled...')
end
end
--

	    if (bEnable_MK3A1) == (true) then print('MK3A1 Jackhammer Enabled...')
        __init_Shotgun_MK3A1 = require('__shared/Shotgun_Modules/__init_Shotgun_MK3A1')
	else
	    if (bEnable_MK3A1) == (false) then print('MK3A1 Jackhammer Disabled...')
end
end
