-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local __init_modules_support_LMG = true

            if (__init_modules_support_LMG) == (true) then print('Support LMG modules config Enabled... ... ...')

 bEnable_recoilremoved = true
 bEnable_m27iar = true
 bEnable_lsat_lmg = true
 bEnable_l86_lmg = true
 bEnable_mg36_lmg = true
 bEnable_qbb95_lmg = true
 bEnable_rpk74m_lmg = true
 bEnable_type88_lmg = true
 bEnable_m60e04_lmg = true
 bEnable_m240_lmg = true
 bEnable_pkp_lmg = true
 bEnable_m249_lmg = true

	else
	    if (__init_modules_support_LMG) == (false) then print('Support LMG Modules config Disabled... ... ...')

 bEnable_recoilremoved = false
 bEnable_m27iar = false
 bEnable_lsat_lmg = false
 bEnable_l86_lmg = false
 bEnable_mg36_lmg = false
 bEnable_qbb95_lmg = false
 bEnable_rpk74m_lmg = false
 bEnable_type88_lmg = false
 bEnable_m240_lmg = false
 bEnable_pkp_lmg = false
 bEnable_m249_lmg = false
 bEnable_m60e04_lmg = false

 end
end

-- ---------------------------------------------------------------------
            if (bEnable_recoilremoved) == (true) then print('Support weapons Recoil removal Enabled...')
        __init_support_no_recoil = require('__shared/Support_Weapons_Modules/__init_support_no_recoil')
	else
	    if (bEnable_recoilremoved) == (false) then print('Support weapons Recoil removal Disabled...')
end
end
--
-- ---------------------------------------------------------------------
            if (bEnable_m27iar) == (true) then print('m27iar Enabled...')
        __init_m27iar = require('__shared/Support_Weapons_Modules/__init_m27iar')
	else
	    if (bEnable_m27iar) == (false) then print('m27iar Disabled...')
end
end
--
-- ---------------------------------------------------------------------
-- Support LMG modules --  

            if (bEnable_lsat_lmg) == (true) then print('lsat Enabled...')
        __init_lsat_lmg = require('__shared/Support_Weapons_Modules/__init_lsat_lmg')
	else
	    if (bEnable_lsat_lmg) == (false) then print('lsat Disabled...')
end
end
--

            if (bEnable_l86_lmg) == (true) then print('l86 Enabled...')
        __init_l86_lmg = require('__shared/Support_Weapons_Modules/__init_l86_lmg')
	else
	    if (bEnable_l86_lmg) == (false) then print('l86 Disabled...')
end
end
--

            if (bEnable_mg36_lmg) == (true) then print('mg36 Enabled...')
        __init_mg36_lmg = require('__shared/Support_Weapons_Modules/__init_mg36_lmg')
	else
	    if (bEnable_mg36_lmg) == (false) then print('mg36 Disabled...')
end
end
--

            if (bEnable_qbb95_lmg) == (true) then print('qbb95 Enabled...')
        __init_qbb95_lmg = require('__shared/Support_Weapons_Modules/__init_qbb95_lmg')
	else
	    if (bEnable_qbb95_lmg) == (false) then print('qbb95 Disabled...')
end
end
--

            if (bEnable_rpk74m_lmg) == (true) then print('rpk74m Enabled...')
        __init_rpk74m_lmg = require('__shared/Support_Weapons_Modules/__init_rpk74m_lmg')
	else
	    if (bEnable_rpk74m_lmg) == (false) then print('rpk74m Disabled...')
end
end
--

            if (bEnable_type88_lmg) == (true) then print('type88 Enabled...')
        __init_type88_lmg = require('__shared/Support_Weapons_Modules/__init_type88_lmg')
	else
	    if (bEnable_type88_lmg) == (false) then print('type88 Disabled...')
end
end
--

            if (bEnable_m240_lmg) == (true) then print('m240 Enabled...')
        __init_m240_lmg = require('__shared/Support_Weapons_Modules/__init_m240_lmg')
	else
	    if (bEnable_m240_lmg) == (false) then print('m240 Disabled...')
end
end
--

            if (bEnable_pkp_lmg) == (true) then print('pkp Enabled...')
        __init_pkp_lmg = require('__shared/Support_Weapons_Modules/__init_pkp_lmg')
	else
	    if (bEnable_pkp_lmg) == (false) then print('pkp Disabled...')
end
end
--

            if (bEnable_m249_lmg) == (true) then print('m249 Enabled...')
        __init_m249_lmg = require('__shared/Support_Weapons_Modules/__init_m249_lmg')
	else
	    if (bEnable_m249_lmg) == (false) then print('m249 Disabled...')
end
end
--

	    if (bEnable_m60e04_lmg) == (true) then print('m60e04 Enabled...')
        __init_m60e04_lmg = require('__shared/Support_Weapons_Modules/__init_m60e04_lmg')
	else
	    if (bEnable_m60e04_lmg) == (false) then print('m60e04 Disabled...')
end
end
--
-- ---------------------------------------------------------------------

