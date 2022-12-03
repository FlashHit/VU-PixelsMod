-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_lbt_shell3 = Guid ("1995BB90-5EB4-4FA9-85B6-EC33AB985CE3")
    local instance_lbt_shell3 = Guid ("1EFBF8CE-016A-4D78-AC3D-066463871BAA")
   local partition_lbt_shell3grav = Guid ("1995BB90-5EB4-4FA9-85B6-EC33AB985CE3")
    local instance_lbt_shell3grav = Guid ("CF718E63-EDA0-4A87-BEE5-CBF5CE3F66F8")

ResourceManager:RegisterInstanceLoadHandler(partition_lbt_shell3, instance_lbt_shell3, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
    loadedInstance.ammo.magazineCapacity = 24
	if (bEnable_announcement) == (true) then print('Changed LBT Amtrac AAV-7A1 Shell Modifier ... ... ... ... ... ...')
	end
end)


ResourceManager:RegisterInstanceLoadHandler(partition_lbt_shell3grav, instance_lbt_shell3grav, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0.0
    loadedInstance.timeToLive = 8.0
	if (bEnable_announcement) == (true) then print('Changed LBT Amtrac AAV-7A1 Gravity Modifier ... ... ... ... ... ...')
	end
end)
