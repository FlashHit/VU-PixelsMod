MOD.Grenades = {
	-- Weapons/M67/M67_Projectile
	["CF031A0B-2492-11E0-85B7-F234A394297F"] = {
		-- GrenadeEntityData
		["326152E6-0F84-430D-D2E3-19EBDA8266C4"] = {
			timeToLive = 3.0, -- 3.6
			gravity = -3.5 -- -9.8
		}
	},
	-- Weapons/M67/M67
	["FFF5DB09-E74B-11DF-9B5E-86394B544891"] = {
		-- FiringFunctionData
		["04E1FA90-5B6E-4316-862C-15EB89652441"] = {
			ammo = {
				magazineCapacity = 1, -- 1
				numberOfMagazines = 32, -- 1
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 5.0
			},
			shot = {
				initialSpeed = {
					z = 25.0 -- 18.0
				}
			}
		}
	}
}
