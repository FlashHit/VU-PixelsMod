-- global funcs and utils
require('__shared/MMUtils')

-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules = true

            if (bEnable_modules) == (true) then dprint('***** Global init modules Enabled... *****')

require('__shared/__init_Generic_Modules')
require('__shared/__init_modules_shotguns')
require('__shared/__init_modules_gadgets')
require('__shared/__init_modules_handguns')
require('__shared/__init_modules_rockets')
require('__shared/__init_modules_vehicles')
require('__shared/__init_modules_choppers')
require('__shared/__init_modules_support')
require('__shared/__init_modules_support_LMG')
require('__shared/__init_modules_common_weapons')
require('__shared/__init_modules_engineer_weapons')
require('__shared/__init_modules_assault_weapons')
require('__shared/__init_modules_recon_weapons')

	else
	    if (bEnable_modules) == (false) then dprint('***** Global init modules Disabled... *****')
end
end
--
-- ---------------------------------------------------------------------

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)
mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)


-- ---------------------------------------------------------------------

