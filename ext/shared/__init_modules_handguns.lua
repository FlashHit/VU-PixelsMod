-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Gadgets funcs and utils
require('__shared/MMUtils')

local bEnable_modules_handguns = true
            if (bEnable_modules_handguns) == (true) then dprint('Handguns modules config Enabled... ... ...')


 bEnable_M93r = true

	else
	    if (bEnable_modules_handguns) == (false) then dprint('Handgun Modules config Disabled... ... ...')

 bEnable_M93r = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Handguns modules --

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

