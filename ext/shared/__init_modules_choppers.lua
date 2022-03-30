-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Choppers funcs and utils
require('__shared/MMUtils')

local bEnable_modules_choppers = hidden

            if (bEnable_modules_choppers) == (true) then dprint('Choppers modules config Enabled... ... ...')

-- DO NOT ENABLE THIS, ITS WORK IN PROGRESS --
 bEnable_atack_chopper = false
 bEnable_recon_chopper = false
 bEnable_Z11_chopper = false

	else
	    if (bEnable_modules_choppers) == (false) then dprint('Choppers Modules config Disabled... ... ...')

-- DO NOT ENABLE THIS, ITS WORK IN PROGRESS --
 bEnable_atack_chopper = false
 bEnable_recon_chopper = false
 bEnable_Z11_chopper = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Choppers modules --  

            if (bEnable_atack_chopper) == (true) then dprint('atack_chopper Enabled...')
  MMVehicles_atack_chopper = require('__shared/Choppers_Modules/MMChoppers_atack_chopper')
 mmResources:AddLoadHandler(MMVehicles_atack_chopper, MMVehicles_atack_chopper.Write)
	else
	    if (bEnable_atack_chopper) == (false) then dprint('atack_chopper Disabled...')
end
end
--

            if (bEnable_recon_chopper) == (true) then dprint('recon_chopper Enabled...')
  MMVehicles_recon_chopper = require('__shared/Choppers_Modules/MMChoppers_recon_chopper')
 mmResources:AddLoadHandler(MMVehicles_recon_chopper, MMVehicles_recon_chopper.Write)
	else
	    if (bEnable_recon_chopper) == (false) then dprint('recon_chopper Disabled...')
end
end
--

            if (bEnable_Z11_chopper) == (true) then dprint('Z11_chopper Enabled...')
  MMVehicles_Z11_chopper = require('__shared/Choppers_Modules/MMChoppers_Z11_chopper')
 mmResources:AddLoadHandler(MMVehicles_Z11_chopper, MMVehicles_Z11_chopper.Write)
	else
	    if (bEnable_Z11_chopper) == (false) then dprint('Z11_chopper Disabled...')
end
end
--


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

