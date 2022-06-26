-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Gadgets funcs and utils
require('__shared/MMUtils')

local bEnable_modules_gadgets = true
            if (bEnable_modules_gadgets) == (true) then dprint('Gadgets modules config Enabled... ... ...')


-- Gadgets stuff --
 bEnable_combobags = true
 bEnable_defib = true
 bEnable_C4 = true
 bEnable_M15 = true
 bEnable_EOD = true
-- bEnable_grenade = true
 bEnable_claymore = true
 bEnable_Repairtool = true
 bEnable_mortar = true
 bEnable_tugs_sweep = true
 bEnable_mav = hidden -- WIP do not use
 bEnable_kornet = hidden -- WIP do not use

	else
	    if (bEnable_modules_gadgets) == (false) then dprint('Gadgets Modules config Disabled... ... ...')

-- Gadgets stuff --
 bEnable_combobags = false
 bEnable_defib = false
 bEnable_C4 = false
 bEnable_M15 = false
 bEnable_EOD = false
-- bEnable_grenade = false
 bEnable_claymore = false
 bEnable_Repairtool = false
 bEnable_mortar = false
 bEnable_tugs_sweep = false
 bEnable_mav = true
 bEnable_kornet = false

 end
end
----------------
local bEnable_nade_modules_gadgets = true
            if (bEnable_nade_modules_gadgets) == (true) then dprint('Gadgets Nade modules config Enabled... ... ...')
-- Here u can set the grenades
-- ONE config only can be active here !
 bEnable_turbo_grenade = true
 bEnable_grenade = false

	else
	    if (bEnable_nade_modules_gadgets) == (false) then dprint('Gadgets Nade Modules config Disabled... ... ...')

-- Gadgets stuff --
 bEnable_turbo_grenade = false
 bEnable_grenade = false

end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------

	    if (bEnable_grenade) == (true) then dprint('grenade Enabled...')
MMGadgets_grenade = require('__shared/Gadgets_Modules/MMGadgets_grenade')
mmResources:AddLoadHandler(MMGadgets_grenade, MMGadgets_grenade.Write)
	else
	    if (bEnable_grenade) == (false) then dprint('grenade Disabled...')
end
end
--
	    if (bEnable_turbo_grenade) == (true) then dprint('SUPER grenade Enabled...')
MMGadgets_turbo_grenade = require('__shared/Gadgets_Modules/MMGadgets_turbo_grenade')
mmResources:AddLoadHandler(MMGadgets_turbo_grenade, MMGadgets_turbo_grenade.Write)
	else
	    if (bEnable_turbo_grenade) == (false) then dprint('SUPER grenade Disabled...')
end
end
--


-- Gadgets modules --
            if (bEnable_mav) == (true) then dprint('Kinky MAV Enabled...')
   MMGadgets_mav = require('__shared/Gadgets_Modules/MMGadgets_mav')
mmResources:AddLoadHandler(MMGadgets_mav, MMGadgets_mav.Write)
	else
	    if (bEnable_defib) == (false) then dprint('kinky MAV Disabled...')
end
end

	    if (bEnable_defib) == (true) then dprint('Kinky defib Enabled...')
   MMGadgets_defib = require('__shared/Gadgets_Modules/MMGadgets_defib')
mmResources:AddLoadHandler(MMGadgets_defib, MMGadgets_defib.Write)
	else
	    if (bEnable_defib) == (false) then dprint('kinky Defib Disabled...')
end
end

	    if (bEnable_EOD) == (true) then dprint('EOD Bot Enabled...')
   MMGadgets_EOD_bot = require('__shared/Gadgets_Modules/MMGadgets_EOD_bot')
mmResources:AddLoadHandler(MMGadgets_EOD_bot, MMGadgets_EOD_bot.Write)
	else
	    if (bEnable_EOD) == (false) then dprint('EOD Bot Disabled...')
end
end

            if (bEnable_claymore) == (true) then dprint('Claymore Enabled...')
MMGadgets_claymore = require('__shared/Gadgets_Modules/MMGadgets_claymore')
mmResources:AddLoadHandler(MMGadgets_claymore, MMGadgets_claymore.Write)
	else
	    if (bEnable_claymore) == (false) then dprint('Claymore Disabled...')
end
end
--

	    if (bEnable_combobags) == (true) then dprint('combobags Enabled...')
   MMGadgets_combobags = require('__shared/Gadgets_Modules/MMGadgets_combobags')
mmResources:AddLoadHandler(MMGadgets_combobags, MMGadgets_combobags.Write)
	else
	    if (bEnable_combobags) == (false) then dprint('combobags Disabled...')
end
end
--

	    if (bEnable_C4) == (true) then dprint('C4 Enabled...')
MMGadgets_C4 = require('__shared/Gadgets_Modules/MMGadgets_C4')
mmResources:AddLoadHandler(MMGadgets_C4, MMGadgets_C4.Write)
	else
	    if (bEnable_C4) == (false) then dprint('C4 Disabled...')
end
end
--


            if (bEnable_M15) == (true) then dprint('M15 Enabled...')
MMGadgets_m15_tankmine = require('__shared/Gadgets_Modules/MMGadgets_m15_tankmine')
mmResources:AddLoadHandler(MMGadgets_m15_tankmine, MMGadgets_m15_tankmine.Write)
	else
	    if (bEnable_M15) == (false) then dprint('M15 Disabled...')
end
end
--

            if (bEnable_Repairtool) == (true) then dprint('Repairtool Enabled...')
MMGadgets_repairtool = require('__shared/Gadgets_Modules/MMGadgets_repairtool')
mmResources:AddLoadHandler(MMGadgets_repairtool, MMGadgets_repairtool.Write)
	else
	    if (bEnable_Repairtool) == (false) then dprint('Repairtool Disabled...')
end
end
--

            if (bEnable_mortar) == (true) then dprint('mortar Enabled...')
MMGadgets_mortar = require('__shared/Gadgets_Modules/MMGadgets_mortar')
mmResources:AddLoadHandler(MMGadgets_mortar, MMGadgets_mortar.Write)
	else
	    if (bEnable_mortar) == (false) then dprint('mortar Disabled...')
end
end
--

            if (bEnable_tugs_sweep) == (true) then dprint('tugs_sweep Enabled...')
MMGadgets_tugs_sweep = require('__shared/Gadgets_Modules/MMGadgets_tugs_sweep')
mmResources:AddLoadHandler(MMGadgets_tugs_sweep, MMGadgets_tugs_sweep.Write)
	else
	    if (bEnable_tugs_sweep) == (false) then dprint('tugs_sweep Disabled...')
end
end
--

            if (bEnable_kornet) == (true) then dprint('Kornet stuff Enabled...')
MMGadgets_kornet = require('__shared/Gadgets_Modules/MMGadgets_kornet')
mmResources:AddLoadHandler(MMGadgets_kornet, MMGadgets_kornet.Write)
	else
	    if (bEnable_kornet) == (false) then dprint('Kornet stuff Disabled...')
end
end
--


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

