# Original version:
## VU-MajorsMod MajorVictory87
- Stunts mod for Battlefield 3: Venice Unleashed
- https://github.com/MajorVictory/VU-MajorsMod

# Modded version:
## iamadeadpixel
- Make things go more fun and kinky
- This is a massive stripped down version, but only gadgets are pimped
- Tank, AA/Tunguska had some small modification

# WARNING
* DO NOT RUN THIS MOD WITH MAJORVICTORY87 ! IT WILL GIVE MASSIVE CONFLICTS !

# About me:
- Short: i am a lazy prick, not the pro in coding but am pretty good in understand the programming concept.
- so, copy past and adapt is pretty swag for me..

# Known isues
* This mod can give conflicts with the funbots mod, and nags the server to reboot.

# Last update: 27-03-2022
- CHANGED: MK3A1 Jackhammer
- **MK3A1 Jackhammer** Split all 4 ammo types in it own instance
- Slug ammo nag to spit a error message "cannot cast an instance that's lazy loaded to 'BulletEntityData'"
- For now i disabled the pimped Slug ammo instance, Sorry.

# Last update: 26-03-2022
- ADDED: Kinky MK3A1 Jackhammer
- **MK3A1 Jackhammer** Lethal as hell now !

- ADDED: Kinky Remington 870 MCS
- **Remington 870 MCS** Lethal as hell now !

- ADDED: Kinky DAO-12
- **DAO-12** Lethal as hell now !

- ADDED: Kinky M1014
- **M1014** Lethal as hell now !

- ADDED: Kinky Saiga20K
- **Saiga20K** Lethal as hell now !

- ADDED: Kinky Usas12
- **Usas12** increased ammo size - Lethal as hell now !

# Previous update: 25-03-2022
- ADDED: Kinky AS val
- **ASval** increased ammo size

- ADDED: Kinky aek971
- **aek971** increased ammo size

- ADDED: Kinky P90
- **P90** increased ammo size

- ADDED: Kinky Spas12
- **Spas12** increased ammo size - Lethal as hell now !

# Bug fix: 24-03-2022
- bEnable_claymore = true is correct.
- But if (bEnable_Claymore) wil not load the claymore module

# Previous update: 24-03-2022
- ADDED: Kinky Defib
- Now you also can cover the area with smoke !
- Changed the module names

# Previous update: 24-03-2022
- Added a small howto for enabling or disabling the modules
- Please scrol down for the information


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


## Enabling or disabling the modules how to
- Here i explane how u can enable or disable the modified modules.
#
- local bEnable_players = true
- if enabled (true)
- This let u turn on or off the modified player lua file
- Modification is made to walk and run speed (10% faster)
- Jumping slightly increased
#
- if Disabled (false)
- Default setings are active
#
#
- local bEnable_weapons = true
- if enabled (true)
- This let u turn on or off the modified player lua file
- Basicly not much (stripped down)
- But the Gun Master settings are boosted in the original mod weapons.lua file
#
- local bEnable_modules = true
- if enabled (true)
- This will turn the separate modules on
- This wil allow you to turn each module on or off (True or False)
#
- local bEnable_modules = false
- if enabled (false)
- This will turn the separate modules completly off
- If disabled,no gadget modifications are active.
#
#
- local bEnable_players = true
- local bEnable_weapons = true
# 
- local bEnable_modules = true
-             if (bEnable_modules) == (true) then dprint('modules config Enabled...')
-  bEnable_combobags = true
-  bEnable_C4 = true
-  bEnable_M15 = true
-  bEnable_EOD = true
-  bEnable_grenade = true
-  bEnable_claymore = true
-  bEnable_repairtool = true
-  bEnable_mortar = true
-  bEnable_tugs_sweep = true
-  bEnable_M93r = true
-  bEnable_crossbow = true
-  bEnable_rpg7 = true
-  bEnable_smaw = true
-  bEnable_stinger = true
-  bEnable_javelin = true
-  bEnable_igla = true
-  bEnable_Mobile_AA = true
-  bEnable_tank = true
-  bEnable_atack_chopper = false
-  bEnable_recon_chopper = false
-  bEnable_Z11_chopper = false
-  bEnable_sprut = false
- 	else
- 	    if (bEnable_modules) == (false) then dprint('Modules config Disabled...')
-  bEnable_combobags = false
-  bEnable_C4 = false
-  bEnable_M15 = false
-  bEnable_EOD = false
-  bEnable_grenade = false
-  bEnable_claymore = false
-  bEnable_repairtool = false
-  bEnable_mortar = false
-  bEnable_tugs_sweep = false
-  bEnable_M93r = false
-  bEnable_crossbow = false
-  bEnable_rpg7 = false
-  bEnable_smaw = false
-  bEnable_stinger = false
-  bEnable_javelin = false
-  bEnable_igla = false
-  bEnable_Mobile_AA = false
-  bEnable_tank = false
-  bEnable_atack_chopper = false
-  bEnable_recon_chopper = false
-  bEnable_Z11_chopper = false
-  bEnable_sprut = false
- end
- end
#
#
- Choppers and the sprut are DISABLED by default.
- This is work in progress ,so ,don not enable them !
