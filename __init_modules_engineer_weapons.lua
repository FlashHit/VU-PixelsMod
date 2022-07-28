-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_engineer_weapons = true

            if (bEnable_modules_engineer_weapons) == (true) then print('Engineer Weapons modules config Enabled... ... ...')

 bEnable_aks74u = true
 bEnable_g36c = true
 bEnable_a91 = true
 bEnable_scarh = true
 bEnable_qbz95 = true
 bEnable_sg553 = true
 bEnable_g53 = true
 bEnable_m4a1 = true
 bEnable_m4 = true
 bEnable_acwr = true
 bEnable_mtar = true

	else
	    if (bEnable_modules_engineer_weapons) == (false) then print('Engineer Weapons Modules config Disabled... ... ...')

 bEnable_aks74u = false
 bEnable_g36c = false
 bEnable_a91 = false
 bEnable_scarh = false
 bEnable_qbz95 = false
 bEnable_sg553 = false
 bEnable_g53 = false
 bEnable_m4a1 = false
 bEnable_m4 = false
 bEnable_acwr = false
 bEnable_mtar = false

 end
end

-- ---------------------------------------------------------------------
-- Engineer weapons modules --  

            if (bEnable_aks74u) == (true) then print('aks74u Enabled...')
        __init_aks74u = require('__shared/Engineer_Weapons_Modules/__init_aks74u')
	else
	    if (bEnable_aks74u) == (false) then print('aks74u Disabled...')
end
end
--

            if (bEnable_g36c) == (true) then print('g36c Enabled...')
        __init_g36c = require('__shared/Engineer_Weapons_Modules/__init_g36c')
	else
	    if (bEnable_g36c) == (false) then print('g36c Disabled...')
end
end
--

            if (bEnable_a91) == (true) then print('a91 Enabled...')
        __init_a91 = require('__shared/Engineer_Weapons_Modules/__init_a91')
	else
	    if (bEnable_a91) == (false) then print('a91 Disabled...')
end
end
--

            if (bEnable_scarh) == (true) then print('scarh Enabled...')
        __init_scarh = require('__shared/Engineer_Weapons_Modules/__init_scarh')
	else
	    if (bEnable_scarh) == (false) then print('scarh Disabled...')
end
end
--

            if (bEnable_qbz95) == (true) then print('qbz95 Enabled...')
        __init_qbz95 = require('__shared/Engineer_Weapons_Modules/__init_qbz95')
	else
	    if (bEnable_qbz95) == (false) then print('qbz95 Disabled...')
end
end
--

            if (bEnable_sg553) == (true) then print('sg553 Enabled...')
        __init_sg553 = require('__shared/Engineer_Weapons_Modules/__init_sg553')
	else
	    if (bEnable_sg553) == (false) then print('sg553 Disabled...')
end
end
--

            if (bEnable_g53) == (true) then print('g53 Enabled...')
        __init_g53 = require('__shared/Engineer_Weapons_Modules/__init_g53')
	else
	    if (bEnable_g53) == (false) then print('g53 Disabled...')
end
end
--

            if (bEnable_m4a1) == (true) then print('m4a1 Enabled...')
        __init_m4a1 = require('__shared/Engineer_Weapons_Modules/__init_m4a1')
	else
	    if (bEnable_m4a1) == (false) then print('m4a1 Disabled...')
end
end
--

            if (bEnable_m4) == (true) then print('m4 Enabled...')
        __init_m4 = require('__shared/Engineer_Weapons_Modules/__init_m4')
	else
	    if (bEnable_m4) == (false) then print('m4 Disabled...')
end
end
--

            if (bEnable_acwr) == (true) then print('acwr Enabled...')
        __init_acwr = require('__shared/Engineer_Weapons_Modules/__init_acwr')
	else
	    if (bEnable_acwr) == (false) then print('acwr Disabled...')
end
end
--

            if (bEnable_mtar) == (true) then print('mtar Enabled...')
        __init_mtar = require('__shared/Engineer_Weapons_Modules/__init_mtar')
	else
	    if (bEnable_mtar) == (false) then print('mtar Disabled...')
end
end
--

-- ---------------------------------------------------------------------

