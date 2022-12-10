Config = {
	Enabled = true,
	ByFileName = {
		PlayerMovement = true,
		SteadyScopes = true,
		Assault = {
			-- tweak M320 & M26
			Gadgets = true,
			-- tweak all assault rifles
			Weapons = true,
			-- tweak all assault rifles recoil
			Recoil = true
		},
		-- tweak gunship
		AC130 = true,
		AirVehicles = {
			-- tweak heli movement
			Movement = true,
			-- tweak heli & jet weapons
			Weapons = true
		},
		-- tweak vehicles
		LandVehicles = true,
		PDWs = {
			-- tweak PDWs
			Weapons = true,
			-- tweak PDWs Recoil
			Recoil = true
		},
		-- tweak Crossbows
		Crossbows = {
			-- Only one of them should be active
			Default = true,
			Kinky = false
		},
		Engineer = {
			-- tweak Engineer rifles
			Weapons = true,
			-- tweak Engineer rifles recoil
			Recoil = true
		},
		-- tweak all type of gadgets (except M320, M26 and C4)
		Gadgets = true,
		Pistols = {
			-- tweak all handguns/pistols
			Weapons = true,
			-- tweak all pistols recoil
			Recoil = true
		},
		Snipers = {
			-- tweak all sniper rifles
			Weapons = true,
			-- tweak all sniper rifles recoil
			Recoil = true
		},
		LMGs = {
			-- tweak all LMGs
			Weapons = true,
			-- tweak all LMGs Recoil
			Recoil = true,
		},
		Shotguns = {
			-- tweak all shotgun bullet types
			Bullets = true,
			-- tweak all shotguns
			Weapons = true,
			-- tweak recoil of some shotguns
			Recoil = true
		},
		-- tweak C4
		C4 = {
			-- Only one of them should be active
			Extended = true,
			Pimped = false
		},
		-- tweak Grenade
		Grenade = {
			-- Only one of them should be active
			Extended = true,
			Pimped = false
		},
		-- tweak M15 Mine
		M15_Mine = {
			-- Only one of them should be active
			Extended = true,
			Pimped = false
		},
		-- tweak Javelin
		Javelin = {
			-- Only one of them should be active
			Extended = true,
			Pimped = false
		},
		-- tweak RPG
		RPG = {
			-- Only one of them should be active
			Extended = true,
			Pimped = false
		},
		-- tweak SMAW
		SMAW = {
			-- Only one of them should be active
			Extended = true,
			Pimped = false
		},
		-- tweak Stinger & Igla
		AA_Weapon_Missile = {
			-- Only one of them should be active
			Extended = true,
			Pimped = false
		}
	},
	ByName = {
		PlayerMovement = true,

		-- SteadyScopes
		X10Zoom = true,
		X10ENVG = true,
		X12Zoom = true,
		X1ENVG = true,
		X2Zoom = true,
		X20ENVG_COOP = true,
		X20Zoom = true,
		X3_4Zoom = true,
		X4Zoom = true,
		X6Zoom = true,
		X6ENVG = true,
		X7Zoom = true,
		DefaultATSights = true,
		DefaultBase = true,
		DefaultIronSights = true,
		X2FastZoom = true,
		FastIronSights = true,

		-- Assault Rifles
		AEK971 = true,
		AK74 = true,
		AN94 = true,
		AUGA3 = true,
		F2000 = true,
		FAMAS = true,
		G3A3 = true,
		KH2002 = true,
		L85A2 = true,
		M16A4 = true,
		M416 = true,
		SCARL = true,

		-- Assault Rifle Recoils
		AEK971_Recoil = true,
		AK74_Recoil = true,
		AN94_Recoil = true,
		AUGA3_Recoil = true,
		F2000_Recoil = true,
		FAMAS_Recoil = true,
		G3A3_Recoil = true,
		KH2002_Recoil = true,
		L85A2_Recoil = true,
		M16A4_Recoil = true,
		M416_Recoil = true,
		SCARL_Recoil = true,

		-- Engineer Rifles
		A91 = true,
		ACWR = true,
		AKS74U = true,
		G36C = true,
		G53 = true,
		M4A1 = true,
		MTAR = true,
		QBZ95 = true,
		SCARH = true,
		SG553 = true,

		-- Engineer Rifles Recoil
		A91_Recoil = true,
		ACWR_Recoil = true,
		AKS74U_Recoil = true,
		G36C_Recoil = true,
		G53_Recoil = true,
		M4A1_Recoil = true,
		MTAR_Recoil = true,
		QBZ95_Recoil = true,
		SCARH_Recoil = true,
		SG553_Recoil = true,

		-- LMGs
		L86A2 = true,
		LSAT = true,
		M240B = true,
		M249 = true,
		M27IAR = true,
		M60E4 = true,
		MG36 = true,
		PKP = true,
		QBB95 = true,
		RPK74M = true,
		Type88 = true,

		-- LMGs Recoil
		L86A2_Recoil = true,
		LSAT_Recoil = true,
		M240B_Recoil = true,
		M249_Recoil = true,
		M27IAR_Recoil = true,
		M60E4_Recoil = true,
		MG36_Recoil = true,
		PKP_Recoil = true,
		QBB95_Recoil = true,
		RPK74M_Recoil = true,
		Type88_Recoil = true,

		-- Sniper Rifles
		JNG90 = true,
		L96 = true,
		M39EBR = true,
		M40A5 = true,
		M417 = true,
		M98B = true,
		MK11 = true,
		QBU88 = true,
		SKS = true,
		SV98 = true,
		SVD = true,

		-- Sniper Rifles Recoil
		JNG90_Recoil = true,
		L96_Recoil = true,
		M39EBR_Recoil = true,
		M40A5_Recoil = true,
		M417_Recoil = true,
		M98B_Recoil = true,
		MK11_Recoil = true,
		QBU88_Recoil = true,
		SKS_Recoil = true,
		SV98_Recoil = true,
		SVD_Recoil = true,

		-- PDWs
		ASVAL = true,
		MP5K = true,
		MP7 = true,
		P90 = true,
		PDWR = true,
		PP19 = true,
		PP2000 = true,
		UMP45 = true,

		-- PDWs Recoil
		ASVAL_Recoil = true,
		MP5K_Recoil = true,
		MP7_Recoil = true,
		P90_Recoil = true,
		PDWR_Recoil = true,
		PP19_Recoil = true,
		PP2000_Recoil = true,
		UMP45_Recoil = true,

		-- Shotguns
		DAO12 = true,
		M1014 = true,
		MK3A1 = true,
		Remington_870MCS = true,
		SAIGA12K = true,
		SPAS12 = true,
		USAS12 = true,

		-- Shotgun Recoil
		MK3A1_Recoil = true,
		USAS12_Recoil = true,

		-- Shotgun Bullets
		Shotgun_Buckshot = true,
		Shotgun_Flechette = true,
		Shotgun_Frag = true,
		Shotgun_Frag_Pump = true,
		Shotgun_Slug = true,
		Shotgun_Slug_Pump = true,

		-- Pistols
		G18 = true,
		M1911 = true,
		M9 = true,
		M93R = true,
		MAGNUM44 = true,
		MP412REX = true,
		MP443 = true,

		-- Pistols Recoil
		G18_Recoil = true,
		M1911_Recoil = true,
		M9_Recoil = true,
		M93R_Recoil = true,
		MAGNUM44_Recoil = true,
		MP412REX_Recoil = true,
		MP443_Recoil = true,

		-- Gadgets
		Ammobag = true,
		Claymore = true,
		Defibrillator = true,
		EODBot = true,
		Kornet = true,
		M224_Mortar = true,
		MAV = true,
		Medikit = true,
		Repairtool = true,
		Tugs = true,

		C4 = true,
		Grenades = true,
		M15_Mine = true,
		Javelin = true,
		RPG = true,
		SMAW = true,
		AA_Weapon_Missile = true,
		Igla = true,
		Stinger = true,

		-- Assault Gadgets
		M26_BUCKSHOT = true,
		M26_FLECHETTE = true,
		M26_FRAG = true,
		M26_SLUG = true,
		M320_HE = true,
		M320_LVG = true,
		M320_SHG = true,
		M320_SMK = true,

		-- Crossbows
		Crossbow = true,
		Crossbow_BA = true,
		Crossbow_Default = true,
		Crossbow_HE = true,
		Crossbow_Scan = true,

		-- AirVehicles Movement
		AH1Z = true,
		AH6 = true,
		KA60 = true,
		MI28 = true,
		VENOM = true,
		Z11W = true,

		-- AirVehicles Weapons
		RocketPods_AttackHeli = true,
		AH1Z_Gunner = true,
		MI28_Gunner = true,
		Minigun_ScoutHeli = true,
		TV_Missile = true,
		Heat_Seekers = true,

		-- AC130 Gunship
		AC130 = true,

		-- LandVehicles
		RocketPods_Transport = true,
		MobileAA = true,
		RHIB = true,
		M1ABRAMS = true,
		T90 = true,
		LAV25 = true,
		LAV_AD = true,
		HumveeArmored = true,
		GrowlerITV = true,
		QuadBike = true,
		DirtBike = true,
		VDV_Buggy = true,
		DPV_Buggy = true,
		SkidLoader = true,
		MobileArtillery = true,
		STAR_1466 = true,
		HIMARS = true,
		IFV_Bullets = true,
		M1128_Stryker = true,
		SPRUT_SD = true,
		TransportModified = true,
		AAV_7A1 = true,
		Mounted_Guns = true
	}
}
