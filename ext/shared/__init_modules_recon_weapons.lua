-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Support weapons funcs and utils
require('__shared/MMUtils')

local bEnable_modules_recon_weapons = hidden -- No weapons added yet

            if (bEnable_modules_recon_weapons) == (true) then dprint('Recon Weapons modules config Enabled... ... ...')

 bEnable_template = true

	else
	    if (bEnable_modules_recon_weapons) == (false) then dprint('Recon Weapons Modules config Disabled... ... ...')

 bEnable_template = false
	else
	    if (bEnable_modules_recon_weapons) == (hidden) then dprint('No Recon Weapons added, Disabled for now... ... ...')

end
end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Recon weapons modules --  Recon_Weapons_Modules


            if (bEnable_template) == (true) then dprint('Template file Enabled...')
    MMTemplate = require('__shared/Recon_weapons_Modules/MMTemplate')
mmResources:AddLoadHandler(MMTemplate, MMTemplate.Write)
	else
	    if (bEnable_template) == (false) then dprint('Template file Disabled...')
end
end
--

mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

