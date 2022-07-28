   local partition_m9 = Guid ("94D0FEE8-E685-11DF-805B-F4FA4757ED08")
   local instance_m9 = Guid ("4CDDA2E9-C167-4F81-9958-835EAC8C65D7")

ResourceManager:RegisterInstanceLoadHandler(partition_m9, instance_m9, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 50
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Handgun: M9 - Pimped AMMO size...')
	end)
