   local partition_g17c = Guid ("3B3F9879-EB4B-11DF-8AA6-AE0344995412")
   local instance_g17c = Guid ("56911FB5-F016-456D-8B7E-A50C4EE33D6C")
   local partition_g17c_supp = Guid ("3B3F9879-EB4B-11DF-8AA6-AE0344995412")
   local instance_g17c_supp = Guid ("EE3C5B46-187E-43CF-8D9C-9058482BAABB")

ResourceManager:RegisterInstanceLoadHandler(partition_g17c, instance_g17c, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Handgun: g17c - Pimped AMMO size...')
	end)


ResourceManager:RegisterInstanceLoadHandler(partition_g17c_supp, instance_g17c_supp, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

--    loadedInstance.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Handgun: g17c Silenced - Pimped AMMO size...')
	end)
