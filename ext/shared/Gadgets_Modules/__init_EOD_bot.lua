   local partition_eod = Guid ("269BB4A2-0DC3-11E0-B817-B1885439A6BF")
   local instance_eod = Guid ("E280A780-82D0-4B1F-865D-E47865E2772C")

   local partition_eod_health = Guid ("269BB4A2-0DC3-11E0-B817-B1885439A6BF")
   local instance_eod_health = Guid ("563E0333-426F-19B5-D1D4-4795FEA0C78C")

   local partition_eod_wheels = Guid ("269BB4A2-0DC3-11E0-B817-B1885439A6BF")
   local instance_eod_wheels = Guid ("B494F998-D7BC-446C-9AE2-828C5B44E99A")

   local partition_eod_chassis = Guid ("269BB4A2-0DC3-11E0-B817-B1885439A6BF")
    local instance_eod_chassis = Guid ("9FF66CD4-2AF1-11CE-78ED-6EC576D7F93D")

   local partition_rpgprojectile = Guid ("6C857FD9-6FB3-11DE-B35E-864CF572E1C4")
   local instance_rpgprojectile = Guid ("563E0333-426F-19B5-D1D4-4795FEA0C78C")


ResourceManager:RegisterInstanceLoadHandler(partition_eod, instance_eod, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()


    loadedInstance.fireLogic.rateOfFire = 400 -- This is the amount in pulse a rocket is shot and repairs
    loadedInstance.shot.projectileData:MakeWritable()
    loadedInstance.shot.initialSpeed.z = 200 -- Firespeed ! but lowers repair speed dramaticly
    print("Changed EOD bot as a mobile SUPER repair platform  ... ... ...")

end)
--

ResourceManager:RegisterInstanceLoadHandler(partition_eod_health, instance_eod_health, function(loadedInstance)
     loadedInstance = VehicleEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.lowHealthThreshold = 50.0
    loadedInstance.frontHealthZone.maxHealth = 500.0
    loadedInstance.rearHealthZone.maxHealth = 500.0
    loadedInstance.leftHealthZone.maxHealth = 500.0
    loadedInstance.rightHealthZone.maxHealth = 500.0
    loadedInstance.regenerationDelay = 5.0
    loadedInstance.regenerationRate = 50.0
    print("Changed EOD SUPER health status  ... ... ...")
end)

--
ResourceManager:RegisterInstanceLoadHandler(partition_eod_wheels, instance_eod_wheels, function(loadedInstance)
     loadedInstance = WheelConfigData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.slopeGripMinAngle = 150.0
    loadedInstance.slopeGripMaxAngle = 150.0

    print("Changed EOD SUPER wheel status  ... ... ...")
end)
--
ResourceManager:RegisterInstanceLoadHandler(partition_eod_chassis, instance_eod_chassis, function(loadedInstance)
     loadedInstance = ChassisComponentData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.transform.left.x = 3
    loadedInstance.transform.up.y = 3
    loadedInstance.transform.forward.z = 3
    print("Changed EOD SUPER chassis status  ... ... ...")
end)


