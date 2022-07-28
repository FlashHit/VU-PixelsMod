-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_recon_weapons = true

            if (bEnable_modules_recon_weapons) == (true) then print('Recon Weapons modules config Enabled... ... ...')

 bEnable_mk11 = true
 bEnable_sv98 = true
 bEnable_sks = true
 bEnable_m40a5 = true
 bEnable_m98 = true
 bEnable_m39ebr = true
 bEnable_svd = true
 bEnable_qbu88 = true
 bEnable_l96 = true
 bEnable_hk417 = true
 bEnable_jng90 = true

	else
	    if (bEnable_modules_recon_weapons) == (false) then print('Recon Weapons Modules config Disabled... ... ...')

 bEnable_mk11 = false
 bEnable_sv98 = false
 bEnable_sks = false
 bEnable_m40a5 = false
 bEnable_m98 = false
 bEnable_m39ebr = false
 bEnable_svd = false
 bEnable_qbu88 = false
 bEnable_l96 = false
 bEnable_hk417 = false
 bEnable_jng90 = false

end
end

-- ---------------------------------------------------------------------
-- Recon weapons modules --  Recon_Weapons_Modules


            if (bEnable_hk417) == (true) then print('hk417 Sniperrifle Enabled...')
    __init_hk417 = require('__shared/Recon_weapons_Modules/__init_hk417')
	else
	    if (bEnable_hk417) == (false) then print('hk417 Sniperrifle Disabled...')
end
end
--

            if (bEnable_l96) == (true) then print('l96 Sniperrifle Enabled...')
    __init_l96 = require('__shared/Recon_weapons_Modules/__init_l96')
	else
	    if (bEnable_l96) == (false) then print('l96 Sniperrifle Disabled...')
end
end
--

            if (bEnable_qbu88) == (true) then print('qbu88 Sniperrifle Enabled...')
    __init_qbu88 = require('__shared/Recon_weapons_Modules/__init_qbu88')
	else
	    if (bEnable_qbu88) == (false) then print('qbu88 Sniperrifle Disabled...')
end
end
--

            if (bEnable_svd) == (true) then print('svd Sniperrifle Enabled...')
    __init_svd = require('__shared/Recon_weapons_Modules/__init_svd')
	else
	    if (bEnable_svd) == (false) then print('svd Sniperrifle Disabled...')
end
end
--

            if (bEnable_m39ebr) == (true) then print('m39ebr Sniperrifle Enabled...')
    __init_m39ebr = require('__shared/Recon_weapons_Modules/__init_m39ebr')
	else
	    if (bEnable_m39ebr) == (false) then print('m39ebr Sniperrifle Disabled...')
end
end
--

            if (bEnable_m98) == (true) then print('m98 Sniperrifle Enabled...')
    __init_m98 = require('__shared/Recon_weapons_Modules/__init_m98')
	else
	    if (bEnable_m98) == (false) then print('m98 Sniperrifle Disabled...')
end
end
--

            if (bEnable_m40a5) == (true) then print('m40a5 Sniperrifle Enabled...')
    __init_m40a5 = require('__shared/Recon_weapons_Modules/__init_m40a5')
	else
	    if (bEnable_m40a5) == (false) then print('m40a5 Sniperrifle Disabled...')
end
end
--

            if (bEnable_sks) == (true) then print('sks Sniperrifle Enabled...')
    __init_sks = require('__shared/Recon_weapons_Modules/__init_sks')
	else
	    if (bEnable_sks) == (false) then print('sks Sniperrifle Disabled...')
end
end
--

            if (bEnable_sv98) == (true) then print('sv98 Sniperrifle Enabled...')
    __init_sv98 = require('__shared/Recon_weapons_Modules/__init_sv98')
	else
	    if (bEnable_sv98) == (false) then print('sv98 Sniperrifle Disabled...')
end
end
--

            if (bEnable_mk11) == (true) then print('MK11 Sniperrifle Enabled...')
    __init_mk11 = require('__shared/Recon_weapons_Modules/__init_mk11')
	else
	    if (bEnable_mk11) == (false) then print('MK11 Sniperrifle Disabled...')
end
end
--

	    if (bEnable_jng90) == (true) then print('JNG90 Sniperrifle Enabled...')
    __init_jng90 = require('__shared/Recon_weapons_Modules/__init_jng90')
	else
	    if (bEnable_jng90) == (false) then print('JNG90 Sniperrifle Disabled...')
end
end
--


-- ---------------------------------------------------------------------

