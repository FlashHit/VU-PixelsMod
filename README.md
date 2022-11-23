# Original version:
## VU-MajorsMod MajorVictory87
- Stunts mod for Battlefield 3: Venice Unleashed
- https://github.com/MajorVictory/VU-MajorsMod

# Modded version:
## iamadeadpixel
- Make things go more fun and kinky
-
# Welcome to Version 2.0.9
- This is complete overworked version from 1.4.4
- Every item is now its own instance file
- Basicly ,if you want to run only ONLY one modification, you can copy it out of the mod
- the only thing is that u need to make is its own directory structure and have some
- basic knowledge how to cook your own files

# If you stil want pixelmod 1.4.4 ,dont worry look in archive.(not updated !)

# On default almost all modules are active !
# The no recoil mods are inactive due long loading time
# Firedata can be shared with other type class vehicles or weapons.

# Last Update: 23-11-2022
- AC130 now has its own module entry
- Tweaked on the Gunship the main cannon's damage
- Tweaked on the Gunship the autocannon ammo size and damage
- Tweaked on the Gunship the railgun ammo size
- Tweaked on the Gunship the railgun recoil,smaller firebeam and faster shooting

# Previous Update: 19-11-2022
- Trying to fix the amount on T-UGS that can be placed on the same time.
- Disabled by now, back to 1 T-UGS only, Work in progress.

# Previous Update: 17-11-2022
- Created a no-recoil config module
- Handguns has now a no-recoil section (can be turned on/off)
- Common class has now no recoil/spread (can be turned on/off)
- Recon class has now no recoil/spread (can be turned on/off)
- * Steady Scope function not yet fixed *

# Previous Update: 16-11-2022
- Kornet and tow launchers have pimped ammo and explosion xD

# Previous Update: 15-11-2022
- Assault class:  has no option for extended magazine
- Engineer class: has no option for extended magazine
- Recon class:    has no option for extended magazine
- Common class:   Only PP2000 - PDW-R - MP7 - ASval and MP5K has extended magazine
- Shotguns:       has extended magazine
- Support class:  has extended magazine

# Previous Update: 14-11-2022
- WARNING !, THIS INCREASES SERVER LOADING TIME, AND CLIENT LOADING TIME !
- Support LMG class has now no recoil/spread (can be turned on/off)
- Assault class has now no recoil/spread (can be turned on/off)

# Previous Update: 13-11-2022
- Merged the no recoil data for the jackhammer and usas12 in the shotgun section

# Previous Update: 12-11-2022
- Retweaked the shotguns

# Previous Update: 09-11-2022
- Tweaked the mortar even more.
- bigger smoke size when using the smoke function
- Tweaked the damage for the explosion shells

# Previous Update: 07-11-2022
- Pimped the mortar
- 25 shells for explosion and smoke
- Mortar went to yoga class !
- Smoke size doubled !

# Previous Update: 06-11-2022
-- Tweaked the Tugs.
-- Tweaked the ammocrate and the medicbag, now u can place 3 of them !

# Previous Update: 05-11-2022
- Decreased the damage for the M142 and BM32, it was a bit overkill.

# Previous Update: 04-11-2022
- Pimped the Atack choppers TV Missile explosion data
- changed russian atack chopper and jet heatseekers to 12
- changed American atack chopper and jet heatseekers to 12

# Previous update: 02-11-2022
- Changed Stinger/igla and Javelin lock data

# Previous update: 31-10-2022
- Added nutcase damage for the TOWs on MB23 M142 BTR90 and LAV25 (needs tweak)
- Added nutcase damage for the airburst (primary weapon) on MB23 and M142  (needs tweak)

# Previous update: 28-10-2022
- Added on BM23 and M142 more engine power

# Previous Update: 23-10-2022
- Changed the damage on the Javelin
- Added option to lock on jets/choppers
- trying to fix the option to destroy ground vehicles with igla/stinger

# Previous Update: 13-10-2022
- Moved C4 to its own instance section.
- now you can tweak the option for global item count or selective item count based on the map mode.

# Previous Update: 28-08-2022
- Added normal M67 script with extended ammo.

# Previous Update: 13-08-2022
- Fixed the shockwave time on the grenades.
- Javelin now also can shoot down choppers and jets
- but at the cost of locking range !
- The T-UGS is now a small nuke on detonation, hehe

# Previous Update: 09-08-2022
- Fixed the Russian recon chopper, now it fly as it should be.

# Previous Update: 07-08-2022
- Added * More fun with the M320 and M26 *
- Sorry, could not yet find the M320 Buckshot data ,WIP :)

# Previous Update: 04-08-2022
- Added * Jeepstuff * Dont worry, this is a engine tweak only.

# Previous Update: 29-07-2022
- FULL revamp on the C4.
- Not as i wanted, but this crude solution works for now.
- excluded are scavenger,Airsuperiority and gunmaster, NO C4 on those modes.
- C4 ammount based on gametype.
- C4 is more like a small nuke.

# Previous Update: 28-07-2022
- Version 2.0.1 - Bug fix
- Fixed C4 explosion data, should be a huge bang.
- Fixed M15 explosion data, should be a huge bang.
- Fixed M67 explosion data, should be a huge bang.
- Fixed Claymore explosion data, should be a huge bang.

- Read down below the changes
- Version 2.0.0 (28-07-2022)
-
# WARNING
* DO NOT RUN THIS MOD WITH MAJORVICTORY87 ! IT WILL GIVE MASSIVE CONFLICTS !
* This is a overworked version of the original pixelmod.
* Each item can now be run as a own instance
* The configuration script are stil working, so any item can be turned on or off.

# About me:
- Short: i am a lazy prick, not the pro in coding but am pretty good in understand the programming concept.
- so, copy past and adapt is pretty swag for me..

# Known isues
* This mod can give conflicts with the funbots mod, and nags the server to reboot.
* USE WITH CARE !

# How to adjust settings on the __init_modules files
- __init__.lua : This is the master file
- Here u can enable or fully disable the modules
- true or false can be used, also hidden, this wil supress any text output on the server on startup

- __init_Generic_Modules.lua
- Here u can enable or disable player tweaks and some Weapon stuff, this is a WIP,so disabled.

- __init_Global_init_module.lua
- Here u can enable or disable sub modules,each module contains classes for its core.

- __init_modules_choppers.lua
- Here u can enable or disable any chopper type there is.

- __init_modules_common_weapons.lua
- Here u can enable or disable the common shared weapons.

- __init_modules_assault_weapons.lua
- Here u can enable or disable ALL modded assault weapons

- __init_modules_recon_weapons.lua
- Here u can enable or disable the recon class weapons

- __init_modules_support_LMG.lua
- Here u can enable or disable all the LMG classes

- __init_modules_engineer_weapons.lua
- Here u can enable or disable the engineer class weapons

- __init_modules_gadgets.lua
- Here u can enable or disable most of the gadgets.

- __init_modules_handguns.lua
- Here u can enable or disable most of the handguns (still WIP,but working)

- __init_modules_rockets.lua
- Here u can enable or disable RPG/IGLA/STINGER

- __init_modules_shotguns.lua
- Here u can enable or disable the shotguns

- __init_modules_vehicles.lua
- Here u can enable or disable most of the vehicles weapon mods


# Previous update: 17-07-2022
# Changed C4,Grenades,Claymores,M15: Normal or turbo mode.
- Normal mode: Behaves as stock stuff.
- Turbo mode: Things goes BOOOOOOOOOOM !
- Added small variable section in C4,M15,claymore and grenade turbo mode
- for faster modifications. - Regular values on the end.

# previous update: 29-06-2022
Make more fun with the EOD bot
Now u can select in the config normale long distance repair, or super charched rockets with repair fun

# Previous update: 26-06-2022
Make more fun with grenades.
Now u can select in the config normale grenades, or super charched grenades

# Previous update: 06-05-2022
- Changed Magnum 44 scoped entity
- Changed BTR-90 - BMP-2M - LAV-25 Ammo size, from 9 to 24
- Changed Phoenix - Barsuk Ammo size, from 9 to 24
- Changed Amtrav AAV-7a1 Ammo size, from 9 to 24
-- Updates the firedata file for the atack choppers, both AH1Z and MI28 have 45 rocketpods and 90 gunner cannon bullits

# Previous update: 30-04-2022
- ** Added BM-23 and M142
- 6 shells ? ,meh 24 !!!

# Previous update: 25-04-2022
- # Shotguns:
- Shotguns has massive increased ammo.

# Previous update: 05-04-2022
- **Added Sprut-SD and M1128 Stryker**
- Gravity ? ,what was that ??

# Previous update: 05-04-2022
- **Atack choppers has x3 more ammo**

# Previous update: 04-04-2022
- # Slightly changed the chopper, act more smoother
- Tweaks: Turned down Crossbow HE damage stuff..

# Previous update: 01-04-2022
- # Handguns weapons
- ADDED: All default handguns has increased ammo size
- M93r has unlimited ammo, but lower damage but bigger ammo clip

- # Common weapons
- ADDED: All shared weapons has increased ammo size

- # Assault class
- ADDED: All Asault weapons has increased ammo size

- # Engineer class
- ADDED: All Engineer weapons has increased ammo size !

- # Support class
- ADDED: All Support weapons has increased ammo size !

- # Recon class
- ADDED: All Sniper weapons has increased ammo size !

# Previous update: 30-03-2022
- CHANGED: 
- **Sorted all weapons in its class group**

# Previous update: 28-03-2022
- **TUGS** is now super charged with double sweep range ! 

# Previous update: 24-03-2022
- ADDED: Kinky Defib
- **Changed the module names**

# Previous update: 23-03-2022
- Changed: __init__ module loading procedure.
- Modules can now me turned on and off by setting true or false
- Or disabling them totaly.

- ADDED: EOD Bot has nut case repair range, and also shoots RPG
- EOD Bot is now gamemode depending

# Previous update: 20-03-2022
- CHANGED: TUGs now beeps faster

# Previous update: 15-03-2022
- In general: Enough changes made !

# Initial start: 10-03-2022
- Stripping down all unwanted stuff
- Give all modded items its own file structure

## Players
- You move now faster by 5% ,Running is like your are hunted by a bull.
- Stinger/Igla and Smaw/RPG are now available to both teams (MajorVictory87 unchanged)
- You are now a atletic swimmer !!

## Weapons
- **M93R** burst fire improved, lower damage but each clip has 16 bullits now
- UNLIMITED AMMO !!!!

## Crossbow
- Gravity WAS a biatch, hehe
- Damage is now smoll nuke area
- Bolts u can use is now gamemode depending

## Gadgets
- **Ammobag** heals and gives ammo, has a radius of 10 Meters - Moderate ammo refile speed - lower healing speed - You are now a medic in training !
- **Medicbag** heals and gives ammo, has a radius of 10 Meters - Moderate healing speed - lower ammo refil speed 
- Primary focus on getting a nice balance

## C4
- C4 u can use is now gamemode depending, 16 for conquest, 3 for TDM, 6 for rush and ctf

## M15 Mines
- M15 Mines u can use is now gamemode depending, 16 for conquest, 3 for TDM, 6 for rush and ctf

## Claymore
- Now explodes if enemy is in range, no longer directional, explosion buffed
- Increased MAG size to 8 and can place more !

## Grenades
- M67 Grenades u can use is now gamemode depending, 16 for conquest, 3 for TDM, 6 for rush and ctf

## SMAW
- SMAW is now gamemode depending, 40 for conquest, 6 for TDM, 10 for rush and ctf

## RPG-7
- RPG-7 is now gamemode depending, 40 for conquest, 6 for TDM, 10 for rush and ctf

## FGM148
- FGM148 Javelin is now gamemode depending, 40 for conquest, 60 for TDM, 10 for rush and ctf

## FIM92a
- FIM92a Stinger is now gamemode depending, 40 for conquest, 60 for TDM, 10 for rush and ctf

## Sa18IGLA
- Sa18IGLA Igla is now gamemode depending, 40 for conquest, 60 for TDM, 10 for rush and ctf

## Repair Tool
- No longer overheats, butane levels increased, range extended (\~20 meters but 1 meter in TDM mode and 3 meter in RUSH and CTF)
- Range u can use is now gamemode depending

## M224 Mortar
- Went to a few yoga classes and is now way more flexible (remember you can drop smokes by pressing 2 to switch projectiles)

## Vehicles
- **M1A2 Abrams** no damage mod, but no shell drop due no gravity ,time to live decreased to 4 seconds
- **T90** no damage mod, but no shell drop due no gravity ,time to live decreased to 4 seconds
- **Tunguska** cannon is more accurate, fire time doubled, finaly a nemesis against tanks !
- **LAV25** cannon is more accurate, fire time doubled, finaly a nemesis against tanks !
