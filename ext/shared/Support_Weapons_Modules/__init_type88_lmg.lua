   local partition_type88 = Guid ("97F4741B-2AFA-11E0-9848-9E9BC51DCED8")
    local instance_type88 = Guid ("81DAF3F8-D054-4B05-8DFA-5F0F0E722A94")

ResourceManager:RegisterInstanceLoadHandler(partition_type88, instance_type88, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 600
    loadedInstance.ammo.numberOfMagazines = 3

	print('Changed Support weapon: type88 LMG - Pimped AMMO size...')
	end)

 -- #############

   local partition_type88_mag = Guid ("97F4741B-2AFA-11E0-9848-9E9BC51DCED8")
    local instance_type88_mag = Guid ("9F29EC0F-DB39-450A-9D9A-E1AFD503E58C")

ResourceManager:RegisterInstanceLoadHandler(partition_type88_mag, instance_type88_mag, function(loadedInstance)
     loadedInstance = WeaponMagazineModifier(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.magazineCapacity = 1200
    loadedInstance.numberOfMagazines = 2

	print('Changed Support weapon: Type 88 LMG - Ext magazine Pimped AMMO size...')
	end)
