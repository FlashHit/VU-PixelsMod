MOD.SMAW = {
	-- Weapons/SMAW/SMAW_HE_Projectile
	["168F529B-17F6-11E0-8CD8-85483A75A7C5"] = {
		-- MissileEntityData
		["168F529C-17F6-11E0-8CD8-85483A75A7C5"] = {
			initialSpeed = 500.0, -- 350.0
			timeToLive = 8.0, -- 10.0
			gravity = 0.0 -- -1.5
		},
		-- VeniceExplosionEntityData
		["F88F469B-E075-4770-AC03-42D9320CF000"] = {
			blastDamage = 250.0, -- 112.0
			blastRadius = 8.0, -- 4.0
			blastImpulse = 4000.0, -- 2000.0
			shockwaveDamage = 5.0, -- 1.0
			shockwaveRadius = 20.0, -- 10.0
			shockwaveImpulse = 1500.0, -- 500.0
			shockwaveTime = 0.25 -- 0.25
		}
	},
	-- Weapons/SMAW/SMAW
	["BCE98CA0-17EC-11E0-8CD8-85483A75A7C5"] = {
		-- FiringFunctionData
		["AB8577C5-D5F9-4A17-BEB2-2E153E171630"] = {
			ammo = {
				magazineCapacity = 1, -- 1
				numberOfMagazines = 20, -- 4
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 2.5
			}
		}
	}
}
