-- This wil hide the messages in the console if set to false
-- information is good, but can also be a bit overkill.

bEnable_announcement = false -- if this is true, the print announcement wil show in the console

-- 	if (bEnable_announcement) == (true) then 
-- copy above line in front of the print statement xD
-- Also place a end statement below the line you added to close the statement properly and restart the server
-- true is print statement visible
-- --------------------------------

   local partition_m15 = Guid ("B38C8E78-EBE6-11DF-8768-F4F1C9378C27")
    local instance_m15 = Guid ("D1110C87-5913-43A4-A47F-04AD47B0C611")

   local partition_m15expentity = Guid ("49F4451D-D64E-45E5-BC96-B39CE8BC4D10")
    local instance_m15expentity = Guid ("D936971A-354B-49B7-BCCA-4FE01B68D395")

-- -------------------------

   local partition_m15exp = Guid ("49F4451D-D64E-45E5-BC96-B39CE8BC4D10")
    local instance_m15exp = Guid ("EA440D5D-925C-4239-8463-4FE3EAD30C5F")

ResourceManager:RegisterInstanceLoadHandler(partition_m15exp, instance_m15exp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 1500 -- Normal = 500
    loadedInstance.blastRadius = 15 -- Normal = 5
    loadedInstance.blastImpulse = 12000 -- Normal = 6000
    loadedInstance.shockwaveDamage = 100 -- Normal = 1
    loadedInstance.shockwaveRadius = 15 -- Normal = 6
    loadedInstance.shockwaveImpulse = 4000 -- Normal = 2000
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true
	if (bEnable_announcement) == (true) then print('Changed kinky M15 tank mine - Things goes extra BOOOOOOOOM !!!...')
	end
end)
 
-- ########################################################################################

-- Mapmode: Conquest Large - Assault64 - Tank Superiority 40
Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" or SharedUtils:GetCurrentGameMode() == "TankSuperiority0" then

ResourceManager:RegisterInstanceLoadHandler(partition_m15, instance_m15, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 20 -- atention, this is a multiplier x2
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	end)

-- -------------------------

ResourceManager:RegisterInstanceLoadHandler(partition_m15expentity, instance_m15expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxAttachableInclination = 180
    loadedInstance.health = 1
    loadedInstance.maxCount = 40  -- Total mines you can place
	end)

-- -----------------

-- Mapmode: Conquest Small - Assault - Assault#2 20
	else
	if SharedUtils:GetCurrentGameMode() == "ConquestSmall0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall1" then

ResourceManager:RegisterInstanceLoadHandler(partition_m15, instance_m15, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 10 -- atention, this is a multiplier x2
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	end)

-- -------------------------

ResourceManager:RegisterInstanceLoadHandler(partition_m15expentity, instance_m15expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxAttachableInclination = 180
    loadedInstance.health = 1
    loadedInstance.maxCount = 20  -- Total mines you can place
	end)

-- -----------------

-- Mapmode: Rush - Squad Rush - Capture the flag 10
	else
	if SharedUtils:GetCurrentGameMode() == "RushLarge0" or SharedUtils:GetCurrentGameMode() == "SquadRush0" or SharedUtils:GetCurrentGameMode() == "CaptureTheFlag0" then

ResourceManager:RegisterInstanceLoadHandler(partition_m15, instance_m15, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 5 -- atention, this is a multiplier x2
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	end)

-- -------------------------

ResourceManager:RegisterInstanceLoadHandler(partition_m15expentity, instance_m15expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxAttachableInclination = 180
    loadedInstance.health = 1
    loadedInstance.maxCount = 10  -- Total mines you can place
	end)

-- -----------------

-- Mapmode: Conquest Domination - Team Deathmatch - Squad Deathmatch - TDM Close Quarters 6
	else
	if SharedUtils:GetCurrentGameMode() == "TeamDeathMatch0" or SharedUtils:GetCurrentGameMode() == "SquadDeathMatch0" or SharedUtils:GetCurrentGameMode() == "TeamDeathMatchC0" or SharedUtils:GetCurrentGameMode() == "Domination0" then

ResourceManager:RegisterInstanceLoadHandler(partition_m15, instance_m15, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 3 -- atention, this is a multiplier x2
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	end)

-- -------------------------

ResourceManager:RegisterInstanceLoadHandler(partition_m15expentity, instance_m15expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxAttachableInclination = 180
    loadedInstance.health = 1
    loadedInstance.maxCount = 6  -- Total mines you can place
	end)

-- -----------------

end
end
end
end

end)
