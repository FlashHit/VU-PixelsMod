MOD.M15_Mine = {
	-- Weapons/Gadgets/M15/M15
	["B38C8E78-EBE6-11DF-8768-F4F1C9378C27"] = {
		-- FiringFunctionData
		["D1110C87-5913-43A4-A47F-04AD47B0C611"] = {
			ammo = {
				numberOfMagazines = 20, -- 3
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 2.5
			},
			fireLogic = {
				rateOfFire = 250.0 -- 300.0
			}
		}
	},
	-- Weapons/Gadgets/M15/M15Projectile
	["49F4451D-D64E-45E5-BC96-B39CE8BC4D10"] = {
		-- ExplosionPackEntityData
		["D936971A-354B-49B7-BCCA-4FE01B68D395"] = {
			maxCount = 40, -- 6
			maxAttachableInclination = 180.0, -- 15.0
			health = 1.0 -- 50.0
		},
		-- VeniceExplosionEntityData
		["EA440D5D-925C-4239-8463-4FE3EAD30C5F"] = {
			blastDamage = 1500.0, -- 500.0
			blastRadius = 15.0, -- 5.0
			blastImpulse = 12000.0, -- 6000.0
			shockwaveDamage = 100.0, -- 1.0
			shockwaveRadius = 15.0, -- 6.0
			shockwaveImpulse = 4000.0, -- 2000.0
			triggerImpairedHearing = true, -- true
			isCausingSuppression = true -- true
		}
	}
}
