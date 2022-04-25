-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Gadgets funcs and utils
require('__shared/MMUtils')

local bEnable_modules_rockets = true
            if (bEnable_modules_rockets) == (true) then dprint('Rockets modules config Enabled... ... ...')


 bEnable_rpg7 = true
 bEnable_smaw = true
 bEnable_stinger = true
 bEnable_javelin = true
 bEnable_igla = true

	else
	    if (bEnable_modules_rockets) == (false) then dprint('Rockets Modules config Disabled... ... ...')

 bEnable_rpg7 = false
 bEnable_smaw = false
 bEnable_stinger = false
 bEnable_javelin = false
 bEnable_igla = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Rockets modules --
	    if (bEnable_rpg7) == (true) then dprint('rpg7 Enabled...')
MMRockets_rpg = require('__shared/Rockets_Modules/MMRockets_rpg')
mmResources:AddLoadHandler(MMRockets_rpg, MMRockets_rpg.Write)
	else
	    if (bEnable_rpg7) == (false) then dprint('rpg7 Disabled...')
end
end
--

            if (bEnable_smaw) == (true) then dprint('smaw Enabled...')
MMRockets_smaw = require('__shared/Rockets_Modules/MMRockets_smaw')
mmResources:AddLoadHandler(MMRockets_smaw, MMRockets_smaw.Write)
	else
	    if (bEnable_smaw) == (false) then dprint('smaw Disabled...')
end
end
--

            if (bEnable_stinger) == (true) then dprint('stinger Enabled...')
MMRockets_stinger = require('__shared/Rockets_Modules/MMRockets_stinger')
mmResources:AddLoadHandler(MMRockets_stinger, MMRockets_stinger.Write)
	else
	    if (bEnable_stinger) == (false) then dprint('stinger Disabled...')
end
end
--

            if (bEnable_javelin) == (true) then dprint('javelin Enabled...')
MMRockets_javelin = require('__shared/Rockets_Modules/MMRockets_javelin')
mmResources:AddLoadHandler(MMRockets_javelin, MMRockets_javelin.Write)
	else
	    if (bEnable_javelin) == (false) then dprint('javelin Disabled...')
end
end
--
            if (bEnable_igla) == (true) then dprint('igla Enabled...')
MMRockets_igla = require('__shared/Rockets_Modules/MMRockets_igla')
mmResources:AddLoadHandler(MMRockets_igla, MMRockets_igla.Write)
	else
	    if (bEnable_igla) == (false) then dprint('igla Disabled...')
end
end
--


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

