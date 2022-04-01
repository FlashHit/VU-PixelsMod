-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support LMG funcs and utils
require('__shared/MMUtils')

local __init_modules_support_LMG = true

            if (__init_modules_support_LMG) == (true) then dprint('Support LMG modules config Enabled... ... ...')

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
	    if (__init_modules_support_LMG) == (false) then dprint('Support LMG Modules config Disabled... ... ...')

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

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Support LMG modules --  

            if (bEnable_lsat_lmg) == (true) then dprint('lsat Enabled...')
        MMWeapons_lsat_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_lsat_lmg')
mmResources:AddLoadHandler(MMWeapons_lsat_lmg, MMWeapons_lsat_lmg.Write)
	else
	    if (bEnable_lsat_lmg) == (false) then dprint('lsat Disabled...')
end
end
--

            if (bEnable_l86_lmg) == (true) then dprint('l86 Enabled...')
        MMWeapons_l86_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_l86_lmg')
mmResources:AddLoadHandler(MMWeapons_l86_lmg, MMWeapons_l86_lmg.Write)
	else
	    if (bEnable_l86_lmg) == (false) then dprint('l86 Disabled...')
end
end
--

            if (bEnable_mg36_lmg) == (true) then dprint('mg36 Enabled...')
        MMWeapons_mg36_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_mg36_lmg')
mmResources:AddLoadHandler(MMWeapons_mg36_lmg, MMWeapons_mg36_lmg.Write)
	else
	    if (bEnable_mg36_lmg) == (false) then dprint('mg36 Disabled...')
end
end
--

            if (bEnable_qbb95_lmg) == (true) then dprint('qbb95 Enabled...')
        MMWeapons_qbb95_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_qbb95_lmg')
mmResources:AddLoadHandler(MMWeapons_qbb95_lmg, MMWeapons_qbb95_lmg.Write)
	else
	    if (bEnable_qbb95_lmg) == (false) then dprint('qbb95 Disabled...')
end
end
--

            if (bEnable_rpk74m_lmg) == (true) then dprint('rpk74m Enabled...')
        MMWeapons_rpk74m_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_rpk74m_lmg')
mmResources:AddLoadHandler(MMWeapons_rpk74m_lmg, MMWeapons_rpk74m_lmg.Write)
	else
	    if (bEnable_rpk74m_lmg) == (false) then dprint('rpk74m Disabled...')
end
end
--

            if (bEnable_type88_lmg) == (true) then dprint('type88 Enabled...')
        MMWeapons_type88_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_type88_lmg')
mmResources:AddLoadHandler(MMWeapons_type88_lmg, MMWeapons_type88_lmg.Write)
	else
	    if (bEnable_type88_lmg) == (false) then dprint('type88 Disabled...')
end
end
--

            if (bEnable_m240_lmg) == (true) then dprint('m240 Enabled...')
        MMWeapons_m240_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_m240_lmg')
mmResources:AddLoadHandler(MMWeapons_m240_lmg, MMWeapons_m240_lmg.Write)
	else
	    if (bEnable_m240_lmg) == (false) then dprint('m240 Disabled...')
end
end
--

            if (bEnable_pkp_lmg) == (true) then dprint('pkp Enabled...')
        MMWeapons_pkp_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_pkp_lmg')
mmResources:AddLoadHandler(MMWeapons_pkp_lmg, MMWeapons_pkp_lmg.Write)
	else
	    if (bEnable_pkp_lmg) == (false) then dprint('pkp Disabled...')
end
end
--

            if (bEnable_m249_lmg) == (true) then dprint('m249 Enabled...')
        MMWeapons_m249_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_m249_lmg')
mmResources:AddLoadHandler(MMWeapons_m249_lmg, MMWeapons_m249_lmg.Write)
	else
	    if (bEnable_m249_lmg) == (false) then dprint('m249 Disabled...')
end
end
--

	    if (bEnable_m60e04_lmg) == (true) then dprint('m60e04 Enabled...')
        MMWeapons_m60e04_lmg = require('__shared/Support_Weapons_Modules/MMWeapons_m60e04_lmg')
mmResources:AddLoadHandler(MMWeapons_m60e04_lmg, MMWeapons_m60e04_lmg.Write)
	else
	    if (bEnable_m60e04_lmg) == (false) then dprint('m60e04 Disabled...')
end
end
--


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

