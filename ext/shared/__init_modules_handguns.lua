-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Gadgets funcs and utils
require('__shared/MMUtils')

local bEnable_modules_handguns = false
            if (bEnable_modules_handguns) == (true) then dprint('Handguns modules config Enabled... ... ...')

 bEnable_m1911 = true
 bEnable_mp412rex = true
 bEnable_magnum44 = true
 bEnable_mp443 = true
 bEnable_m9 = true
 bEnable_g17c = true
 bEnable_g18 = true
 bEnable_M93r = true

	else
	    if (bEnable_modules_handguns) == (false) then dprint('Handgun Modules config Disabled... ... ...')

 bEnable_m1911 = false
 bEnable_mp412rex = false
 bEnable_magnum44 = false
 bEnable_mp443 = false
 bEnable_m9 = false
 bEnable_g17c = false
 bEnable_g18 = false
 bEnable_M93r = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Handguns modules --

            if (bEnable_m1911) == (true) then dprint('m1911 Enabled...')
        MMHandgun_m1911 = require('__shared/Handguns_Modules/MMHandgun_m1911')
mmResources:AddLoadHandler(MMHandgun_m1911, MMHandgun_m1911.Write)
	else
	    if (bEnable_m1911) == (false) then dprint('m1911 Disabled...')
end
end
--

            if (bEnable_mp412rex) == (true) then dprint('mp412rex Enabled...')
        MMHandgun_mp412rex = require('__shared/Handguns_Modules/MMHandgun_mp412rex')
mmResources:AddLoadHandler(MMHandgun_mp412rex, MMHandgun_mp412rex.Write)
	else
	    if (bEnable_mp412rex) == (false) then dprint('mp412rex Disabled...')
end
end
--

            if (bEnable_magnum44) == (true) then dprint('magnum44 Enabled...')
        MMHandgun_magnum44 = require('__shared/Handguns_Modules/MMHandgun_magnum44')
mmResources:AddLoadHandler(MMHandgun_magnum44, MMHandgun_magnum44.Write)
	else
	    if (bEnable_magnum44) == (false) then dprint('magnum44 Disabled...')
end
end
--

            if (bEnable_mp443) == (true) then dprint('mp443 Enabled...')
        MMHandgun_mp443 = require('__shared/Handguns_Modules/MMHandgun_mp443')
mmResources:AddLoadHandler(MMHandgun_mp443, MMHandgun_mp443.Write)
	else
	    if (bEnable_mp443) == (false) then dprint('mp443 Disabled...')
end
end
--

            if (bEnable_m9) == (true) then dprint('m9 Enabled...')
        MMHandgun_m9 = require('__shared/Handguns_Modules/MMHandgun_m9')
mmResources:AddLoadHandler(MMHandgun_m9, MMHandgun_m9.Write)
	else
	    if (bEnable_m9) == (false) then dprint('m9 Disabled...')
end
end
--

            if (bEnable_g17c) == (true) then dprint('g17c Enabled...')
        MMHandgun_g17c = require('__shared/Handguns_Modules/MMHandgun_g17c')
mmResources:AddLoadHandler(MMHandgun_g17c, MMHandgun_g17c.Write)
	else
	    if (bEnable_g17c) == (false) then dprint('g17c Disabled...')
end
end
--

	    if (bEnable_g18) == (true) then dprint('g18 Enabled...')
        MMHandgun_g18 = require('__shared/Handguns_Modules/MMHandgun_g18')
mmResources:AddLoadHandler(MMHandgun_g18, MMHandgun_g18.Write)
	else
	    if (bEnable_g18) == (false) then dprint('g18 Disabled...')
end
end
--

            if (bEnable_M93r) == (true) then dprint('M93r Enabled...')
        MMHandgun_M93r = require('__shared/Handguns_Modules/MMHandgun_M93r')
mmResources:AddLoadHandler(MMHandgun_M93r, MMHandgun_M93r.Write)
	else
	    if (bEnable_M93r) == (false) then dprint('M93r Disabled...')
end
end
--

mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

