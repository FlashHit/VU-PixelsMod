-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_modules_assault_weapons = true

            if (bEnable_modules_assault_weapons) == (true) then dprint('Assault Weapons modules config Enabled... ... ...')

 bEnable_l85a2 = true
 bEnable_ak74m = true
 bEnable_kh2002 = true
 bEnable_an94 = true
 bEnable_g3a3 = true
 bEnable_f2000 = true
 bEnable_m416 = true
 bEnable_m16a3 = true
 bEnable_famas = true
 bEnable_m16a4 = true
 bEnable_aek971 = true
 bEnable_auga3 = true
 bEnable_scarl = true

	else
	    if (bEnable_modules_assault_weapons) == (false) then dprint('Assault Weapons Modules config Disabled... ... ...')

 bEnable_l85a2 = false
 bEnable_ak74m = false
 bEnable_kh2002 = false
 bEnable_an94 = false
 bEnable_g3a3 = false
 bEnable_f2000 = false
 bEnable_m416 = false
 bEnable_m16a3 = false
 bEnable_famas = false
 bEnable_m16a4 = false
 bEnable_aek971 = false
 bEnable_auga3 = false
 bEnable_scarl = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Assault weapons modules --  

            if (bEnable_l85a2) == (true) then dprint('l85a2 Enabled...')
    MMWeapons_l85a2 = require('__shared/Assault_weapons_Modules/MMWeapons_l85a2')
mmResources:AddLoadHandler(MMWeapons_l85a2, MMWeapons_l85a2.Write)
	else
	    if (bEnable_l85a2) == (false) then dprint('l85a2 Disabled...')
end
end
--

            if (bEnable_ak74m) == (true) then dprint('ak74m Enabled...')
    MMWeapons_ak74m = require('__shared/Assault_weapons_Modules/MMWeapons_ak74m')
mmResources:AddLoadHandler(MMWeapons_ak74m, MMWeapons_ak74m.Write)
	else
	    if (bEnable_ak74m) == (false) then dprint('ak74m Disabled...')
end
end
--

            if (bEnable_kh2002) == (true) then dprint('kh2002 Enabled...')
    MMWeapons_kh2002 = require('__shared/Assault_weapons_Modules/MMWeapons_kh2002')
mmResources:AddLoadHandler(MMWeapons_kh2002, MMWeapons_kh2002.Write)
	else
	    if (bEnable_kh2002) == (false) then dprint('kh2002 Disabled...')
end
end
--

            if (bEnable_an94) == (true) then dprint('an94 Enabled...')
    MMWeapons_an94 = require('__shared/Assault_weapons_Modules/MMWeapons_an94')
mmResources:AddLoadHandler(MMWeapons_an94, MMWeapons_an94.Write)
	else
	    if (bEnable_an94) == (false) then dprint('an94 Disabled...')
end
end
--

            if (bEnable_g3a3) == (true) then dprint('g3a3 Enabled...')
    MMWeapons_g3a3 = require('__shared/Assault_weapons_Modules/MMWeapons_g3a3')
mmResources:AddLoadHandler(MMWeapons_g3a3, MMWeapons_g3a3.Write)
	else
	    if (bEnable_g3a3) == (false) then dprint('g3a3 Disabled...')
end
end
--

            if (bEnable_f2000) == (true) then dprint('f2000 Enabled...')
    MMWeapons_f2000 = require('__shared/Assault_weapons_Modules/MMWeapons_f2000')
mmResources:AddLoadHandler(MMWeapons_f2000, MMWeapons_f2000.Write)
	else
	    if (bEnable_f2000) == (false) then dprint('f2000 Disabled...')
end
end
--

            if (bEnable_m416) == (true) then dprint('m416 Enabled...')
    MMWeapons_m416 = require('__shared/Assault_weapons_Modules/MMWeapons_m416')
mmResources:AddLoadHandler(MMWeapons_m416, MMWeapons_m416.Write)
	else
	    if (bEnable_m416) == (false) then dprint('m416 Disabled...')
end
end
--

            if (bEnable_m16a3) == (true) then dprint('m16a3 Enabled...')
    MMWeapons_m16a3 = require('__shared/Assault_weapons_Modules/MMWeapons_m16a3')
mmResources:AddLoadHandler(MMWeapons_m16a3, MMWeapons_m16a3.Write)
	else
	    if (bEnable_m16a3) == (false) then dprint('m16a3 Disabled...')
end
end
--

            if (bEnable_m16a4) == (true) then dprint('m16a4 Enabled...')
    MMWeapons_m16a4 = require('__shared/Assault_weapons_Modules/MMWeapons_m16a4')
mmResources:AddLoadHandler(MMWeapons_m16a4, MMWeapons_m16a4.Write)
	else
	    if (bEnable_m16a4) == (false) then dprint('m16a4 Disabled...')
end
end
--

            if (bEnable_famas) == (true) then dprint('famas Enabled...')
        MMWeapons_famas = require('__shared/Assault_weapons_Modules/MMWeapons_famas')
mmResources:AddLoadHandler(MMWeapons_famas, MMWeapons_famas.Write)
	else
	    if (bEnable_famas) == (false) then dprint('famas Disabled...')
end
end
--

            if (bEnable_auga3) == (true) then dprint('aug a3 Enabled...')
        MMWeapons_auga3 = require('__shared/Assault_weapons_Modules/MMWeapons_auga3')
mmResources:AddLoadHandler(MMWeapons_auga3, MMWeapons_auga3.Write)
	else
	    if (bEnable_auga3) == (false) then dprint('aug a3 Disabled...')
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

