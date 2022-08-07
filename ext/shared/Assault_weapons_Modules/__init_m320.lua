-- M320 LVG - HE combo
   local partition_40mmshg_grenade = Guid ("0782833F-E28E-417F-8D25-350D504EBEAA")
   local instance_40mmshg_grenade = Guid ("B287AFC7-2597-4C5A-A2B8-D0F8D43018C4")

   local partition_40mmlvg_grenade = Guid ("FD79A08F-F108-4751-B2C0-6C47397133B5")
   local instance_40mmlvg_grenade = Guid ("393E4094-C2A2-4DF2-B977-F82E6974A8CB")

   local partition_40mmhe_grenade = Guid ("D99AA0F1-2694-40C8-91EB-5235FFEBAC71")
   local instance_40mmhe_grenade = Guid ("99CE0D31-86A1-4478-9B9E-CC1EFD072AB9")

   local partition_40mmsmk_grenade = Guid ("049734EF-C380-46D3-91AE-BF4B594077B6")
   local instance_40mmsmk_grenade = Guid ("5BA41C7A-97CE-4946-8B1D-C873B1ABF6EA")

ResourceManager:RegisterInstanceLoadHandler(partition_40mmshg_grenade, instance_40mmshg_grenade, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.shot.numberOfBulletsPerShell = 15
    loadedInstance.shot.numberOfBulletsPerShot = 15

	
	print('Changed Assault weapon: M320 SHG - Super charched AMMO...')
	end)

--
ResourceManager:RegisterInstanceLoadHandler(partition_40mmhe_grenade, instance_40mmhe_grenade, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.shot.numberOfBulletsPerShell = 15
    loadedInstance.shot.numberOfBulletsPerShot = 15
	
	print('Changed Assault weapon: M320 HE - Super charched AMMO...')
	end)

--
ResourceManager:RegisterInstanceLoadHandler(partition_40mmsmk_grenade, instance_40mmsmk_grenade, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.shot.numberOfBulletsPerShell = 15
    loadedInstance.shot.numberOfBulletsPerShot = 15
	
	print('Changed Assault weapon: M320 SMK - Super charched AMMO...')
	end)

--
-- to do
-- M320 buckshot

   local partition_m26_buckshot = Guid ("B719B87C-0DD1-4EF2-BED6-E5AA9298BE0F")
   local instance_m26_buckshot = Guid ("9DDC1D4E-6A2A-4221-AA87-F885A4756450")

ResourceManager:RegisterInstanceLoadHandler(partition_m26_buckshot, instance_m26_buckshot, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 32
    loadedInstance.ammo.numberOfMagazines = 320
    loadedInstance.shot.numberOfBulletsPerShell = 15
    loadedInstance.shot.numberOfBulletsPerShot = 15
	
	print('Changed Assault weapon: M26 Buckshot - Super charched AMMO...')
	end)
--


   local partition_m26_flechette = Guid ("498562AE-59C6-4BEC-A63A-7289E71B2B85")
   local instance_m26_flechette = Guid ("E0366B61-8D4E-469E-B253-04D08E85B4B3")

ResourceManager:RegisterInstanceLoadHandler(partition_m26_flechette, instance_m26_flechette, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 32
    loadedInstance.ammo.numberOfMagazines = 320
    loadedInstance.shot.numberOfBulletsPerShell = 15
    loadedInstance.shot.numberOfBulletsPerShot = 15
	
	print('Changed Assault weapon: M26 Flechette - Super charched AMMO...')
	end)
--


   local partition_m26_frag = Guid ("2DB68104-D498-46A5-828F-8594FBD73692")
   local instance_m26_frag = Guid ("1A6F10BE-5634-4971-8F9E-A26FA5286CA9")

ResourceManager:RegisterInstanceLoadHandler(partition_m26_frag, instance_m26_frag, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 32
    loadedInstance.ammo.numberOfMagazines = 320
    loadedInstance.shot.numberOfBulletsPerShell = 15
    loadedInstance.shot.numberOfBulletsPerShot = 15
	
	print('Changed Assault weapon: M26 frag - Super charched AMMO...')
	end)
--


   local partition_m26_slug = Guid ("18F6BBA2-396E-4D1B-B3B9-E0AE210CC823")
   local instance_m26_slug = Guid ("21CC26A2-6C14-44BF-A28C-3A051F58E815")

ResourceManager:RegisterInstanceLoadHandler(partition_m26_slug, instance_m26_slug, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 32
    loadedInstance.ammo.numberOfMagazines = 320
    loadedInstance.shot.numberOfBulletsPerShell = 15
    loadedInstance.shot.numberOfBulletsPerShot = 15
	
	print('Changed Assault weapon: M26 slug - Super charched AMMO...')
	end)
--

   local partition_m320_gravity = Guid ("D37476C2-3A86-11E0-BC25-D51252D5A427")
   local instance_m320_gravity = Guid ("CEC6D381-72DE-B7D4-E998-0D566E0575C6")

ResourceManager:RegisterInstanceLoadHandler(partition_m320_gravity, instance_m320_gravity, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = -1
    loadedInstance.timeToLive = 7
    loadedInstance.initialSpeed = 900


	print('Changed Assault weapon: M320 Gravity modifier ...')
	end)
--

   local partition_m320_lvg_gravity = Guid ("FD79A08F-F108-4751-B2C0-6C47397133B5")
   local instance_m320_lvg_gravity = Guid ("393E4094-C2A2-4DF2-B977-F82E6974A8CB")

ResourceManager:RegisterInstanceLoadHandler(partition_m320_lvg_gravity, instance_m320_lvg_gravity, function(loadedInstance)
     loadedInstance = GrenadeEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = -1
    loadedInstance.timeToLive = 3
    loadedInstance.initialSpeed = 900


	print('Changed Assault weapon: M320 LVG Gravity modifier ...')
	end)
--
