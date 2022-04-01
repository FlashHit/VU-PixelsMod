-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_modules_engineer_weapons = true

            if (bEnable_modules_engineer_weapons) == (true) then dprint('Engineer Weapons modules config Enabled... ... ...')

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
	    if (bEnable_modules_engineer_weapons) == (false) then dprint('Engineer Weapons Modules config Disabled... ... ...')

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

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Engineer weapons modules --  

            if (bEnable_aks74u) == (true) then dprint('aks74u Enabled...')
        MMWeapons_aks74u = require('__shared/Engineer_Weapons_Modules/MMWeapons_aks74u')
mmResources:AddLoadHandler(MMWeapons_aks74u, MMWeapons_aks74u.Write)
	else
	    if (bEnable_aks74u) == (false) then dprint('aks74u Disabled...')
end
end
--

            if (bEnable_g36c) == (true) then dprint('g36c Enabled...')
        MMWeapons_g36c = require('__shared/Engineer_Weapons_Modules/MMWeapons_g36c')
mmResources:AddLoadHandler(MMWeapons_g36c, MMWeapons_g36c.Write)
	else
	    if (bEnable_g36c) == (false) then dprint('g36c Disabled...')
end
end
--

            if (bEnable_a91) == (true) then dprint('a91 Enabled...')
        MMWeapons_a91 = require('__shared/Engineer_Weapons_Modules/MMWeapons_a91')
mmResources:AddLoadHandler(MMWeapons_a91, MMWeapons_a91.Write)
	else
	    if (bEnable_a91) == (false) then dprint('a91 Disabled...')
end
end
--

            if (bEnable_scarh) == (true) then dprint('scarh Enabled...')
        MMWeapons_scarh = require('__shared/Engineer_Weapons_Modules/MMWeapons_scarh')
mmResources:AddLoadHandler(MMWeapons_scarh, MMWeapons_scarh.Write)
	else
	    if (bEnable_scarh) == (false) then dprint('scarh Disabled...')
end
end
--

            if (bEnable_qbz95) == (true) then dprint('qbz95 Enabled...')
        MMWeapons_qbz95 = require('__shared/Engineer_Weapons_Modules/MMWeapons_qbz95')
mmResources:AddLoadHandler(MMWeapons_qbz95, MMWeapons_qbz95.Write)
	else
	    if (bEnable_qbz95) == (false) then dprint('qbz95 Disabled...')
end
end
--

            if (bEnable_sg553) == (true) then dprint('sg553 Enabled...')
        MMWeapons_sg553 = require('__shared/Engineer_Weapons_Modules/MMWeapons_sg553')
mmResources:AddLoadHandler(MMWeapons_sg553, MMWeapons_sg553.Write)
	else
	    if (bEnable_sg553) == (false) then dprint('sg553 Disabled...')
end
end
--

            if (bEnable_g53) == (true) then dprint('g53 Enabled...')
        MMWeapons_g53 = require('__shared/Engineer_Weapons_Modules/MMWeapons_g53')
mmResources:AddLoadHandler(MMWeapons_g53, MMWeapons_g53.Write)
	else
	    if (bEnable_g53) == (false) then dprint('g53 Disabled...')
end
end
--

            if (bEnable_m4a1) == (true) then dprint('m4a1 Enabled...')
        MMWeapons_m4a1 = require('__shared/Engineer_Weapons_Modules/MMWeapons_m4a1')
mmResources:AddLoadHandler(MMWeapons_m4a1, MMWeapons_m4a1.Write)
	else
	    if (bEnable_m4a1) == (false) then dprint('m4a1 Disabled...')
end
end
--

            if (bEnable_m4) == (true) then dprint('m4 Enabled...')
        MMWeapons_m4 = require('__shared/Engineer_Weapons_Modules/MMWeapons_m4')
mmResources:AddLoadHandler(MMWeapons_m4, MMWeapons_m4.Write)
	else
	    if (bEnable_m4) == (false) then dprint('m4 Disabled...')
end
end
--

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

