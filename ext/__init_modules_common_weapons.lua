-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_modules_common_weapons = false

            if (bEnable_modules_common_weapons) == (true) then dprint('Common Weapons modules config Enabled... ... ...')

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
	    if (bEnable_modules_common_weapons) == (false) then dprint('Common Weapons Modules config Disabled... ... ...')

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

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Common weapons modules --  

            if (bEnable_P90) == (true) then dprint('P90 Enabled...')
        MMWeapons_P90 = require('__shared/Common_Weapons_Modules/MMWeapons_P90')
mmResources:AddLoadHandler(MMWeapons_P90, MMWeapons_P90.Write)
	else
	    if (bEnable_P90) == (false) then dprint('P90 Disabled...')
end
end
--

	    if (bEnable_crossbow) == (true) then dprint('crossbow Enabled...')
    MMWeapons_crossbow = require('__shared/Common_Weapons_Modules/MMWeapons_crossbow')
mmResources:AddLoadHandler(MMWeapons_crossbow, MMWeapons_crossbow.Write)
	else
	    if (bEnable_crossbow) == (false) then dprint('crossbow Disabled...')
end
end
--

            if (bEnable_pp2000) == (true) then dprint('pp2000 Enabled...')
        MMWeapons_pp2000 = require('__shared/Common_Weapons_Modules/MMWeapons_pp2000')
mmResources:AddLoadHandler(MMWeapons_pp2000, MMWeapons_pp2000.Write)
	else
	    if (bEnable_pp2000) == (false) then dprint('pp2000 Disabled...')
end
end
--

            if (bEnable_ump45) == (true) then dprint('ump45 Enabled...')
        MMWeapons_ump45 = require('__shared/Common_Weapons_Modules/MMWeapons_ump45')
mmResources:AddLoadHandler(MMWeapons_ump45, MMWeapons_ump45.Write)
	else
	    if (bEnable_ump45) == (false) then dprint('ump45 Disabled...')
end
end
--

            if (bEnable_mp7) == (true) then dprint('mp7 Enabled...')
        MMWeapons_mp7 = require('__shared/Common_Weapons_Modules/MMWeapons_mp7')
mmResources:AddLoadHandler(MMWeapons_mp7, MMWeapons_mp7.Write)
	else
	    if (bEnable_mp7) == (false) then dprint('mp7 Disabled...')
end
end
--

            if (bEnable_pp19) == (true) then dprint('pp19 Enabled...')
        MMWeapons_pp19 = require('__shared/Common_Weapons_Modules/MMWeapons_pp19')
mmResources:AddLoadHandler(MMWeapons_pp19, MMWeapons_pp19.Write)
	else
	    if (bEnable_pp19) == (false) then dprint('pp19 Disabled...')
end
end
--


	    if (bEnable_MP5K) == (true) then dprint('MP5K Enabled...')
        MMWeapons_MP5K = require('__shared/Common_Weapons_Modules/MMWeapons_MP5K')
mmResources:AddLoadHandler(MMWeapons_MP5K, MMWeapons_MP5K.Write)
	else
	    if (bEnable_MP5K) == (false) then dprint('MP5K Disabled...')
end
end
--

            if (bEnable_PDW_R) == (true) then dprint('PDW-R Enabled...')
        MMWeapons_PDW_R = require('__shared/Common_Weapons_Modules/MMWeapons_PDW_R')
mmResources:AddLoadHandler(MMWeapons_PDW_R, MMWeapons_PDW_R.Write)
	else
	    if (bEnable_PDW_R) == (false) then dprint('PDW-r Disabled...')
end
end
--

            if (bEnable_ASval) == (true) then dprint('ASval Enabled...')
    MMWeapons_AS_val = require('__shared/Common_Weapons_Modules/MMWeapons_AS_val')
mmResources:AddLoadHandler(MMWeapons_AS_val, MMWeapons_AS_val.Write)
	else
	    if (bEnable_ASval) == (false) then dprint('ASval Disabled...')
end
end
--

mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

