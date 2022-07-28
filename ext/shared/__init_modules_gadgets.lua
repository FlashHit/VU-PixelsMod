-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !

local bEnable_modules_gadgets = true
            if (bEnable_modules_gadgets) == (true) then print('Gadgets modules config Enabled... ... ...')


-- Gadgets stuff --
 bEnable_combobags = true
 bEnable_tugs_sweep = true
 bEnable_Repairtool = true
 bEnable_claymore = true
 bEnable_defib = true
 bEnable_EOD = true
 bEnable_turbo_C4 = true
 bEnable_turbo_grenade = true
 bEnable_turbo_M15 = true


	else
	    if (bEnable_modules_gadgets) == (false) then print('Gadgets Modules config Disabled... ... ...')

-- Gadgets stuff --
 bEnable_combobags = false
 bEnable_tugs_sweep = false
 bEnable_Repairtool = false
 bEnable_claymore = false
 bEnable_defib = false
 bEnable_EOD = false
 bEnable_turbo_C4 = false
 bEnable_turbo_grenade = false
 bEnable_turbo_M15 = false

 end
end


-- Gadgets modules --

            if (bEnable_turbo_M15) == (true) then print('M15 Turbo Enabled...')
__init_turbo_m15_tankmine = require('__shared/Gadgets_Modules/__init_turbo_m15_tankmine')
	else
	    if (bEnable_turbo_M15) == (false) then print('M15 Turbo Disabled...')
end
end



	    if (bEnable_turbo_grenade) == (true) then print('SUPER grenade Enabled...')
__init_turbo_grenade = require('__shared/Gadgets_Modules/__init_turbo_grenade')
	else
	    if (bEnable_turbo_grenade) == (false) then print('SUPER grenade Disabled...')
end
end


	    if (bEnable_turbo_C4) == (true) then print('Turbo C4 Enabled...')
__init_turbo_C4 = require('__shared/Gadgets_Modules/__init_turbo_C4')
	else
	    if (bEnable_turbo_C4) == (false) then print('Turbo C4 Disabled...')
end
end

	    
	    
	    if (bEnable_EOD) == (true) then print('EOD Bot Enabled...')
   __init_EOD_bot = require('__shared/Gadgets_Modules/__init_EOD_bot')
	else
	    if (bEnable_EOD) == (false) then print('EOD Bot Disabled...')
end
end

	    
	    if (bEnable_defib) == (true) then print('Kinky defib Enabled...')
__init_defib = require('__shared/Gadgets_Modules/__init_defib')
	else
	    if (bEnable_defib) == (false) then print('kinky Defib Disabled...')
end
end



            if (bEnable_claymore) == (true) then print('Claymore Enabled...')
__init_claymore = require('__shared/Gadgets_Modules/__init_claymore')
	else
	    if (bEnable_claymore) == (false) then print('Claymore Disabled...')
end
end
--


	    if (bEnable_combobags) == (true) then print('combobags Enabled...')
   __init_ComboBags = require('__shared/Gadgets_Modules/__init_ComboBags')
	else
	    if (bEnable_combobags) == (false) then print('combobags Disabled...')
end
end
--

            if (bEnable_tugs_sweep) == (true) then print('tugs_sweep Enabled...')
__init_Tugs = require('__shared/Gadgets_Modules/__init_Tugs')
	else
	    if (bEnable_tugs_sweep) == (false) then print('tugs_sweep Disabled...')
end
end
--

            if (bEnable_Repairtool) == (true) then print('Repairtool Enabled...')
-- MMGadgets_repairtool = require('__shared/Gadgets_Modules/MMGadgets_repairtool') -- Testing script
 __init_repairtool = require('__shared/Gadgets_Modules/__init_repairtool') -- working script
	else
	    if (bEnable_Repairtool) == (false) then dprint('Repairtool Disabled...')
end
end
--


