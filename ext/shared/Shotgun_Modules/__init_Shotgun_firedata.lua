-- Shotgun global gravity tweaks

              local partition_buck_grav = Guid ("730EC837-C59D-4E96-AFD5-01F3BDA2AE69")
local instance_FireFunction1_buck_grav = Guid ("50ACD447-1BCD-4363-AB61-312840D5D28B") -- 12g_buckshot

ResourceManager:RegisterInstanceLoadHandler(partition_buck_grav, instance_FireFunction1_buck_grav, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500 -- default = 350.0
    loadedInstance.timeToLive = 2 -- default = 1.0
    loadedInstance.gravity = 0 -- default = -9.8
    loadedInstance.startDamage = 25 -- default = 18.0
    loadedInstance.endDamage = 25 -- default = 6.0
    print("Shotgun - (Buckshot ammo) What gravity ? ...")
end)

-- #####

              local partition_flech_grav = Guid ("6EF70B63-0941-456A-85A9-0C97484CEC15")
local instance_FireFunction2_flech_grav = Guid ("A4FA6C84-FD58-4A84-9CC1-82EA53ADE4E0") -- 12g_flechette

ResourceManager:RegisterInstanceLoadHandler(partition_flech_grav, instance_FireFunction2_flech_grav, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500 -- default = 350.0
    loadedInstance.timeToLive = 2 -- default = 1.0
    loadedInstance.gravity = 0 -- default = -9.8
    loadedInstance.startDamage = 25 -- default = 12.5
    loadedInstance.endDamage = 25 -- default = 8.3
    print("Shotgun - (Flechette ammo) What gravity ? ...")
end)

-- #####

              local partition_frag_grav = Guid ("2A6FCD72-5842-41B4-AC48-56BAACA506A3")
local instance_FireFunction3_frag_grav = Guid ("EF265029-3291-4544-8081-ABFFA09D3D96") -- 12g_frag

ResourceManager:RegisterInstanceLoadHandler(partition_frag_grav, instance_FireFunction3_frag_grav, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500 -- default = 350.0
    loadedInstance.timeToLive = 4 -- default = 3.0
    loadedInstance.gravity = 0 -- default = -15
    loadedInstance.startDamage = 50 -- default = 20
    loadedInstance.endDamage = 50 -- default = 5
    print("Shotgun - (Frag ammo) What gravity ? ...")
end)

-- #####

              local partition_slug_grav = Guid ("377829C0-F684-4092-AC46-E7E609D0DE7C")
local instance_FireFunction4_slug_grav = Guid ("679FD75F-EB49-4FD2-9496-9B54D73C87AC") -- 12g_slug

ResourceManager:RegisterInstanceLoadHandler(partition_slug_grav, instance_FireFunction4_slug_grav, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500 -- default = 350.0
    loadedInstance.timeToLive = 8 -- default = 5.0
    loadedInstance.gravity = 0 -- default = -12
    loadedInstance.startDamage = 75 -- default = 75
    loadedInstance.endDamage = 75 -- default = 37.5
    print("Shotgun - (Slug ammo) What gravity ? ...")
end)

-- #####

              local partition_slug_pump_grav = Guid ("2FE9F5E2-A883-4C9A-BD26-0A343B698481")
local instance_FireFunction5_slug_pump_grav = Guid ("ED005E6A-A489-4C85-BA52-67EB7A4458FB") -- 12g_frag_pump

ResourceManager:RegisterInstanceLoadHandler(partition_slug_pump_grav, instance_FireFunction5_slug_pump_grav, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500 -- default = 350.0
    loadedInstance.timeToLive = 5 -- default = 3.0
    loadedInstance.gravity = 0 -- default = -15
    loadedInstance.startDamage = 50 -- default = 37.5
    loadedInstance.endDamage = 50 -- default = 10
    print("Shotgun - (Frag_pump ammo) What gravity ? ...")
end)

-- #####
              local partition_slug_pump_grav = Guid ("E3251329-3AB3-4490-A488-54C3C1B870C2")
local instance_FireFunction6_slug_pump_grav = Guid ("73906759-9C12-4B2B-91C3-F42DB8BE9A1B") -- 12g_slug_pump

ResourceManager:RegisterInstanceLoadHandler(partition_slug_pump_grav, instance_FireFunction6_slug_pump_grav, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.initialSpeed = 500 -- default = 350.0
    loadedInstance.timeToLive = 8 -- default = 5.0
    loadedInstance.gravity = 0 -- default = -12
    loadedInstance.startDamage = 100 -- default = 100
    loadedInstance.endDamage = 100 -- default = 40
    print("Shotgun - (Slug_pump ammo) What gravity ? ...")
end)

-- #####
