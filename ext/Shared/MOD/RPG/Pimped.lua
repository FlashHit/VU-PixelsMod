MOD.RPG = {
	-- Weapons/RPG7/RPG7Projectile
	["6C857FD9-6FB3-11DE-B35E-864CF572E1C4"] = {
		-- MissileEntityData
		["CDD3A384-8243-A258-E23D-239CC0D52698"] = {
			initialSpeed = 500.0, -- 350.0
			timeToLive = 8.0, -- 10.0
			gravity = 0.0 -- -1.5
		},
		-- VeniceExplosionEntityData
		["663BA5C9-7511-4F7F-8736-8FE6172F28DE"] = {
			blastDamage = 250.0, -- 112.0
			blastRadius = 8.0, -- 4.0
			blastImpulse = 4000.0, -- 2000.0
			shockwaveDamage = 5.0, -- 1.0
			shockwaveRadius = 20.0, -- 10.0
			shockwaveImpulse = 1500.0, -- 500.0
			shockwaveTime = 0.25 -- 0.25
		}
	},
	-- Weapons/RPG7/RPG7
	["E7F8EC1A-E8F5-11DF-AC96-84E6B0EFF32E"] = {
		-- FiringFunctionData
		["7584D16E-6B77-4A7B-BEEE-15DA5EF98E2E"] = {
			ammo = {
				magazineCapacity = 1, -- 1
				numberOfMagazines = 20, -- 4
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 2.5
			}
		}
	}
}
