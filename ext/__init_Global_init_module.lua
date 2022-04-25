-- global funcs and utils
require('__shared/MMUtils')

-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules = true
local bEnable_gadgets = true
local bEnable_classes = true
local bEnable_weapons = true
local bEnable_vehicles = true

            if (bEnable_modules) == (true) then dprint('***** Global init modules Enabled... *****')

require('__shared/__init_Generic_Modules')

	else
	    if (bEnable_modules) == (false) then dprint('***** Global init modules Disabled... *****')
end
end
--

            if (bEnable_gadgets) == (true) then dprint('***** Gadgets modules Enabled... *****')

require('__shared/__init_modules_gadgets')
require('__shared/__init_modules_rockets')

	else
	    if (bEnable_gadgets) == (false) then dprint('***** Gadgets modules Disabled... *****')
end
end
--


            if (bEnable_classes) == (true) then dprint('***** Classes modules Enabled... *****')

require('__shared/__init_modules_engineer_weapons')
require('__shared/__init_modules_assault_weapons')
require('__shared/__init_modules_recon_weapons')
require('__shared/__init_modules_support')
require('__shared/__init_modules_support_LMG')

	else
	    if (bEnable_classes) == (false) then dprint('***** Classes modules Disabled... *****')
end
end
--


            if (bEnable_weapons) == (true) then dprint('***** Global weapons modules Enabled... *****')

require('__shared/__init_modules_shotguns')
require('__shared/__init_modules_handguns')
require('__shared/__init_modules_common_weapons')

	else
	    if (bEnable_weapons) == (false) then dprint('***** Global weapons modules Disabled... *****')
end
end
--


            if (bEnable_vehicles) == (true) then dprint('***** Vehicles modules Enabled... *****')

require('__shared/__init_modules_vehicles')
require('__shared/__init_modules_choppers')

	else
	    if (bEnable_vehicles) == (false) then dprint('***** Vehicles modules Disabled... *****')
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

