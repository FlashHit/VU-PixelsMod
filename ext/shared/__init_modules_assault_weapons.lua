-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_modules_assault_weapons = true

            if (bEnable_modules_assault_weapons) == (true) then dprint('Assault Weapons modules config Enabled... ... ...')

 bEnable_famas = true
 bEnable_aek971 = true
 bEnable_aug = true
 bEnable_scarl = true

	else
	    if (bEnable_modules_assault_weapons) == (false) then dprint('Assault Weapons Modules config Disabled... ... ...')

 bEnable_famas = false
 bEnable_aek971 = false
 bEnable_aug = false
 bEnable_scarl = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Assault weapons modules --  

            if (bEnable_famas) == (true) then dprint('famas Enabled...')
        MMWeapons_famas = require('__shared/Assault_weapons_Modules/MMWeapons_famas')
mmResources:AddLoadHandler(MMWeapons_famas, MMWeapons_famas.Write)
	else
	    if (bEnable_famas) == (false) then dprint('famas Disabled...')
end
end
--

            if (bEnable_aug) == (true) then dprint('aug a3 Enabled...')
        MMWeapons_aug = require('__shared/Assault_weapons_Modules/MMWeapons_aug')
mmResources:AddLoadHandler(MMWeapons_aug, MMWeapons_aug.Write)
	else
	    if (bEnable_aug) == (false) then dprint('aug a3 Disabled...')
end
end
--

	    if (bEnable_scarl) == (true) then dprint('scarl Enabled...')
        MMWeapons_scarl = require('__shared/Assault_weapons_Modules/MMWeapons_scarl')
mmResources:AddLoadHandler(MMWeapons_scarl, MMWeapons_scarl.Write)
	else
	    if (bEnable_scarl) == (false) then dprint('scarl Disabled...')
end
end
--

            if (bEnable_aek971) == (true) then dprint('aek971 Enabled...')
    MMWeapons_aek971 = require('__shared/Assault_weapons_Modules/MMWeapons_aek971')
mmResources:AddLoadHandler(MMWeapons_aek971, MMWeapons_aek971.Write)
	else
	    if (bEnable_aek971) == (false) then dprint('aek971 Disabled...')
end
end
--

mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

