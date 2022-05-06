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
--bEnable_tank_us_lbt_test = hidden
bEnable_tank_lbt_lav25_bmp2m = true
bEnable_tank_lbt_amtrac = true
bEnable_tank_lbt_phoenix_barsuk = true

	else
	    if (bEnable_modules_vehicles) == (false) then dprint('Vehicles Modules config Disabled... ... ...')

bEnable_Mobile_AA = false
bEnable_tank_lbt_sprutsd = false
bEnable_tank_lbt_stryker = false
bEnable_tank_ru = false
bEnable_tank_us = false
bEnable_tank_ru_lbt_bm23 = false
--bEnable_tank_us_lbt_test = false
bEnable_tank_lbt_lav25_bmp2m = false
bEnable_tank_lbt_amtrac = false
bEnable_tank_lbt_phoenix_barsuk = false

 end
end

-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- ---------------------------------------------------------------------
-- Vehicles modules --  

--	      if (bEnable_tank_us_lbt_test) == (true) then dprint('EXPERIMENTAL Enabled...')
--MMVehicles_tank_us_lbt_test = require('__shared/Vehicles_Modules/MMVehicles_tank_us_lbt_test')
-- mmResources:AddLoadHandler(MMVehicles_tank_us_lbt_test, MMVehicles_tank_us_lbt_test.Write)
--	else
--	    if (bEnable_tank_us_lbt_test) == (false) then dprint('EXPERIMENTAL Disabled...')
--end
--end
--

	      if (bEnable_tank_lbt_amtrac) == (true) then dprint('Amtrac AAV-7A1 Enabled...')
MMVehicles_tank_lbt_amtrac = require('__shared/Vehicles_Modules/MMVehicles_tank_lbt_amtrac')
 mmResources:AddLoadHandler(MMVehicles_tank_lbt_amtrac, MMVehicles_tank_lbt_amtrac.Write)
	else
	    if (bEnable_tank_lbt_amtrac) == (false) then dprint('Amtrac AAV-7A1 Disabled...')
end
end
--
	      if (bEnable_tank_lbt_phoenix_barsuk) == (true) then dprint('Phoenix and Barsuk Enabled...')
MMVehicles_tank_lbt_phoenix_barsuk = require('__shared/Vehicles_Modules/MMVehicles_tank_lbt_phoenix_barsuk')
 mmResources:AddLoadHandler(MMVehicles_tank_lbt_phoenix_barsuk, MMVehicles_tank_lbt_phoenix_barsuk.Write)
	else
	    if (bEnable_tank_lbt_phoenix_barsuk) == (false) then dprint('Phoenix and Barsuk Disabled...')
end
end
--

              if (bEnable_tank_lbt_lav25_bmp2m) == (true) then dprint('tank_lbt_lav25_bmp2m Enabled...')
MMVehicles_tank_lbt_lav25_bmp2m = require('__shared/Vehicles_Modules/MMVehicles_tank_lbt_lav25_bmp2m')
 mmResources:AddLoadHandler(MMVehicles_tank_lbt_lav25_bmp2m, MMVehicles_tank_lbt_lav25_bmp2m.Write)
	else
	    if (bEnable_tank_lbt_lav25_bmp2m) == (false) then dprint('tank_lbt_lav25_bmp2m Disabled...')
end
end
--

	      if (bEnable_tank_ru_lbt_bm23) == (true) then dprint('BM-23 / M142 Enabled...')
MMVehicles_tank_ru_lbt_bm23 = require('__shared/Vehicles_Modules/MMVehicles_tank_ru_lbt_bm23')
 mmResources:AddLoadHandler(MMVehicles_tank_ru_lbt_bm23, MMVehicles_tank_ru_lbt_bm23.Write)
	else
	    if (bEnable_tank_ru_lbt_bm23) == (false) then dprint('BM-23 / M142 Disabled...')
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

