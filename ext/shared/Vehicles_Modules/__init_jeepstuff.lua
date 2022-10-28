   local partition_humveeengine = Guid ("611F48A3-0919-11E0-985D-C512734E48AF")
   local instance_humveeengine = Guid ("7ED9EDBE-034C-4CEE-9BA0-EFAB0698E167")

ResourceManager:RegisterInstanceLoadHandler(partition_humveeengine, instance_humveeengine, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 500 -- default = 500
    loadedInstance.rpmMax = 5000 -- default = 5000
    loadedInstance.rpmCut = 9500 -- default = 9500
    loadedInstance.enginePowerMultiplier = 2.5 -- default = 1
    loadedInstance.boost.accelerationScale = 1.5 -- default = 1
	print('Changed VEhicle: Humvee Engine...')
	end)

-- ###################
   local partition_growlerengine = Guid ("CF5166FD-6B60-11E0-8ACE-C75FA07B1C42")
   local instance_growlerengine = Guid ("FCE0343A-4366-4C12-A139-381585552777")

ResourceManager:RegisterInstanceLoadHandler(partition_growlerengine, instance_growlerengine, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 600 -- default = 500
    loadedInstance.rpmMax = 6000 -- default = 5000
    loadedInstance.rpmCut = 9500 -- default = 9500
    loadedInstance.enginePowerMultiplier = 3 -- default = 1
    loadedInstance.boost.accelerationScale = 3 -- default = 1
	print('Changed Vehicle: Growler Engine...')
	end)

-- ###############
   local partition_quadbike = Guid ("08D3686F-A96A-11E1-9047-F3806E4ECBA6")
   local instance_quadbike = Guid ("ED159859-02F5-47C5-82D2-74D5381C9919")

ResourceManager:RegisterInstanceLoadHandler(partition_quadbike, instance_quadbike, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 600.0 -- default = 500
    loadedInstance.rpmMax = 5000.0 -- default = 3000
    loadedInstance.rpmCut = 9500.0 -- default = 9500
    loadedInstance.enginePowerMultiplier = 4 -- default = 2
    loadedInstance.boost.accelerationScale = 3 -- default = 1
	print('Changed Vehicle: Quad Bike Engine ...')
	end)


-- ################

   local partition_dirtbike = Guid ("38FA36CC-22C8-4624-89BF-1D95C7CE7815")
   local instance_dirtbike = Guid ("F7D881E8-6CC1-4133-969A-4627B670E9AD")

ResourceManager:RegisterInstanceLoadHandler(partition_dirtbike, instance_dirtbike, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 1000.0 -- default = 1000
    loadedInstance.rpmMax = 12000.0 -- default = 10000
    loadedInstance.rpmCut = 11000.0 -- default = 9500
    loadedInstance.enginePowerMultiplier = 6 -- default = 3.7
    loadedInstance.boost.accelerationScale = 3 -- default = 0
	print('Changed Vehicle: Dirt Bike Engine ...')
	end)


-- ###################
   local partition_vdvengine = Guid ("2EA804A7-8232-11E0-823A-BD52CA6DC6B3")
   local instance_vdvengine = Guid ("1F09AD68-A404-4C4B-84E0-CE784F59B506")

ResourceManager:RegisterInstanceLoadHandler(partition_vdvengine, instance_vdvengine, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 500 -- default = 500
    loadedInstance.rpmMax = 6000 -- default = 5000
    loadedInstance.rpmCut = 9500 -- default = 9500
    loadedInstance.enginePowerMultiplier = 3 -- default = 1
    loadedInstance.boost.accelerationScale = 3 -- default = 1
	print('Changed Vehicle: VDV Buggy Engine...')
	end)

-- ################
   local partition_dpvengine = Guid ("6F91A4CF-344D-11E0-930F-E8BE623140CB")
   local instance_dpvengine = Guid ("A11805B7-0656-4D9A-9226-D746EA0C857C")

ResourceManager:RegisterInstanceLoadHandler(partition_dpvengine, instance_dpvengine, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 500 -- default = 500
    loadedInstance.rpmMax = 6000 -- default = 5000
    loadedInstance.rpmCut = 9500 -- default = 9500
    loadedInstance.enginePowerMultiplier = 3 -- default = 1
    loadedInstance.boost.accelerationScale = 3 -- default = 1
	print('Changed Vehicle: DPV Buggy Engine...')
	end)

-- ################

   local partition_skidloaderengine = Guid ("EB384F9B-929B-11E0-8E2E-9D80798C8C1C")
   local instance_skidloaderengine = Guid ("E973406D-A701-45FB-84C0-FB3D8DF51B69")

ResourceManager:RegisterInstanceLoadHandler(partition_skidloaderengine, instance_skidloaderengine, function(loadedInstance)
     loadedInstance = CombustionEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 500 -- default = 500
    loadedInstance.rpmMax = 4000 -- default = 1600
    loadedInstance.rpmCut = 9500 -- default = 9500
    loadedInstance.enginePowerMultiplier = 5 -- default = 2.2
    loadedInstance.boost.accelerationScale = 3 -- default = 1
	print('Changed Vehicle: Skid Loader Engine...')
	end)

-- ################

-- Growler US
-- VDV buggy RU
-- DPV US

