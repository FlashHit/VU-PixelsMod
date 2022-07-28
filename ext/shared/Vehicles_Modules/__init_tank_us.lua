   local partition_m1abramsshell = Guid ("D684EC68-0FE9-4DF1-A732-9279BBA202F8")
   local instance_m1abramsshell = Guid ("F8903680-77AE-4D0C-88B7-88E5407CE897")

ResourceManager:RegisterInstanceLoadHandler(partition_m1abramsshell, instance_m1abramsshell, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0.5
    loadedInstance.timeToLive = 4
	print('Changed M1Abrams Shell...')
	end)
