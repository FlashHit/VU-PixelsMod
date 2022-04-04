-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Choppers funcs and utils
require('__shared/MMUtils')

local bEnable_modules_choppers = true

            if (bEnable_modules_choppers) == (true) then dprint('Choppers modules config Enabled... ... ...')

bEnable_AH6_Light_Atack_US = true
bEnable_Venom_Recon_US = true
bEnable_Z11W_Light_Atack_RU = true
bEnable_KA60_Kasatka_Recon_RU = true
bEnable_Mi28_Atack_RU = true
bEnable_AH1Z_Atack_US = true
bEnable_Choppers_firedata = false


	else
	    if (bEnable_modules_choppers) == (false) then dprint('Choppers Modules config Disabled... ... ...')

bEnable_AH6_Light_Atack_US = false
bEnable_Venom_Recon_US = false
bEnable_Z11W_Light_Atack_RU = false
bEnable_KA60_Kasatka_Recon_RU = false
bEnable_Mi28_Atack_RU = false
bEnable_AH1Z_Atack_US = false
bEnable_Choppers_firedata = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Choppers modules --  

            if (bEnable_Choppers_firedata) == (true) then dprint('Pimped Atack chopper firedata Enabled...')
  MMChoppers_firedata = require('__shared/Choppers_Modules/MMChoppers_firedata')
 mmResources:AddLoadHandler(MMChoppers_firedata, MMChoppers_firedata.Write)
	else
	    if (bEnable_Choppers_firedata) == (false) then dprint('Pimped Atack chopper firedata Disabled...')
end
end
--

            if (bEnable_Venom_Recon_US) == (true) then dprint('Venom_Recon_US chopper Enabled...')
  MMChoppers_Venom_Recon_US = require('__shared/Choppers_Modules/MMChoppers_Venom_Recon_US')
 mmResources:AddLoadHandler(MMChoppers_Venom_Recon_US, MMChoppers_Venom_Recon_US.Write)
	else
	    if (bEnable_Venom_Recon_US) == (false) then dprint('Venom_Recon_US chopper Disabled...')
end
end
--

            if (bEnable_AH6_Light_Atack_US) == (true) then dprint('AH6_Light_Atack_US chopper Enabled...')
  MMChoppers_AH6_Light_Atack_US = require('__shared/Choppers_Modules/MMChoppers_AH6_Light_Atack_US')
 mmResources:AddLoadHandler(MMChoppers_AH6_Light_Atack_US, MMChoppers_AH6_Light_Atack_US.Write)
	else
	    if (bEnable_AH6_Light_Atack_US) == (false) then dprint('AH6_Light_Atack_US chopper Disabled...')
end
end
--

            if (bEnable_KA60_Kasatka_Recon_RU) == (true) then dprint('KA-60_Kasatka_Recon_RU chopper Enabled...')
  MMChoppers_KA60_Kasatka_Recon_RU = require('__shared/Choppers_Modules/MMChoppers_KA60_Kasatka_Recon_RU')
 mmResources:AddLoadHandler(MMChoppers_KA60_Kasatka_Recon_RU, MMChoppers_KA60_Kasatka_Recon_RU.Write)
	else
	    if (bEnable_KA60_Kasatka_Recon_RU) == (false) then dprint('KA-60_Kasatka_Recon_RU chopper Disabled...')
end
end
--

	    if (bEnable_Z11W_Light_Atack_RU) == (true) then dprint('Z11W_Light_Atack_RU chopper Enabled...')
  MMChoppers_Z11W_Light_Atack_RU = require('__shared/Choppers_Modules/MMChoppers_Z11W_Light_Atack_RU')
 mmResources:AddLoadHandler(MMChoppers_Z11W_Light_Atack_RU, MMChoppers_Z11W_Light_Atack_RU.Write)
	else
	    if (bEnable_Z11W_Light_Atack_RU) == (false) then dprint('Z11W_Light_Atack_RU chopper Disabled...')
end
end
--



	    if (bEnable_Mi28_Atack_RU) == (true) then dprint('Mi28_Atack_RU chopper Enabled...')
  MMChoppers_Mi28_Atack_RU = require('__shared/Choppers_Modules/MMChoppers_Mi28_Atack_RU')
 mmResources:AddLoadHandler(MMChoppers_Mi28_Atack_RU, MMChoppers_Mi28_Atack_RU.Write)
	else
	    if (bEnable_Mi28_Atack_RU) == (false) then dprint('Mi28_Atack_RU chopper Disabled...')
end
end
--

	    if (bEnable_AH1Z_Atack_US) == (true) then dprint('AH1Z_Atack_US chopper Enabled...')
  MMChoppers_AH1Z_Atack_US = require('__shared/Choppers_Modules/MMChoppers_AH1Z_Atack_US')
 mmResources:AddLoadHandler(MMChoppers_AH1Z_Atack_US, MMChoppers_AH1Z_Atack_US.Write)
	else
	    if (AH1Z_Atack_US) == (false) then dprint('AH1Z_Atack_US chopper Disabled...')
end
end
--





mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

