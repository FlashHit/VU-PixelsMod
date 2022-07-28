   local partition_m93r = Guid ("06374F08-F23B-11DF-A182-B47F2E879897")
   local instance_m93r = Guid ("C3CC5C43-0EAD-4C2A-A67F-123DE27C6476")

ResourceManager:RegisterInstanceLoadHandler(partition_m93r, instance_m93r, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.shot.numberOfBulletsPerBurst = 25
    loadedInstance.ammo.magazineCapacity = 100
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Handgun: M93r - Pimped AMMO size...')
	end)

