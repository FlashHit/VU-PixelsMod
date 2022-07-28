-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_common_weapons = true

            if (bEnable_modules_common_weapons) == (true) then print('Common Weapons modules config Enabled... ... ...')

 bEnable_crossbow = true
 bEnable_P90 = true
 bEnable_ASval = true
 bEnable_PDW_R = true
 bEnable_MP5K = true
 bEnable_pp2000 = true
 bEnable_ump45 = true
 bEnable_mp7 = true
 bEnable_pp19 = true

	else
	    if (bEnable_modules_common_weapons) == (false) then print('Common Weapons Modules config Disabled... ... ...')

 bEnable_crossbow = false
 bEnable_P90 = false
 bEnable_ASval = false
 bEnable_PDW_R = false
 bEnable_MP5K = false
 bEnable_pp2000 = false
 bEnable_ump45 = false
 bEnable_mp7 = false
 bEnable_pp19 = false

 end
end


-- ---------------------------------------------------------------------

	    if (bEnable_crossbow) == (true) then print('crossbow Enabled...')
    __init_Crossbow = require('__shared/Common_Weapons_Modules/__init_Crossbow')
	else
	    if (bEnable_crossbow) == (false) then print('crossbow Disabled...')
end
end
--

            if (bEnable_P90) == (true) then print('P90 Enabled...')
        __init_P90 = require('__shared/Common_Weapons_Modules/__init_P90')
	else
	    if (bEnable_P90) == (false) then print('P90 Disabled...')
end
end
--
            if (bEnable_pp2000) == (true) then print('pp2000 Enabled...')
        __init_pp2000 = require('__shared/Common_Weapons_Modules/__init_pp2000')
	else
	    if (bEnable_pp2000) == (false) then print('pp2000 Disabled...')
end
end
--

            if (bEnable_ump45) == (true) then print('ump45 Enabled...')
        __init_ump45 = require('__shared/Common_Weapons_Modules/__init_ump45')
	else
	    if (bEnable_ump45) == (false) then print('ump45 Disabled...')
end
end
--

            if (bEnable_mp7) == (true) then print('mp7 Enabled...')
        __init_mp7 = require('__shared/Common_Weapons_Modules/__init_mp7')
	else
	    if (bEnable_mp7) == (false) then print('mp7 Disabled...')
end
end
--

            if (bEnable_pp19) == (true) then print('pp19 Enabled...')
        __init_pp19 = require('__shared/Common_Weapons_Modules/__init_pp19')
	else
	    if (bEnable_pp19) == (false) then print('pp19 Disabled...')
end
end
--


	    if (bEnable_MP5K) == (true) then print('MP5K Enabled...')
        __init_MP5K = require('__shared/Common_Weapons_Modules/__init_MP5K')
	else
	    if (bEnable_MP5K) == (false) then print('MP5K Disabled...')
end
end
--

            if (bEnable_PDW_R) == (true) then print('PDW-R Enabled...')
        __init_PDW_R = require('__shared/Common_Weapons_Modules/__init_PDW_R')
	else
	    if (bEnable_PDW_R) == (false) then print('PDW-r Disabled...')
end
end
--

            if (bEnable_ASval) == (true) then print('ASval Enabled...')
    __init_AS_val = require('__shared/Common_Weapons_Modules/__init_AS_val')
	else
	    if (bEnable_ASval) == (false) then print('ASval Disabled...')
end
end
--
