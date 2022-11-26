-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_gadgets_c4 = true
            if (bEnable_modules_gadgets_c4) == (true) then print('C4 Gadgets modules config Enabled ...')


-- C4 Gadgets stuff --
-- ONLY ONE CAN BE ACTIVE !
 bEnable_extended_C4 = false -- This increased the C4 ammount you can carry and place to 32
 bEnable_pimped_C4 = false  -- Has 32 packages, but the explosion is pimped by 3 times
 bEnable_mapmode_C4 = true -- depended on mapmode the C4 you can carry varies from 8 to 32

	else
	    if (bEnable_modules_gadgets_c4) == (false) then print('C4 Gadgets Modules config Disabled ...')

-- Gadgets stuff --
 bEnable_extended_C4 = false
 bEnable_pimped_C4 = false
 bEnable_mapmode_C4 = false

 end
end
--

-- C4 modules --

	    if (bEnable_mapmode_C4) == (true) then print('C4 mapmode depending Enabled ...')

__init_turbo_C4_cq_large = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_cq_large')
__init_turbo_C4_cq_small = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_cq_small')
__init_turbo_C4_rush_large = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_rush_large')
__init_turbo_C4_rush = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_rush')
__init_turbo_C4_ctf = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_ctf')
__init_turbo_C4_cq_dom = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_cq_dom')
__init_turbo_C4_tanksuperiority = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_tanksuperiority')
__init_turbo_C4_tdm_sq = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_tdm_sq')
__init_turbo_C4_tdm_cq = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_tdm_cq')
__init_turbo_C4_tdm = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_tdm')
__init_turbo_C4_assault = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_assault')
__init_turbo_C4_assault2 = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_assault2')
__init_turbo_C4_assault64 = require('__shared/Gadgets_Modules_c4/__init_turbo_C4_assault64')
	
	else
	    if (bEnable_mapmode_C4) == (false) then print('C4 mapmode depending Disabled ...')
end
end
--
-- ----------------------------------------------------------------------------------

	    if (bEnable_extended_C4) == (true) then print('C4 extended ammo Enabled ...')
__init_extended_C4 = require('__shared/Gadgets_Modules_c4/__init_extended_C4')
	
	else
	    if (bEnable_extended_C4) == (false) then print('C4 extended ammo Disabled ...')
end
end
--

-- ----------------------------------------------------------------------------------

	    if (bEnable_pimped_C4) == (true) then print('Pimped ammo C4 Enabled ...')
__init_pimped_C4 = require('__shared/Gadgets_Modules_c4/__init_pimped_C4')
	
	else
	    if (bEnable_pimped_C4) == (false) then print('Pimped ammo C4 Disabled ...')
end
end
--

