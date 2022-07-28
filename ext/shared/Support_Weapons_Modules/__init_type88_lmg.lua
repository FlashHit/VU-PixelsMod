   local partition_type88 = Guid ("97F4741B-2AFA-11E0-9848-9E9BC51DCED8")
   local instance_type88 = Guid ("81DAF3F8-D054-4B05-8DFA-5F0F0E722A94")

ResourceManager:RegisterInstanceLoadHandler(partition_type88, instance_type88, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 5

		print('Changed Support weapon: type88 LMG - Pimped AMMO size...')
	end)
