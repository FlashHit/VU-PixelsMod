-- Needed if you want to pimp stuff
ebxEditUtils = require('__shared/EbxEditUtils')
Utils = require('__shared/Utils')
-- garbage_collector = require('__shared/garbage_collector') -- Does not yet work as it should be

-- Each module has its own settings to enable or disable stuff
-- This is just the loader part..
-- it can happend that changed firedata is shared with other vehicles
-- this can give a difrent name in the server console, so dont worry about it.

-- not the module what is needed, but gives mapmode and map name in the console
require('__shared/mapinfo_Modules/server_message')

-- Version check module, this reads the current mod.json on github and compares it.
-- if there is a update, it wil notify the server admin in the console..
-- want to use it your self ? ,copy version.lua and updatecheck.lua in your folder,
-- and add the line below to your init file ! ** enjoy **

require('__shared/UpdateCheck') 
-- 
require('__shared/__init_Modules_Player')
require('__shared/__init_modules_gadgets')
-- 
require('__shared/__init_modules_rockets_javelin')
require('__shared/__init_modules_rockets_rpg')
require('__shared/__init_modules_rockets_igla')
require('__shared/__init_modules_gadgets_c4')
require('__shared/__init_modules_M15_mines')
require('__shared/__init_modules_grenades')
--
require('__shared/__init_modules_vehicles')
require('__shared/__init_modules_choppers')
require('__shared/__init_modules_ac130')
--
require('__shared/__init_modules_shotguns')
require('__shared/__init_modules_common_weapons')
require('__shared/__init_modules_handguns')
require('__shared/__init_modules_assault_weapons')
require('__shared/__init_modules_engineer_weapons')
require('__shared/__init_modules_recon_weapons')
require('__shared/__init_modules_support_LMG')
require('__shared/__init_modules_crossbow')
--
-- modules below can and will lag the server startup performance
-- it also affects the client loading time !
-- require('__shared/__init_Modules_No_recoil') -- THIS WIL INCREASE SERVER STARTUP !!!!
--
-- require('__shared/__init_modules_steady_scope') -- This is not yet working as it should be, DO NOT ENABLE !!

-- ###########
