-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_modules_support = true

            if (bEnable_modules_support) == (true) then dprint('Support Weapons modules config Enabled... ... ...')

 bEnable_m27iar = true

	else
	    if (bEnable_modules_support) == (false) then dprint('Support Weapons Modules config Disabled... ... ...')

 bEnable_m27iar = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Support weapons modules --  

            if (bEnable_m27iar) == (true) then dprint('m27iar Enabled...')
        MMWeapons_m27iar = require('__shared/Support_Weapons_Modules/MMWeapons_m27iar')
mmResources:AddLoadHandler(MMWeapons_m27iar, MMWeapons_m27iar.Write)
	else
	    if (bEnable_m27iar) == (false) then dprint('m27iar Disabled...')
end
end
--


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

