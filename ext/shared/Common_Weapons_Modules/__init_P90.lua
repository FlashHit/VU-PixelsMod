   local partition_p90 = Guid ("C75DBA86-F326-11DF-ABE6-A89858BEBE43")
   local instance_p90 = Guid ("9629652F-135E-4EE6-A9FB-343D947A4861")
   local partition_p90_silenced = Guid ("C75DBA86-F326-11DF-ABE6-A89858BEBE43")
   local instance_p90_silenced = Guid ("6DE2965E-F31E-4A71-B8AC-36DE4E07E993")

ResourceManager:RegisterInstanceLoadHandler(partition_p90, instance_p90, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Common weapon: P90 - Pimped AMMO size...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_p90_silenced, instance_p90_silenced, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed P90 Common weapon: Silenced - Pimped AMMO size...')
	end)
