-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_modules_engineer_weapons = true

            if (bEnable_modules_engineer_weapons) == (true) then dprint('Engineer Weapons modules config Enabled... ... ...')

 bEnable_acwr = true
 bEnable_mtar = true

	else
	    if (bEnable_modules_engineer_weapons) == (false) then dprint('Engineer Weapons Modules config Disabled... ... ...')

 bEnable_acwr = false
 bEnable_mtar = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Engineer weapons modules --  

            if (bEnable_acwr) == (true) then dprint('acwr Enabled...')
        MMWeapons_acwr = require('__shared/Engineer_Weapons_Modules/MMWeapons_acwr')
mmResources:AddLoadHandler(MMWeapons_acwr, MMWeapons_acwr.Write)
	else
	    if (bEnable_acwr) == (false) then dprint('acwr Disabled...')
end
end
--

            if (bEnable_mtar) == (true) then dprint('mtar Enabled...')
        MMWeapons_mtar = require('__shared/Engineer_Weapons_Modules/MMWeapons_mtar')
mmResources:AddLoadHandler(MMWeapons_mtar, MMWeapons_mtar.Write)
	else
	    if (bEnable_mtar) == (false) then dprint('mtar Disabled...')
end
end
--

mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

