   local partition_lbt_shell4 = Guid ("E8E52039-27D8-4629-8E4D-7B1F8A419175")
   local instance_lbt_shell4 = Guid ("36BB119F-DD27-4DE5-93A1-644BB5F12A99")

ResourceManager:RegisterInstanceLoadHandler(partition_lbt_shell4, instance_lbt_shell4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()
	
    loadedInstance.ammo.magazineCapacity = 24
	print('Changed LBT Phoenix - Barsuk Shell ammo Modifier ...')
	end)

-- -----------------------
    local partition_phnx_bar_grav = Guid ("E8E52039-27D8-4629-8E4D-7B1F8A419175")
     local instance_phnx_bar_grav = Guid ("E774DD5A-F94C-4CD3-98B4-72C072679B59") 

ResourceManager:RegisterInstanceLoadHandler(partition_phnx_bar_grav, instance_phnx_bar_grav, function(loadedInstance)
     loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 450 -- default = 350
    loadedInstance.gravity = 0        -- default = -7
    loadedInstance.timeToLive = 6     -- default = 5
	print('Changed LBT Phoenix - Barsuk Shell Gravity Modifier ...')
	end) 

-- -----------------------

   local partition_phnx_bar_dmg = Guid ("E8E52039-27D8-4629-8E4D-7B1F8A419175")
    local instance_phnx_bar_dmg = Guid ("319579A1-8F5E-4B6F-AF55-81F92BBAA56E")

 ResourceManager:RegisterInstanceLoadHandler(partition_phnx_bar_dmg, instance_phnx_bar_dmg, function(loadedInstance)
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
     loadedInstance:MakeWritable()
 
     loadedInstance.blastDamage = 75 -- Normal = 34
     loadedInstance.blastRadius = 10 -- Normal = 5
     loadedInstance.blastImpulse = 1000 -- Normal = 750
     loadedInstance.shockwaveDamage = 10 -- Normal = 1
     loadedInstance.shockwaveRadius = 16 -- Normal = 8
     loadedInstance.shockwaveImpulse = 80 -- Normal = 40
     loadedInstance.shockwaveTime = 0
     loadedInstance.triggerImpairedHearing = true
     loadedInstance.isCausingSuppression = true
 	print('Changed LBT Phoenix - Barsuk Shell explosion modifier ...')
 	end) 
