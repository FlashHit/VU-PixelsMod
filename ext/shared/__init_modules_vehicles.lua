-- Values can be true false or hidden
-- hidden is the same as false, but does not show up in the console !
-- global Vehicles funcs and utils

local bEnable_modules_vehicles = false

            if (bEnable_modules_vehicles) == (true) then print('Vehicles modules config Enabled... ... ...')

bEnable_Mobile_AA = true
bEnable_tank_lbt_sprutsd = true
bEnable_tank_lbt_stryker = true
bEnable_tank_ru = true
bEnable_tank_us = true
bEnable_tank_ru_lbt_bm23 = true
bEnable_tank_lbt_lav25_bmp2m = true
bEnable_tank_lbt_amtrac = true
bEnable_tank_lbt_phoenix_barsuk = true
bEnable_vehicle_radarsweep_data = true
bEnable_vehicle_ASRAD_Vodnik_AA = true
bEnable_vehicle_jeepstuff = true
	else
	    if (bEnable_modules_vehicles) == (false) then print('Vehicles Modules config Disabled... ... ...')

bEnable_Mobile_AA = false
bEnable_tank_lbt_sprutsd = false
bEnable_tank_lbt_stryker = false
bEnable_tank_ru = false
bEnable_tank_us = false
bEnable_tank_ru_lbt_bm23 = false
bEnable_tank_lbt_lav25_bmp2m = false
bEnable_tank_lbt_amtrac = false
bEnable_tank_lbt_phoenix_barsuk = false
bEnable_vehicle_radarsweep_data = false
bEnable_vehicle_ASRAD_Vodnik_AA = false
bEnable_vehicle_jeepstuff = false

 end
end

-- ---------------------------------------------------------------------
-- Vehicles modules --  


	      if (bEnable_vehicle_jeepstuff) == (true) then print('Vehicle Jeep stuff Enabled...')
__init_jeepstuff = require('__shared/Vehicles_Modules/__init_jeepstuff')
	else
	    if (bEnable_vehicle_jeepstuff) == (false) then print('Vehicle Jeep stuff Disabled...')
end
end
--

	      if (bEnable_vehicle_ASRAD_Vodnik_AA) == (true) then print('Vehicle Ammodata Enabled...')
__init_ASRAD_Vodnik_AA = require('__shared/Vehicles_Modules/__init_ASRAD_Vodnik_AA')
	else
	    if (bEnable_vehicle_ASRAD_Vodnik_AA) == (false) then print('Vehicle Ammodata Disabled...')
end
end
--


	      if (bEnable_vehicle_radarsweep_data) == (true) then print('Vehicle Radarsweep data Enabled...')
__init_Vehicle_sweep = require('__shared/Vehicles_Modules/__init_Vehicle_sweep')
	else
	    if (bEnable_vehicle_radarsweep_data) == (false) then print('Vehicle Radarsweep data Disabled...')
end
end
--

	      if (bEnable_tank_lbt_amtrac) == (true) then print('Amtrac AAV-7A1 Enabled...')
__init_tank_lbt_amtrac = require('__shared/Vehicles_Modules/__init_tank_lbt_amtrac')
	else
	    if (bEnable_tank_lbt_amtrac) == (false) then print('Amtrac AAV-7A1 Disabled...')
end
end
--
	      if (bEnable_tank_lbt_phoenix_barsuk) == (true) then print('Phoenix and Barsuk Enabled...')
__init_tank_lbt_phoenix_barsuk = require('__shared/Vehicles_Modules/__init_tank_lbt_phoenix_barsuk')
	else
	    if (bEnable_tank_lbt_phoenix_barsuk) == (false) then print('Phoenix and Barsuk Disabled...')
end
end
--

              if (bEnable_tank_lbt_lav25_bmp2m) == (true) then print('tank_lbt_lav25_bmp2m Enabled...')
__init_tank_lbt_lav25_bmp2m = require('__shared/Vehicles_Modules/__init_tank_lbt_lav25_bmp2m')
	else
	    if (bEnable_tank_lbt_lav25_bmp2m) == (false) then print('tank_lbt_lav25_bmp2m Disabled...')
end
end
--

	      if (bEnable_tank_ru_lbt_bm23) == (true) then print('BM-23 / M142 Enabled...')
__init_tank_ru_lbt_bm23 = require('__shared/Vehicles_Modules/__init_tank_ru_lbt_bm23')
	else
	    if (bEnable_tank_ru_lbt_bm23) == (false) then print('BM-23 / M142 Disabled...')
end
end
--

              if (bEnable_Mobile_AA) == (true) then print('Mobile_AA Enabled...')
__init_Mobile_AA = require('__shared/Vehicles_Modules/__init_Mobile_AA')
	else
	    if (bEnable_Mobile_AA) == (false) then print('Mobile_AA Disabled...')
end
end
--

	    if (bEnable_tank_lbt_sprutsd) == (true) then print('Russian lbt sput-sd Enabled...')
__init_tank_lbt_sprutsd = require('__shared/Vehicles_Modules/__init_tank_lbt_sprutsd')
	else
	    if (bEnable_tank_lbt_sprutsd) == (false) then print('Russian lbt sput-sd Disabled...')
end
end
--


            if (bEnable_tank_lbt_stryker) == (true) then print('American lbt Stryker Enabled...')
  __init_tank_lbt_stryker = require('__shared/Vehicles_Modules/__init_tank_lbt_stryker')
	else
	    if (bEnable_tank_lbt_stryker) == (false) then print('American lbt Stryker Disabled...')
end
end
--

	    if (bEnable_tank_ru) == (true) then print('Russian T90 tank Enabled...')
__init_tank_ru = require('__shared/Vehicles_Modules/__init_tank_ru')
	else
	    if (bEnable_tank_ru) == (false) then print('Russian T90 tank Disabled...')
end
end
--


            if (bEnable_tank_us) == (true) then print('American Abrahams M1 tank Enabled...')
  __init_tank_us = require('__shared/Vehicles_Modules/__init_tank_us')
	else
	    if (bEnable_tank_us) == (false) then print('American Abrahams M1 tank Disabled...')
end
end
--
-- ---------------------------------------------------------------------

