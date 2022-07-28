   local partition_lbt_shell4 = Guid ("E8E52039-27D8-4629-8E4D-7B1F8A419175")
   local instance_lbt_shell4 = Guid ("36BB119F-DD27-4DE5-93A1-644BB5F12A99")

ResourceManager:RegisterInstanceLoadHandler(partition_lbt_shell4, instance_lbt_shell4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
	
    loadedInstance.ammo.magazineCapacity = 24
	print('Changed LBT Phoenix - Barsuk Shell Modifier ... ... ... ... ... ...')
	end)
