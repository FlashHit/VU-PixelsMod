-- -------------------------

   local partition_m15 = Guid ("B38C8E78-EBE6-11DF-8768-F4F1C9378C27")
    local instance_m15 = Guid ("D1110C87-5913-43A4-A47F-04AD47B0C611")

   local partition_m15expentity = Guid ("49F4451D-D64E-45E5-BC96-B39CE8BC4D10")
    local instance_m15expentity = Guid ("D936971A-354B-49B7-BCCA-4FE01B68D395")

 
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
