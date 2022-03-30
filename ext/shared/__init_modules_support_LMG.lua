-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support LMG funcs and utils
require('__shared/MMUtils')

local __init_modules_support_LMG = true

            if (__init_modules_support_LMG) == (true) then dprint('Support LMG modules config Enabled... ... ...')

 bEnable_m60e04_lmg = true

	else
	    if (__init_modules_support_LMG) == (false) then dprint('Support LMG Modules config Disabled... ... ...')

 bEnable_m60e04_lmg = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Support LMG modules --  

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

