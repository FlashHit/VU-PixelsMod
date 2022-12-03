-- kinky MAV
-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible

-- -------------------------------------

   local partition_mav_pda = Guid ("1271F1BE-49D5-4599-AAD2-0D3BBAFB1EF7")
    local instance_mav_pda = Guid ("0A6952EC-1EF1-4B3C-80DC-DEC527096066")

ResourceManager:RegisterInstanceLoadHandler(partition_mav_pda, instance_mav_pda, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 30 -- Default = 2.5
    
 	if (bEnable_announcement) == (true) then print("Changed MAV: picks up faster ...")
end
	end)

-- ###############

	local partition_mav_sweep = Guid ("FDE06FAE-1D63-11E0-8A6F-FC9481BB4D51")
         local Instance_mav_sweep = Guid ("E4B296A4-7AEB-453E-9E71-AFC8F598A625")

ResourceManager:RegisterInstanceLoadHandler(partition_mav_sweep, Instance_mav_sweep, function(loadedInstance)

    loadedInstance = RadarSweepComponentData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.controllableSweepRadius = 60 -- default = 30
    loadedInstance.controllableSweepInterval = 1.5 -- default = 3
    loadedInstance.sweepForMines = true
    loadedInstance.mineSweepRadius = 60 -- default = 30
    loadedInstance.mineSweepInterval = 1.5 -- default = 3

 	if (bEnable_announcement) == (true) then print('Changed Gadgets: MAV Sweep Range...')
end
end)

-- ###############

  	local partition_mav_emp = Guid ("2E77D41C-D22E-11E0-B78F-C6A4D11A79C9")
           local Instance_mav_emp = Guid ("9DC097F7-7DE7-4B27-A61B-61444EDD124E")
  
  ResourceManager:RegisterInstanceLoadHandler(partition_mav_emp, Instance_mav_emp, function(loadedInstance)
  
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
      loadedInstance:MakeWritable()
  
       loadedInstance.blastDamage = 1200 -- Normal = 500
       loadedInstance.blastRadius = 15 -- Normal = 3
       loadedInstance.blastImpulse = 3000 -- Normal = 0
       loadedInstance.shockwaveDamage = 1500 -- Normal = 0
       loadedInstance.shockwaveRadius = 15 -- Normal = 3
       loadedInstance.shockwaveImpulse = 1600 -- Normal = 0
       loadedInstance.shockwaveTime = 0
       loadedInstance.triggerImpairedHearing = true
       loadedInstance.isCausingSuppression = true 
  
 	if (bEnable_announcement) == (true) then print('Changed MAV: things goes boom (1)...')
end
  end)

-- ###############

  	local partition_mav_exp = Guid ("FDE06FAE-1D63-11E0-8A6F-FC9481BB4D51")
           local Instance_mav_exp = Guid ("7042EE46-C53D-4725-8445-946168B52C11")
  
  ResourceManager:RegisterInstanceLoadHandler(partition_mav_exp, Instance_mav_exp, function(loadedInstance)
  
      loadedInstance = VeniceExplosionEntityData(loadedInstance)
      loadedInstance:MakeWritable()
  
       loadedInstance.blastDamage = 1200 -- Normal = 0
       loadedInstance.blastRadius = 15 -- Normal = 0.5
       loadedInstance.blastImpulse = 3000 -- Normal = 0
       loadedInstance.shockwaveDamage = 1500 -- Normal = 0
       loadedInstance.shockwaveRadius = 15 -- Normal = 1
       loadedInstance.shockwaveImpulse = 1600 -- Normal = 0
       loadedInstance.shockwaveTime = 0
       loadedInstance.triggerImpairedHearing = true
       loadedInstance.isCausingSuppression = true 

  
 	if (bEnable_announcement) == (true) then print('Changed MAV: things goes boom (2)...')
end
  end)
