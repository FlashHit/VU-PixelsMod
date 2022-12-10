MOD.C4 = {
	-- Weapons/Gadgets/C4/C4
	["90D317AC-2554-11E0-9BE1-9E3A551FF0D1"] = {
		-- FiringFunctionData
		["6CF717B6-188A-4AE7-A1D2-CC1A2333C0D7"] = {
			ammo = {
				numberOfMagazines = 32, -- 3
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 2.5
			},
			fireLogic = {
				rateOfFire = 250.0 -- 90.0
			}
		}
	},
	-- Weapons/Gadgets/C4/C4_Projectile
	["910AD7C5-2558-11E0-96DC-FF63A5537869"] = {
		-- ExplosionPackEntityData
		["09DCA5BB-BB2E-4EC6-B07F-5F74863EB458"] = {
			maxCount = 32, -- 6
			health = 1.0 -- 15.0
		},
		-- VeniceExplosionEntityData
		["5FE6E2AD-072E-4722-984A-5C52BC66D4C1"] = {
			blastDamage = 1500.0, -- 500.0
			blastRadius = 15.0, -- 5.0
			blastImpulse = 6000.0, -- 6000.0
			shockwaveDamage = 15.0, -- 1.0
			shockwaveRadius = 15.0, -- 6.0
			shockwaveImpulse = 4000.0, -- 2000.0
			shockwaveTime = 0.0, -- 0.14
			triggerImpairedHearing = false, -- true
			isCausingSuppression = false -- true
		}
	}
}
