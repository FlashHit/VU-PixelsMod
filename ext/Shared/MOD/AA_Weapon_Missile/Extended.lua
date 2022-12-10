-- Stinger and Igla
MOD.AA_Weapon_Missile = {
	-- Shared between Stinger and Igla
	-- Weapons/FIM92A/FIM92_Projectile
	["38BED001-2A1F-11E0-BE1A-979F86D1AB92"] = {
		-- MissileEntityData
		["5DFC8761-7C3F-26EB-79F0-A40D780C5A82"] = {
			initialSpeed = 200.0, -- 350.0
			timeToLive = 60.0, -- 10.0
			engineStrength = 70.0, -- 35.0
			maxSpeed = 150.0 -- 200.0
		},
		-- LockingControllerData
		["DFA0EF35-6E53-477C-9CB9-38B271AFC18C"] = {
			rayLength = 1500.0 -- 1000.0
		},
		-- VeniceExplosionEntityData
		["2ABC6E49-3D6E-4578-B64B-7BED0960AB5D"] = {
			blastDamage = 250.0, -- 0.0
			blastRadius = 8.0, -- 4.5
			blastImpulse = 4000.0, -- 150.0
			shockwaveDamage = 5.0, -- 1.0
			shockwaveRadius = 20.0, -- 6.0
			shockwaveImpulse = 3000.0, -- 1500.0
			shockwaveTime = 0.25 -- 0.1
		}
	}
}
MOD.Igla = {
	-- Weapons/Sa18IGLA/Sa18IGLA
	["B412A569-1413-11E0-A672-E0A480096E27"] = {
		-- LockingWeaponData
		["BA1B7D20-46F4-40E2-9835-B963CFF07527"] = {
			isGuided = true, -- false
			isGuidedWhenZoomed = true, -- false
			fireOnlyWhenLockedOn = true -- true
		},
		-- LockingControllerData
		["CDC3C3F1-C14A-43D4-B97B-68C286DEFEA8"] = {
			zoomLevelLock = {
				[2] = {
					lockType = LockType.LockAlways -- LockType.LockOnHeat
				}
			},
			lockTime = 0.5, -- 1.25
			releaseTime = 0.2, -- 0.5
			releaseOnNewTargetTime = 0.5, -- 1.5
			rayLength = 750.0, -- 400.0
			lockOnVisibleTargetsOnly = true, -- true
			acceptanceAngle = 2.0, -- 5.0
			lockOnEmptyVehicles = false -- false
		},
		-- FiringFunctionData
		["CE53E1AB-2B5B-4844-97B7-5A4990EB3913"] = {
			ammo = {
				magazineCapacity = 1, -- 1
				numberOfMagazines = 20, -- 3
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 2.5
			}
		}
	}
}
MOD.Stinger = {
	-- Weapons/FIM92A/FIM92A
	["28C2561D-EC16-11DF-BA9E-F3DCE5C70CB9"] = {
		-- LockingWeaponData
		["AC50A504-5962-4F7F-84F8-640BCC36F73B"] = {
			isGuided = true, -- false
			isGuidedWhenZoomed = true, -- false
			fireOnlyWhenLockedOn = true -- true
		},
		-- LockingControllerData
		["41810442-CE99-42F8-96C4-FDC50F349DC4"] = {
			zoomLevelLock = {
				[2] = {
					lockType = LockType.LockAlways -- LockType.LockOnHeat
				}
			},
			lockTime = 0.5, -- 1.25
			releaseTime = 0.2, -- 0.5
			releaseOnNewTargetTime = 0.5, -- 1.5
			rayLength = 750.0, -- 400.0
			lockOnVisibleTargetsOnly = true, -- true
			acceptanceAngle = 2.0, -- 10.0
			lockOnEmptyVehicles = false -- false
		},
		-- FiringFunctionData
		["2EEC7BB1-BFD2-41C5-AFEF-C36A61BB9E6D"] = {
			ammo = {
				magazineCapacity = 1, -- 1
				numberOfMagazines = 20, -- 3
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 2.5
			}
		}
	}
}
