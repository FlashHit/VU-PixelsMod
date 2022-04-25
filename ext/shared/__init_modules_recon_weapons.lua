-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_modules_recon_weapons = true

            if (bEnable_modules_recon_weapons) == (true) then dprint('Recon Weapons modules config Enabled... ... ...')

 bEnable_mk11 = true
 bEnable_sv98 = true
 bEnable_sks = true
 bEnable_m40a5 = true
 bEnable_m98 = true
 bEnable_m39ebr = true
 bEnable_svd = true
 bEnable_qbu88 = true
 bEnable_l96 = true
 bEnable_hk417 = true
 bEnable_jng90 = true

	else
	    if (bEnable_modules_recon_weapons) == (false) then dprint('Recon Weapons Modules config Disabled... ... ...')

 bEnable_mk11 = false
 bEnable_sv98 = false
 bEnable_sks = false
 bEnable_m40a5 = false
 bEnable_m98 = false
 bEnable_m39ebr = false
 bEnable_svd = false
 bEnable_qbu88 = false
 bEnable_l96 = false
 bEnable_hk417 = false
 bEnable_jng90 = false

end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Recon weapons modules --  Recon_Weapons_Modules


            if (bEnable_hk417) == (true) then dprint('hk417 Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_hk417')
mmResources:AddLoadHandler(MMRecon_hk417, MMRecon_hk417.Write)
	else
	    if (bEnable_hk417) == (false) then dprint('hk417 Sniperrifle Disabled...')
end
end
--

            if (bEnable_l96) == (true) then dprint('l96 Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_l96')
mmResources:AddLoadHandler(MMRecon_l96, MMRecon_l96.Write)
	else
	    if (bEnable_l96) == (false) then dprint('l96 Sniperrifle Disabled...')
end
end
--

            if (bEnable_qbu88) == (true) then dprint('qbu88 Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_qbu88')
mmResources:AddLoadHandler(MMRecon_qbu88, MMRecon_qbu88.Write)
	else
	    if (bEnable_qbu88) == (false) then dprint('qbu88 Sniperrifle Disabled...')
end
end
--

            if (bEnable_svd) == (true) then dprint('svd Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_svd')
mmResources:AddLoadHandler(MMRecon_svd, MMRecon_svd.Write)
	else
	    if (bEnable_svd) == (false) then dprint('svd Sniperrifle Disabled...')
end
end
--

            if (bEnable_m39ebr) == (true) then dprint('m39ebr Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_m39ebr')
mmResources:AddLoadHandler(MMRecon_m39ebr, MMRecon_m39ebr.Write)
	else
	    if (bEnable_m39ebr) == (false) then dprint('m39ebr Sniperrifle Disabled...')
end
end
--

            if (bEnable_m98) == (true) then dprint('m98 Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_m98')
mmResources:AddLoadHandler(MMRecon_m98, MMRecon_m98.Write)
	else
	    if (bEnable_m98) == (false) then dprint('m98 Sniperrifle Disabled...')
end
end
--

            if (bEnable_m40a5) == (true) then dprint('m40a5 Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_m40a5')
mmResources:AddLoadHandler(MMRecon_m40a5, MMRecon_m40a5.Write)
	else
	    if (bEnable_m40a5) == (false) then dprint('m40a5 Sniperrifle Disabled...')
end
end
--

            if (bEnable_sks) == (true) then dprint('sks Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_sks')
mmResources:AddLoadHandler(MMRecon_sks, MMRecon_sks.Write)
	else
	    if (bEnable_sks) == (false) then dprint('sks Sniperrifle Disabled...')
end
end
--

            if (bEnable_sv98) == (true) then dprint('sv98 Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_sv98')
mmResources:AddLoadHandler(MMRecon_sv98, MMRecon_sv98.Write)
	else
	    if (bEnable_sv98) == (false) then dprint('sv98 Sniperrifle Disabled...')
end
end
--

            if (bEnable_mk11) == (true) then dprint('MK11 Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_mk11')
mmResources:AddLoadHandler(MMRecon_mk11, MMRecon_mk11.Write)
	else
	    if (bEnable_mk11) == (false) then dprint('MK11 Sniperrifle Disabled...')
end
end
--

	    if (bEnable_jng90) == (true) then dprint('JNG90 Sniperrifle Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMRecon_jng90')
mmResources:AddLoadHandler(MMRecon_jng90, MMRecon_jng90.Write)
	else
	    if (bEnable_jng90) == (false) then dprint('JNG90 Sniperrifle Disabled...')
end
end
--

mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

