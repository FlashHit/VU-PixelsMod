MOD.Javelin = {
	-- Weapons/FGM148/FGM148
	["F4C6BD34-0D15-11E0-99FE-EA6897C76A7E"] = {
		-- LockingWeaponData
		["F3150F93-C300-43A1-96AA-9453DBD159E8"] = {
			isGuided = true, -- false
			isGuidedWhenZoomed = true, -- false
			fireOnlyWhenLockedOn = true -- true
		},
		-- LockingControllerData
		["4A956A3A-CEA0-455C-A8DE-674A6940407D"] = {
			zoomLevelLock = {
				[2] = {
					lockType = LockType.LockAlways -- LockType.LockOnLaserPainted
				}
			},
			lockTime = 0.5, -- 1.5
			releaseTime = 0.2, -- 1.0
			releaseOnNewTargetTime = 0.5, -- 0.5
			rayLength = 750.0, -- 500.0
			lockOnVisibleTargetsOnly = true, -- false
			acceptanceAngle = 2.0, -- 5.0
			lockOnEmptyVehicles = false -- true
		},
		-- FiringFunctionData
		["C1CE96A7-C9DD-43B3-822F-1B5BAC0F331A"] = {
			ammo = {
				magazineCapacity = 1, -- 1
				numberOfMagazines = 20, -- 2
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 2.5
			}
		}
	},
	-- Weapons/FGM148/FGM148_Projectile
	["742C0343-1E94-11E0-833E-D522F39B6476"] = {
		-- VeniceExplosionEntityData
		["811A9EA4-4B44-4D91-B0D4-12B2C5CD12A8"] = {
			blastDamage = 500.0, -- 350.0
			blastRadius = 9.0, -- 4.5
			blastImpulse = 7000.0, -- 5000.0
			shockwaveDamage = 4.0, -- 1.0
			shockwaveRadius = 12.0, -- 6.0
			shockwaveImpulse = 3000.0, -- 1500.0
			shockwaveTime = 0.0 -- 0.25
		}
	}
}
