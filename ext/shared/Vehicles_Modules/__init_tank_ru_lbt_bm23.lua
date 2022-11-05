   local partition_bm23shell = Guid ("AB65DA57-DAC6-4201-AA97-F1B8F5328E80")
   local instance_bm23shell = Guid ("9520BC73-20E0-4C99-A61D-07D6E3397DA7")

ResourceManager:RegisterInstanceLoadHandler(partition_bm23shell, instance_bm23shell, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24 -- Default = 6
		print('Changed RU BM-23 and US M142 Shell Modifier ... ... ...')
	end)

-- ##################
   local partition_bm23air = Guid ("0029E9E6-AB7A-4C54-AA46-0465C2EAC6F1")
   local instance_bm23air = Guid ("2810291B-035F-4074-97D2-C8FC83AF95F7")

ResourceManager:RegisterInstanceLoadHandler(partition_bm23air, instance_bm23air, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24 -- Default = 2
		print('Changed RU BM-23 and US M142 Air Shell Modifier ... ... ...')
	end)


-- ################
   local partition_himarengine = Guid ("65CE090F-3CFC-11E1-BDB2-A81058AAD7AA")
   local instance_himarengine = Guid ("E0B772EC-8CD0-4046-AEF0-DC65229ABEFA")

ResourceManager:RegisterInstanceLoadHandler(partition_himarengine, instance_himarengine, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 500 -- default = 500
    loadedInstance.rpmMax = 8000 -- default = 1600
    loadedInstance.rpmCut = 15000 -- default = 9500
    loadedInstance.enginePowerMultiplier = 8 -- default = 5
    loadedInstance.boost.accelerationScale = 5 -- default = 2
	print('Changed Vehicle: Himar Engine RU...')
	end)

-- ################
   local partition_himarengine2 = Guid ("ECE82307-9454-11E1-9418-9BD47D974A22")
   local instance_himarengine2 = Guid ("D9F3198B-8CCA-4D86-9CE4-963FE3C350F0")

ResourceManager:RegisterInstanceLoadHandler(partition_himarengine2, instance_himarengine2, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 500 -- default = 500
    loadedInstance.rpmMax = 8000 -- default = 1600
    loadedInstance.rpmCut = 15000 -- default = 9500
    loadedInstance.enginePowerMultiplier = 8 -- default = 5
    loadedInstance.boost.accelerationScale = 5 -- default = 2
	print('Changed Vehicle: Himar Engine US...')
	end)

-- ##################
   local partition_himardamage = Guid ("16C1EC21-4049-11E1-8705-E3C8ED8C7B19")
   local instance_himardamage = Guid ("06D3C982-3F75-4E9F-B3A0-CBDA015711A2")

 ResourceManager:RegisterInstanceLoadHandler(partition_himardamage, instance_himardamage, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 1200 -- Normal = 200
     loadedInstance.blastRadius = 15 -- Normal = 5
     loadedInstance.blastImpulse = 1000 -- Normal = 500
     loadedInstance.shockwaveDamage = 25 -- Normal = 1
     loadedInstance.shockwaveRadius = 25 -- Normal = 10
     loadedInstance.shockwaveImpulse = 200 -- Normal = 100
     loadedInstance.shockwaveTime = 0
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	print('Changed Himar Pimped Explosion data ...')
 	end)

-- ##################
   local partition_himartowdmg = Guid ("195B945C-6F17-11DF-90E6-B4DEFEBE3C65")
   local instance_himartowdmg = Guid ("7AC5B0B9-29AE-4029-930E-58DF4ED4DC79")

 ResourceManager:RegisterInstanceLoadHandler(partition_himartowdmg, instance_himartowdmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 1200 -- Normal = 200
     loadedInstance.blastRadius = 15 -- Normal = 5
     loadedInstance.blastImpulse = 1000 -- Normal = 500
     loadedInstance.shockwaveDamage = 25 -- Normal = 1
     loadedInstance.shockwaveRadius = 25 -- Normal = 10
     loadedInstance.shockwaveImpulse = 200 -- Normal = 100
     loadedInstance.shockwaveTime = 0
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	print('Changed Himar TOW ATGM Pimped Explosion data ...')
 	end)

