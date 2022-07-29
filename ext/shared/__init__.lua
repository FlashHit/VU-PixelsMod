-- Needed if you want to pimp stuff
ebxEditUtils = require('__shared/EbxEditUtils')
Utils = require('__shared/Utils')

-- Each module has its own settings to enable or disable stuff
-- This is just the loader part..
require('__shared/__init_Modules_Player')
require('__shared/__init_modules_gadgets')
require('__shared/__init_modules_gadgets_c4')
require('__shared/__init_modules_shotguns')
require('__shared/__init_modules_common_weapons')
require('__shared/__init_modules_rockets')
require('__shared/__init_modules_vehicles')
require('__shared/__init_modules_handguns')
require('__shared/__init_modules_choppers')
require('__shared/__init_modules_assault_weapons')
require('__shared/__init_modules_engineer_weapons')
require('__shared/__init_modules_recon_weapons')
require('__shared/__init_modules_support_LMG')
