--
   local partition_rocketpods = Guid ("E64E52BD-4E40-4BFE-B6C3-49523084AE94")
   local instance_rocketpods = Guid ("3EE6789F-4113-42BA-B8FE-79DD5EF89FB1")

ResourceManager:RegisterInstanceLoadHandler(partition_rocketpods, instance_rocketpods, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 45
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Chopper Firedata: US/RU Atack Choppers - Increased rocketpods ...')
	end)

--
   local partition_gunnercannon = Guid ("0A232494-FB58-496E-BF30-FD9B39E12008")
   local instance_gunnercannon = Guid ("E06B6CCE-F5A3-40E6-A41F-D442AC4D7434")

ResourceManager:RegisterInstanceLoadHandler(partition_gunnercannon, instance_gunnercannon, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 90
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Chopper Firedata: US Atack Chopper - Gunner bullet entity ammo ...')
	end)

--
   local partition_gunnercannon1 = Guid ("0D61B717-18D3-4295-9070-9AB925B1C784")
   local instance_gunnercannon1 = Guid ("CAB59337-47AF-4742-9CEC-3EEA7EA20E92")

ResourceManager:RegisterInstanceLoadHandler(partition_gunnercannon1, instance_gunnercannon1, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 90
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Chopper Firedata: RU Atack Chopper - Gunner bullet entity ammo ...')
	end)

--
   local partition_litlebird = Guid ("5490C4AB-A322-3F65-9680-CF9CD9D32705")
   local instance_litlebird = Guid ("FB438F0C-EB84-A96A-4836-F6C624FE21E0")

ResourceManager:RegisterInstanceLoadHandler(partition_litlebird, instance_litlebird, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1000
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Chopper Firedata: US/RU  Light Atack Chopper - Gunner bullet entity ammo ...')
	end)


-- ##################
   local partition_pimped_tv = Guid ("1DF6F9A2-8BA1-11E0-9EF7-9C4CA6DBFDF3")
   local instance_pimped_tv = Guid ("D8486FE8-ABF1-45B7-822A-41C4F492CF77")

 ResourceManager:RegisterInstanceLoadHandler(partition_pimped_tv, instance_pimped_tv, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 1200 -- Normal = 600
     loadedInstance.blastRadius = 15 -- Normal = 4.5
     loadedInstance.blastImpulse = 300 -- Normal = 60
     loadedInstance.shockwaveDamage = 25 -- Normal = 1.0
     loadedInstance.shockwaveRadius = 15 -- Normal = 6
     loadedInstance.shockwaveImpulse = 300 -- Normal = 150
     loadedInstance.shockwaveTime = 0 -- Deafault = 0.14
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	print('Changed TV Missile Pimped Explosion data US - RU ...')
 	end) 

-- ---------------------------------------------------------------------------------------
-- Heatseakers on US Atack chopper and US Jet FA18E increased

    local partition_viper_heatseaker = Guid ("085E96E4-5C8C-4A79-A819-1D4B0B4137E7") -- US
    local instance_viper_heatseaker = Guid ("63E6F602-7274-4AB8-8CFB-E2C00EAF2A73") -- US
 
 ResourceManager:RegisterInstanceLoadHandler(partition_viper_heatseaker, instance_viper_heatseaker, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.ammo.magazineCapacity = 6 -- x2
     loadedInstance.ammo.numberOfMagazines = -1
 
     loadedInstance.fireLogic.reloadTime = 4.0
 	print('Changed Chopper Firedata : US Atack Chopper / US Jets - Increased Heatseakers ...')
 	end)

-- ----------------------------------------
-- Heatseakers on RU Atack chopper

    local partition_mi28_heatseaker = Guid ("1290B4D8-B303-64CD-12C6-1BD1D852D4C5") -- 
    local instance_mi28_heatseaker = Guid ("7559DD8D-CFD0-819B-31E7-5B5D72853110") --
 
 ResourceManager:RegisterInstanceLoadHandler(partition_mi28_heatseaker, instance_mi28_heatseaker, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.ammo.magazineCapacity = 6 -- x2
     loadedInstance.ammo.numberOfMagazines = -1
 
     loadedInstance.fireLogic.reloadTime = 4.0
 	print('Changed Chopper Firedata : RU Atack Chopper - Increased Heatseakers ...')
 	end)

-- ----------------------------------------
-- Heatseakers on RU Jet increased

    local partition_mi28_heatseaker_jet = Guid ("C01964E4-CD56-7C2A-BFEE-5391515CB973") -- 
    local instance_mi28_heatseaker_jet = Guid ("DF898A20-E1DC-7AB6-824C-7E1EE3B6BE0B") --
 
 ResourceManager:RegisterInstanceLoadHandler(partition_mi28_heatseaker_jet, instance_mi28_heatseaker_jet, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.ammo.magazineCapacity = 6 -- x2
     loadedInstance.ammo.numberOfMagazines = -1
 
     loadedInstance.fireLogic.reloadTime = 4.0
 	print('Changed jet Firedata : RU jet - Increased Heatseakers ...')
 	end)


-- ----------------------------------------
-- Gunship tweaks

    local partition_gunship_ac = Guid ("D1507C85-243B-45D5-9378-9ADE0C936909") -- 
     local instance_gunship_ac = Guid ("1EBA0568-FB66-4BCA-BC5D-D2C43FD0ECF6") --
 
 ResourceManager:RegisterInstanceLoadHandler(partition_gunship_ac, instance_gunship_ac, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.ammo.magazineCapacity = 90 -- Default = 30
 
     loadedInstance.fireLogic.reloadTime = 4.0
 	print('Changed Gunship AutoCannon ammo - Increased ammo ...')
 	end)

-- ----------------------------------------

   local partition_gunship_ac_dmg = Guid ("D1507C85-243B-45D5-9378-9ADE0C936909")
    local instance_gunship_ac_dmg = Guid ("18003E66-D168-4E53-BCDD-BCAB3FEF8419")

 ResourceManager:RegisterInstanceLoadHandler(partition_gunship_ac_dmg, instance_gunship_ac_dmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 120 -- Normal = 35
     loadedInstance.blastRadius = 9 -- Normal = 3
     loadedInstance.blastImpulse = 8000 -- Normal = 5000
     loadedInstance.shockwaveDamage = 8 -- Normal = 1
     loadedInstance.shockwaveRadius = 15 -- Normal = 7
     loadedInstance.shockwaveImpulse = 30 -- Normal = 10
     loadedInstance.shockwaveTime = 0.1 -- Deafault = 0.5
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	print('Changed Gunship AutoCannon ammo - Increased Damage ...')
 	end) 

-- ----------------------------------------

   local partition_gunship_60mm_dmg = Guid ("0D139F47-C360-428C-A91B-5B247F236F0F")
    local instance_gunship_60mm_dmg = Guid ("5A903893-799A-4B52-8A5C-6AE373D7038C")

 ResourceManager:RegisterInstanceLoadHandler(partition_gunship_60mm_dmg, instance_gunship_60mm_dmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 600 -- Normal = 150
     loadedInstance.blastRadius = 40 -- Normal = 10
     loadedInstance.blastImpulse = 10000 -- Normal = 5000
     loadedInstance.shockwaveDamage = 50 -- Normal = 1
     loadedInstance.shockwaveRadius = 60 -- Normal = 15
     loadedInstance.shockwaveImpulse = 5000 -- Normal = 2500
     loadedInstance.shockwaveTime = 0.1 -- Deafault = 0.14
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	print('Changed Gunship 60mm cannon - Increased Damage ...')
 	end) 

