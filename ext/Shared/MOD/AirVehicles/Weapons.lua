MOD.RocketPods_AttackHeli = {
	-- Vehicles/common/WeaponData/RocketPods_Firing
	["173E068D-F66C-4A79-9D6C-7AB0ED3175E4"] = {
		-- FiringFunctionData
		["3EE6789F-4113-42BA-B8FE-79DD5EF89FB1"] = {
			ammo = {
				magazineCapacity = 45, -- 14
				numberOfMagazines = -1 -- -1
			}
		}
	}
}
MOD.AH1Z_Gunner = {
	-- Vehicles/common/WeaponData/Heli_GunnerCannon_Firing
	["0A232494-FB58-496E-BF30-FD9B39E12008"] = {
		-- FiringFunctionData
		["E06B6CCE-F5A3-40E6-A41F-D442AC4D7434"] = {
			ammo = {
				magazineCapacity = 90, -- 30
				numberOfMagazines = -1 -- -1
			}
		}
	}
}
MOD.MI28_Gunner = {
	-- Vehicles/common/WeaponData/Heli_AutoCannon_Firing
	["0D61B717-18D3-4295-9070-9AB925B1C784"] = {
		-- FiringFunctionData
		["CAB59337-47AF-4742-9CEC-3EEA7EA20E92"] = {
			ammo = {
				magazineCapacity = 90, -- 30
				numberOfMagazines = -1 -- -1
			}
		}
	}
}
MOD.Minigun_ScoutHeli = {
	-- Vehicles/common/WeaponData/spec/Mounted_Minigun_Firing_AH6
	["5490C4AB-A322-3F65-9680-CF9CD9D32705"] = {
		-- FiringFunctionData
		["FB438F0C-EB84-A96A-4836-F6C624FE21E0"] = {
			ammo = {
				magazineCapacity = 1000, -- -1
				numberOfMagazines = -1 -- -1
			}
		}
	}
}
MOD.TV_Missile = {
	-- Vehicles/common/WeaponData/AGM-144_Hellfire_TV
	["1DF6F9A2-8BA1-11E0-9EF7-9C4CA6DBFDF3"] = {
		-- VeniceExplosionEntityData
		["D8486FE8-ABF1-45B7-822A-41C4F492CF77"] = {
			blastDamage = 1200.0, -- 600.0
			blastRadius = 15.0, -- 4.5
			blastImpulse = 300.0, -- 60.0
			shockwaveDamage = 25.0, -- 1.0
			shockwaveRadius = 15.0, -- 6.0
			shockwaveImpulse = 300.0, -- 150.0
			shockwaveTime = 0.0, -- 0.14
			triggerImpairedHearing = true, -- true
			isCausingSuppression = true -- true
		}
	}
}
MOD.Heat_Seekers = {
	-- Vehicles/common/WeaponData/HeatSeeking_Missile_Firing
	["085E96E4-5C8C-4A79-A819-1D4B0B4137E7"] = {
		-- FiringFunctionData
		["63E6F602-7274-4AB8-8CFB-E2C00EAF2A73"] = {
			ammo = {
				magazineCapacity = 6, -- 1
				numberOfMagazines = -1 -- -1
			},
			fireLogic = {
				reloadTime = 4.0 -- 8.0
			}
		}
	},
	-- Vehicles/common/WeaponData/spec/HeatSeeking_Missile_Firing_Stinger
	["1290B4D8-B303-64CD-12C6-1BD1D852D4C5"] = {
		-- FiringFunctionData
		["7559DD8D-CFD0-819B-31E7-5B5D72853110"] = {
			ammo = {
				magazineCapacity = 6, -- 1
				numberOfMagazines = -1 -- -1
			},
			fireLogic = {
				reloadTime = 4.0 -- 8.0
			}
		}
	},
	-- Vehicles/common/WeaponData/spec/HeatSeeking_Missile_Firing_Archer
	["C01964E4-CD56-7C2A-BFEE-5391515CB973"] = {
		-- FiringFunctionData
		["DF898A20-E1DC-7AB6-824C-7E1EE3B6BE0B"] = {
			ammo = {
				magazineCapacity = 6, -- 1
				numberOfMagazines = -1 -- -1
			},
			fireLogic = {
				reloadTime = 4.0 -- 8.0
			}
		}
	}
}
