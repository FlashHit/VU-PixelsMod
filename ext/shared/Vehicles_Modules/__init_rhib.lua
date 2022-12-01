--
-- For tweaked gunner firedata, see the firedata.lua file
--

   local partition_rhib_engine = Guid ("C0C2582E-82ED-4176-9F0A-61B5748CA3CD")
    local instance_rhib_engine = Guid ("988F8935-BF29-4A12-B3E0-B6CA22B54D5D")

ResourceManager:RegisterInstanceLoadHandler(partition_rhib_engine, instance_rhib_engine, function(loadedInstance)
     loadedInstance = JetEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 100 -- default = 0
    loadedInstance.rpmMax = 7500 -- default = 5000
    loadedInstance.rpmCut = 11000 -- default = 9500
    loadedInstance.enginePowerMultiplier = 3.0 -- default = 0.6
    loadedInstance.boost.accelerationScale = 2 -- default = 1
	print('Changed Vehicle: rhib (1) Engine...')
	end)

-- -----------------------------------------

   local partition_rhib_engine2 = Guid ("0991DC0A-4681-11E0-AB52-CF61A9ADB6F1")
    local instance_rhib_engine2 = Guid ("734223B4-4E66-4441-8A6E-18055AFDECB7")


ResourceManager:RegisterInstanceLoadHandler(partition_rhib_engine2, instance_rhib_engine2, function(loadedInstance)
     loadedInstance = JetEngineConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.rpmMin = 100 -- default = 0
    loadedInstance.rpmMax = 7500 -- default = 5000
    loadedInstance.rpmCut = 11000 -- default = 9500
    loadedInstance.enginePowerMultiplier = 3.0 -- default = 0.6
    loadedInstance.boost.accelerationScale = 2 -- default = 1
	print('Changed Vehicle: rhib (2) Engine...')
	end)

-- -----------------------------------------
