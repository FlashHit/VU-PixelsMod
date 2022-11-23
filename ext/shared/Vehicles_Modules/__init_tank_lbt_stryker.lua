   local partition_m1128shell = Guid ("6244034F-4140-41D5-BFA8-C19FFA05B915")
   local instance_m1128shell = Guid ("19252A4F-00C8-40C3-81BC-62CC02625CE0")
		
ResourceManager:RegisterInstanceLoadHandler(partition_m1128shell, instance_m1128shell, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0
    loadedInstance.timeToLive = 4
	print('Changed M1128 Stryker Shell Modifier ... ... ...')
	end)
