MOD.AC130 = {
	-- Vehicles/common/WeaponData/Gunship_AutoCannon_25mm_Firing
	["D1507C85-243B-45D5-9378-9ADE0C936909"] = {
		-- FiringFunctionData
		["1EBA0568-FB66-4BCA-BC5D-D2C43FD0ECF6"] = {
			ammo = {
				magazineCapacity = 90 -- 30
			},
			fireLogic = {
				reloadTime = 4.0 -- 2.0
			}
		},
		-- VeniceExplosionEntityData
		["18003E66-D168-4E53-BCDD-BCAB3FEF8419"] = {
			blastDamage = 120.0, -- 35.0
			blastRadius = 9.0, -- 3.0
			blastImpulse = 8000.0, -- 5000.0
			shockwaveDamage = 8.0, -- 1.0
			shockwaveRadius = 15.0, -- 7.0
			shockwaveImpulse = 30.0, -- 10.0
			shockwaveTime = 0.1, -- 0.5
			triggerImpairedHearing = true, -- true
			isCausingSuppression = true -- true
		}
	},
	-- Vehicles/common/WeaponData/Gunship_60mm_Cannon_Firing
	["0D139F47-C360-428C-A91B-5B247F236F0F"] = {
		-- VeniceExplosionEntityData
		["5A903893-799A-4B52-8A5C-6AE373D7038C"] = {
			blastDamage = 600.0, -- 150.0
			blastRadius = 40.0, -- 10.0
			blastImpulse = 10000.0, -- 5000.0
			shockwaveDamage = 50.0, -- 1.0
			shockwaveRadius = 60.0, -- 15.0
			shockwaveImpulse = 5000.0, -- 2500.0
			shockwaveTime = 0.1, -- 0.14
			triggerImpairedHearing = true, -- true
			isCausingSuppression = true -- true
		}
	},
	-- Vehicles/common/WeaponData/Vulcan_Cannon_Firing_AC130
	["B1481690-4049-4F83-A9D7-3DCDB253C309"] = {
		-- FiringFunctionData
		["3435DF74-324D-4A75-9A48-D1C2162C37FB"] = {
			ammo = {
				magazineCapacity = 500, -- -1
				numberOfMagazines = -1, -- -1
				ammoPickupMinAmount = 100, -- 0
				ammoPickupMaxAmount = 0 -- 0
			},
			dispersion = {
				[1] = {
					minAngle = 0.05, -- 0.2
					maxAngle = 0.08, -- 1.0
					increasePerShot = 0.0005, -- 0.153
					decreasePerSecond = 0.025 -- 5.0
				}
			},
			shot = {
				initialSpeed = {
					z = 600.0 -- 900.0
				}
			},
			fireLogic = {
				rateOfFire = 2000.0, -- 2000.0
				reloadDelay = 2.0, -- 0.0
				reloadTime = 3.5, -- 3.6
			},
			overHeat = {
				heatPerBullet = 0.009 -- 0.014
			}
		},
		-- BulletEntityData
		["8AD9C100-CC74-46C3-901E-443C151CD413"] = {
			impactImpulse = 100.0, -- 50.0
			startDamage = 10.0, -- 10.0
			endDamage = 15.0, -- 10.0
			initialSpeed = 600.0, -- 350.0
			timeToLive = 1.0 -- 1.2
		}
	},
	-- Vehicles/common/WeaponData/Vulcan_Cannon_Firing
	["15A6F4C7-1700-432B-95A7-D5DE8A058ED2"] = {
		-- BulletEntityData
		["66C5F2C0-E97D-4850-900C-89D655E7E354"] = {
			impactImpulse = 100.0, -- 50.0
			startDamage = 10.0, -- 10.0
			endDamage = 15.0, -- 10.0
			initialSpeed = 600.0, -- 350.0
			timeToLive = 1.0 -- 1.2
		}
	}
}
