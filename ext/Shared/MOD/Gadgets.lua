MOD.Claymore = {
	-- Weapons/Gadgets/Claymore/Claymore
	["D9EAFB20-1357-11E0-B5EB-8AEE7FB8A0AF"] = {
		-- FiringFunctionData
		["526C78FC-D2CA-491B-9D18-1EDEFB10A762"] = {
			ammo = {
				numberOfMagazines = 32, -- 1
				autoReplenishDelay = 0.5, -- 5.0
				ammoBagPickupDelayMultiplier = 0.5 -- 5.0
			},
			fireLogic = {
				rateOfFire = 250.0 -- 300.0
			}
		}
	},
	-- Weapons/Gadgets/Claymore/Claymore_projectile
	["8709A814-1FF9-11E0-8A74-C88A4F19AAB4"] = {
		-- VeniceExplosionEntityData
		["5120E4F0-CD8C-4926-A45C-DA4460865508"] = {
			blastDamage = 200.0, -- 112.0
			blastRadius = 10.0, -- 4.3
			blastImpulse = 3000.0, -- 2000.0
			shockwaveDamage = 10.0, -- 1.0
			shockwaveRadius = 15.0, -- 6.0
			shockwaveImpulse = 1500.0, -- 500.0
			shockwaveTime = 0.0, -- 0.25
			triggerImpairedHearing = true, -- true
			isCausingSuppression = true -- true
		},
		-- HavokAsset (Weapons/Gadgets/Claymore/Claymore_projectile_Physics_0_Win32)
		["426247C9-56D7-FBA7-539C-F6C6BD7FD07A"] = {
			scale = 2.0 -- 1.0
		},
		-- ExplosionPackEntityData
		["AA3BA4F5-2F8E-65FD-016A-D1E6F8C870FB"] = {
			health = 5.0, -- 50.0
			maxCount = 32 -- 2
		}
	}
}
MOD.Ammobag = {
	-- Weapons/Gadgets/Ammobag/Ammobag_Projectile
	["04CD683B-1F1B-11E0-BBD1-F7235575FD24"] = {
		-- SupplySphereEntityData
		["4AE515CE-846D-6070-5F56-1285B7E8E187"] = {
			maxCount = 3, -- 1
			receivesExplosionDamage = false, -- true
			supplyData = {
				healing = {
					radius = 10.0, -- 3.5
					supplyIncSpeed = 3.0, -- 0.0
					supplyPointsRefillSpeed = 1.0, -- 0.0
					supplyPointsCapacity = 1.0 -- 0.0
				},
				ammo = {
					radius = 10.0, -- 3.5
					supplyIncSpeed = 1.5, -- 1.0
					infiniteCapacity = true, -- true
					supplyPointsRefillSpeed = 1.0, -- 0.0
					supplyPointsCapacity = 2.0 -- 7.0
				},
				teamSpecific = true -- false
			}
		}
	}
}
MOD.Medikit = {
	-- Weapons/Gadgets/Medicbag/MedicCrate_Projectile
	["1D6061B2-2234-11E0-92F5-C9B649EF6972"] = {
		-- SupplySphereEntityData
		["A867A678-615B-3FA6-7AF5-0DEE6ED69EA0"] = {
			maxCount = 3, -- 1
			receivesExplosionDamage = false, -- true
			supplyData = {
				healing = {
					radius = 10.0, -- 3.5
					supplyIncSpeed = 18.0, -- 12.0
					infiniteCapacity = true, -- true
					supplyPointsRefillSpeed = 1.0, -- 0.0
					supplyPointsCapacity = 1.0 -- 1.0
				},
				ammo = {
					radius = 10.0, -- 3.5
					supplyIncSpeed = 0.5, -- 0.0
					infiniteCapacity = true, -- false
					supplyPointsRefillSpeed = 1.0, -- 0.0
					supplyPointsCapacity = 1.0 -- 0.0
				},
				teamSpecific = true -- false
			}
		}
	}
}
MOD.Defibrillator = {
	-- Weapons/Gadgets/Defibrillator/Defibrillator
	["1B81A779-135F-11E0-B4A8-98C3FD926350"] = {
		-- FiringFunctionData
		["ECFCD019-F32C-4CBD-94CC-A69B3DF99AB2"] = {
			fireLogic = {
				rateOfFire = 250.0 -- 60.0
			}
		},
		-- BulletEntityData
		["1861554A-8C81-4944-96D1-7347494F7688"] = {
			timeToLive = 25.0 -- 1.0
		}
	}
}
MOD.EODBot = {
	-- Weapons/Gadgets/EODBot/EODBot
	["269BB4A2-0DC3-11E0-B817-B1885439A6BF"] = {
		-- FiringFunctionData
		["E280A780-82D0-4B1F-865D-E47865E2772C"] = {
			fireLogic = {
				-- This is the amount in pulse a rocket is shot and repairs
				rateOfFire = 400.0 -- 600.0
			},
			shot = {
				initialSpeed = {
					-- Firespeed ! but lowers repair speed dramaticly
					z = 200.0 -- 1.8
				}
			}
		},
		-- VehicleEntityData
		["563E0333-426F-19B5-D1D4-4795FEA0C78C"] = {
			lowHealthThreshold = 50.0, -- 50.0
			frontHealthZone = {
				maxHealth = 500.0 -- 100.0
			},
			rearHealthZone = {
				maxHealth = 500.0 -- 100.0
			},
			leftHealthZone = {
				maxHealth = 500.0 -- 100.0
			},
			rightHealthZone = {
				maxHealth = 500.0 -- 100.0
			},
			regenerationDelay = 5.0, -- 5.0
			regenerationRate = 50.0 -- 20.0
		},
		-- WheelConfigData
		["B494F998-D7BC-446C-9AE2-828C5B44E99A"] = {
			slopeGripMinAngle = 150.0, -- 89.0
			slopeGripMaxAngle = 150.0 -- 90.0
		},
		-- ChassisComponentData
		["9FF66CD4-2AF1-11CE-78ED-6EC576D7F93D"] = {
			transform = {
				left = {
					x = 3.0 -- 1.0
				},
				up = {
					y = 3.0 -- 1.0
				},
				forward = {
					z = 3.0 -- 1.0
				}
			}
		}
	}
}
MOD.Kornet = {
	-- Vehicles/common/WeaponData/Stationary_ATGM_Firing
	["7A2B3D4D-BBA0-427F-9F68-3A221BDCD128"] = {
		-- FiringFunctionData
		["66B7391F-0965-48D7-8783-0D6817C2A522"] = {
			ammo = {
				magazineCapacity = 12, -- 1
				numberOfMagazines = -1 -- -1
			},
			fireLogic = {
				reloadTime = 4.0 -- 7.5
			}
		}
	},
	-- Vehicles/common/WeaponData/Kornet_Projectile
	["EE3F34C9-7624-11E0-B5FB-8FD0F7AE8C7B"] = {
		-- VeniceExplosionEntityData
		["32896AAC-7EC0-4342-BE9D-C1A7C3C6269F"] = {
			blastDamage = 1200.0, -- 100.0
			blastRadius = 15.0, -- 1.2
			blastImpulse = 1000.0, -- 60.0
			shockwaveDamage = 25.0, -- 3.0
			shockwaveRadius = 15.0, -- 6.0
			shockwaveImpulse = 400.0, -- 150.0
			shockwaveTime = 0.0, -- 0.14
			triggerImpairedHearing = true, -- true
			isCausingSuppression = true -- true
		}
	}
}
MOD.MAV = {
	-- Weapons/Gadgets/MAV/MAV_PDA
	["1271F1BE-49D5-4599-AAD2-0D3BBAFB1EF7"] = {
		-- FiringFunctionData
		["0A6952EC-1EF1-4B3C-80DC-DEC527096066"] = {
			ammo = {
				ammoBagPickupDelayMultiplier = 30.0 -- 2.5
			}
		}
	},
	-- Weapons/Gadgets/MAV/MAV
	["FDE06FAE-1D63-11E0-8A6F-FC9481BB4D51"] = {
		-- RadarSweepComponentData
		["E4B296A4-7AEB-453E-9E71-AFC8F598A625"] = {
			controllableSweepRadius = 60.0, -- 30.0
			controllableSweepInterval = 1.5, -- 3.0
			sweepForMines = true, -- true
			mineSweepRadius = 60.0, -- 30.0
			mineSweepInterval = 1.5 -- 3.0
		},
		-- VeniceExplosionEntityData
		["7042EE46-C53D-4725-8445-946168B52C11"] = {
			blastDamage = 1200.0, -- 0.0
			blastRadius = 15.0, -- 0.5
			blastImpulse = 3000.0, -- 0.0
			shockwaveDamage = 1500.0, -- 0.0
			shockwaveRadius = 15.0, -- 1.0
			shockwaveImpulse = 1600.0, -- 0.0
			shockwaveTime = 0.0, -- 0.25
			triggerImpairedHearing = true, -- true
			isCausingSuppression = true -- false
		}
	},
	-- Weapons/Gadgets/MAV/MAV_EMP_Missile
	["2E77D41C-D22E-11E0-B78F-C6A4D11A79C9"] = {
		-- VeniceExplosionEntityData
		["9DC097F7-7DE7-4B27-A61B-61444EDD124E"] = {
			blastDamage = 1200.0, -- 500.0
			blastRadius = 15.0, -- 3.0
			blastImpulse = 3000.0, -- 0.0
			shockwaveDamage = 1500.0, -- 0.0
			shockwaveRadius = 15.0, -- 3.1
			shockwaveImpulse = 1600.0, -- 0.0
			shockwaveTime = 0.0, -- 0.25
			triggerImpairedHearing = true, -- false
			isCausingSuppression = true -- false
		}
	}
}
MOD.M224_Mortar = {
	-- Weapons/Gadgets/M224/M224_Projectile
	["5350B268-18C9-11E0-B820-CD6C272E4FCC"] = {
		-- VeniceExplosionEntityData
		["4827959A-8A3B-4C9F-994E-E54150AA565F"] = {
			blastDamage = 15000.0, -- 60.0
			blastRadius = 30.0, -- 5.0
			blastImpulse = 18000.0, -- 1500.0
			shockwaveDamage = 1000.0, -- 1.0
			shockwaveRadius = 30.0, -- 8.0
			shockwaveImpulse = 15000.0, -- 300.0
			shockwaveTime = 0.15, -- 0.25
			triggerImpairedHearing = true, -- true
			isCausingSuppression = true -- true
		},
		-- MissileEntityData
		["145C4108-7660-1329-4599-4402DA4801A0"] = {
			initialSpeed = 500.0, -- 350.0
			timeToLive = 20.0, -- 5.0
			detonateOnTimeout = true -- false
		}
	},
	-- Weapons/Gadgets/M224/M224_Deployed
	["A381F7C8-18DD-11E0-9A44-B310CA9F1EC8"] = {
		-- FiringFunctionData (Primary: Explosion)
		["060D79AA-4FFB-4087-9D29-1D7015945B8A"] = {
			ammo = {
				magazineCapacity = 25 -- 1
			},
			fireLogic = {
				rateOfFire = 20.0 -- 300.0
			}
		},
		-- FiringFunctionData (Secondary: Smoke)
		["19EAD11D-13BA-481A-9F5D-8B11D530AB55"] = {
			ammo = {
				magazineCapacity = 25 -- 1
			},
			fireLogic = {
				rateOfFire = 20.0 -- 300.0
			}
		},
		-- ChildRotationBodyData
		["047678CD-F731-4B09-A4F1-DBFE526CB6E6"] = {
			angularMomentumMultiplier = 750.0, -- 100.0
			angularConstraintMin = -360.0, -- -45.0
			angularConstraintMax = 360.0, -- 44.0
		},
		-- ChildRotationBodyData
		["D0E48E36-0DEC-46CB-8981-BA3C281DDD9A"] = {
			angularMomentumMultiplier = 750.0, -- 150.0
			angularConstraintMin = -5.0, -- -9.0
			angularConstraintMax = 10.0, -- 14.5
		},
		-- ChildRotationBodyData
		["B4D5D0FF-9A9A-4205-8FD1-1F9188F62F45"] = {
			angularMomentumMultiplier = -750.0, -- -150.0
			angularConstraintMin = -26.0, -- -16.0
			angularConstraintMax = 60.0, -- 25.0
		}
	},
	-- FX/Vehicles/Misc/FX_40mm_Smoke
	["6A2C27D9-D455-458D-A542-C212C6F8F69C"] = {
		-- EmitterEntityData
		["7D0007C8-A755-41BB-A1F5-8455C31B2258"] = {
			-- Scale the Mortar Smoke size
			transform = {
				left = {
					x = 2.5 -- 1.0
				},
				up = {
					y = 2.5 -- 1.0
				},
				forward = {
					z = 2.5 -- 1.0
				}
			}
		}
	}
}
MOD.Repairtool = {
	-- Weapons/Gadgets/Repairtool/Repairtool
	["9D6458CD-2955-11E0-864C-EDEE51946146"] = {
		-- FiringFunctionData
		["4D509E54-0572-4D7D-BF49-3D83AFCFD73D"] = {
			shot = {
				initialSpeed = {
					z = 20.0 -- 1.8
				},
				numberOfBulletsPerShell = 3 -- 1
			},
			overHeat = {
				heatPerBullet = 0.0 -- 0.033
			}
		}
	}
}
MOD.Tugs = {
	-- Weapons/Gadgets/T-UGS/T-UGS_Vehicle
	["C6AC3720-4E44-11E0-B74F-973632ECCDB7"] = {
		-- RadarSweepComponentData
		["6AD11C63-B795-4233-B943-C6DE347E26A7"] = {
			controllableSweepRadius = 60.0, -- 30.0
			controllableSweepInterval = 1.5, -- 2.0
			sweepForMines = true, -- true
			mineSweepRadius = 60.0, -- 30.0
			mineSweepInterval = 1.5 -- 2.0
		}
	},
	-- Weapons/Gadgets/T-UGS/T-UGS
	["483F1918-1815-11E0-8BA5-9B1E2E41035E"] = {
		-- VehicleProjectileEntityData
		["E8BDE781-EBCA-4FFB-8219-6DCAC05DE5AE"] = {
			maxCount = 5 -- 1
		}
	}
}
