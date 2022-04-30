-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Vehicles funcs and utils
require('__shared/MMUtils')

local bEnable_modules_vehicles = true

            if (bEnable_modules_vehicles) == (true) then dprint('Vehicles modules config Enabled... ... ...')

bEnable_Mobile_AA = true
bEnable_tank_lbt_sprutsd = true
bEnable_tank_lbt_stryker = true
bEnable_tank_ru = true
bEnable_tank_us = true
bEnable_tank_ru_lbt_bm23 = true

	else
	    if (bEnable_modules_vehicles) == (false) then dprint('Vehicles Modules config Disabled... ... ...')

bEnable_Mobile_AA = false
bEnable_tank_lbt_sprutsd = false
bEnable_tank_lbt_stryker = false
bEnable_tank_ru = false
bEnable_tank_us = false
bEnable_tank_ru_lbt_bm23 = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Vehicles modules --  


              if (bEnable_tank_ru_lbt_bm23) == (true) then dprint('BM-23 Enabled...')
MMVehicles_tank_ru_lbt_bm23 = require('__shared/Vehicles_Modules/MMVehicles_tank_ru_lbt_bm23')
 mmResources:AddLoadHandler(MMVehicles_tank_ru_lbt_bm23, MMVehicles_tank_ru_lbt_bm23.Write)
	else
	    if (bEnable_tank_ru_lbt_bm23) == (false) then dprint('BM-23 Disabled...')
end
end
--

              if (bEnable_Mobile_AA) == (true) then dprint('Mobile_AA Enabled...')
MMVehicles_Mobile_AA = require('__shared/Vehicles_Modules/MMVehicles_Mobile_AA')
 mmResources:AddLoadHandler(MMVehicles_Mobile_AA, MMVehicles_Mobile_AA.Write)
	else
	    if (bEnable_Mobile_AA) == (false) then dprint('Mobile_AA Disabled...')
end
end
--

	    if (bEnable_tank_lbt_sprutsd) == (true) then dprint('Russian lbt sput-sd Enabled...')
MMVehicles_tank_lbt_sprutsd = require('__shared/Vehicles_Modules/MMVehicles_tank_lbt_sprutsd')
 mmResources:AddLoadHandler(MMVehicles_tank_lbt_sprutsd, MMVehicles_tank_lbt_sprutsd.Write)
	else
	    if (bEnable_tank_lbt_sprutsd) == (false) then dprint('Russian lbt sput-sd Disabled...')
end
end
--


            if (bEnable_tank_lbt_stryker) == (true) then dprint('American lbt Stryker Enabled...')
  MMVehicles_tank_lbt_stryker = require('__shared/Vehicles_Modules/MMVehicles_tank_lbt_stryker')
 mmResources:AddLoadHandler(MMVehicles_tank_lbt_stryker, MMVehicles_tank_lbt_stryker.Write)
	else
	    if (bEnable_tank_lbt_stryker) == (false) then dprint('American lbt Stryker Disabled...')
end
end
--

	    if (bEnable_tank_ru) == (true) then dprint('Russian T90 tank Enabled...')
MMVehicles_tank_ru = require('__shared/Vehicles_Modules/MMVehicles_tank_ru')
 mmResources:AddLoadHandler(MMVehicles_tank_ru, MMVehicles_tank_ru.Write)
	else
	    if (bEnable_tank_ru) == (false) then dprint('Russian T90 tank Disabled...')
end
end
--


            if (bEnable_tank_us) == (true) then dprint('American Abrahams M1 tank Enabled...')
  MMVehicles_tank_us = require('__shared/Vehicles_Modules/MMVehicles_tank_us')
 mmResources:AddLoadHandler(MMVehicles_tank_us, MMVehicles_tank_us.Write)
	else
	    if (bEnable_tank_us) == (false) then dprint('American Abrahams M1 tank Disabled...')
end
end
--


mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)
--
-- ---------------------------------------------------------------------

