   local partition_bm23shell = Guid ("AB65DA57-DAC6-4201-AA97-F1B8F5328E80")
   local instance_bm23shell = Guid ("9520BC73-20E0-4C99-A61D-07D6E3397DA7")
   local partition_bm23air = Guid ("0029E9E6-AB7A-4C54-AA46-0465C2EAC6F1")
   local instance_bm23air = Guid ("2810291B-035F-4074-97D2-C8FC83AF95F7")

ResourceManager:RegisterInstanceLoadHandler(partition_bm23shell, instance_bm23shell, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
		print('Changed RU BM-23 and US M142 Shell Modifier ... ... ...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_bm23air, instance_bm23air, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 24
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
