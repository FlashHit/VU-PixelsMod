-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

-- Pimped Crossbow

-- ----------------

	local partition_crossbolt_damage_HE = Guid ("07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA")
	local Instance_crossbolt_damage_HE = Guid ("B85B6C38-0D14-4079-932A-237984798ADF")

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_damage_HE, Instance_crossbolt_damage_HE, function(loadedInstance)

    loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 75 -- Normal = 56
    loadedInstance.blastRadius = 5 -- Normal = 2
    loadedInstance.blastImpulse = 700 -- Normal = 500
    loadedInstance.shockwaveDamage = 10 -- Normal = 1
    loadedInstance.shockwaveRadius = 10 -- Normal = 7
    loadedInstance.shockwaveImpulse = 150 -- Normal = 100
    loadedInstance.shockwaveTime = 0.1
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true 


	if (bEnable_announcement) == (true) then print('Changed william Tell HE BOOM changed ... ... ...')
end
end)

-- ----------------

	local partition_ammo = Guid ("EEEC6E85-6A26-4C51-842E-55C5B75DE9DC")
	local Instance_ammo = Guid  ("408C21F4-6D2F-41D8-AB92-D79141A3645E")

ResourceManager:RegisterInstanceLoadHandler(partition_ammo, Instance_ammo, function(loadedInstance)

    loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 25

	if (bEnable_announcement) == (true) then print('Changed william Tell instance (pimped ammo)... ... ...')
end
end)

-- ----------------

	local partition_crossbolt_default = Guid ("26076E01-A015-44A8-BFBF-695187E25FFB")
	local Instance_crossbolt_default = Guid ("391BB7D5-C4AE-4952-B103-189DC1700030")

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_default, Instance_crossbolt_default, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0

	if (bEnable_announcement) == (true) then print('Changed william Tell Gravity data (Default bolt) ... ... ...')
end
end)

-- ----------------

	local partition_crossbolt_scan = Guid ("2E6F6D70-6D07-4E9A-A679-DA61C0892CA8")
	local Instance_crossbolt_scan = Guid ("D7D7E957-27B1-4125-936E-0D851C7CEF9C")

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_scan, Instance_crossbolt_scan, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0

	if (bEnable_announcement) == (true) then print('Changed william Tell Gravity data (Scan bolt) ... ... ...')
end
end)

-- ----------------

	local partition_crossbolt_he = Guid ("07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA")
	local Instance_crossbolt_he = Guid ("D09E04C4-4B06-4967-A7F5-1DE6D0912676")

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_he, Instance_crossbolt_he, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0
    loadedInstance.initialSpeed = 750
    loadedInstance.timeToLive = 10.0

	if (bEnable_announcement) == (true) then print('Changed william Tell Gravity data (Explosion bolt) ... ... ...')
end
end)

-- ----------------

	local partition_crossbolt_BA = Guid ("7060D665-78CF-41A5-862B-B3055748A8C3")
	local Instance_crossbolt_BA = Guid ("D3A33689-42BD-478C-8D83-B7C0B73EE19D")

ResourceManager:RegisterInstanceLoadHandler(partition_crossbolt_BA, Instance_crossbolt_BA, function(loadedInstance)

    loadedInstance = BulletEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.gravity = 0

	if (bEnable_announcement) == (true) then print('Changed william Tell Gravity data (Bully bolt) ... ... ...')
end
end)
