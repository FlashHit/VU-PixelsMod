-- --------------------------------------

   local partition_grenade = Guid ("FFF5DB09-E74B-11DF-9B5E-86394B544891")
    local instance_grenade = Guid ("04E1FA90-5B6E-4316-862C-15EB89652441")

-- --------------------------------------

   local partition_grenadeent = Guid ("CF031A0B-2492-11E0-85B7-F234A394297F")
    local instance_grenadeent = Guid ("326152E6-0F84-430D-D2E3-19EBDA8266C4")

ResourceManager:RegisterInstanceLoadHandler(partition_grenadeent, instance_grenadeent, function(loadedInstance)
     loadedInstance = GrenadeEntityData(loadedInstance)
   loadedInstance:MakeWritable()

    loadedInstance.timeToLive = 3
    loadedInstance.gravity = -3.5
	print('Changed M67 Grenade is now lighter ...')
	end)

-- --------------------------------------

   local partition_grenadeexp = Guid ("CF031A0B-2492-11E0-85B7-F234A394297F")
    local instance_grenadeexp = Guid ("0E0932A0-E8EF-4037-983B-F35A6F7FEEE5")

ResourceManager:RegisterInstanceLoadHandler(partition_grenadeexp, instance_grenadeexp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 1500 -- 112 normal damage rate
    loadedInstance.blastRadius = 12 -- radius damage aplies, 7 = normal
    loadedInstance.blastImpulse = 3000 -- impulse damage, 2000 = normal
    loadedInstance.shockwaveDamage = 40 -- Shockwave damage to area and player, 1 = normal
    loadedInstance.shockwaveRadius = 10 -- Damage radius for shockwave, 8 = normal
    loadedInstance.shockwaveImpulse = 60 -- shockwavedamage to area and player, 500 = normal
    loadedInstance.shockwaveTime = 0
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true
	print('Changed M67 Grenade Damage increased ...')
	end)

-- --------------------------------------

-- Mapmode: Conquest Large - Assault64 - Tank Superiority - Assault - Assault#2 (32)
Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" or SharedUtils:GetCurrentGameMode() == "TankSuperiority0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall1" then

ResourceManager:RegisterInstanceLoadHandler(partition_grenade, instance_grenade, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.shot.initialSpeed.z = 25
	end)

-- --------------------------------------

-- Mapmode: Conquest Small - Rush - Squad Rush - Capture the flag (16)
	else
		if SharedUtils:GetCurrentGameMode() == "ConquestSmall0" or SharedUtils:GetCurrentGameMode() == "RushLarge0" or SharedUtils:GetCurrentGameMode() == "SquadRush0" or SharedUtils:GetCurrentGameMode() == "CaptureTheFlag0" then

ResourceManager:RegisterInstanceLoadHandler(partition_grenade, instance_grenade, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 16
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.shot.initialSpeed.z = 25
	end)

-- --------------------------------------

-- Mapmode: Conquest Domination - Team Deathmatch - Squad Deathmatch - TDM Close Quarters - Scavenger (8)
	else
	if SharedUtils:GetCurrentGameMode() == "TeamDeathMatch0" or SharedUtils:GetCurrentGameMode() == "SquadDeathMatch0" or SharedUtils:GetCurrentGameMode() == "TeamDeathMatchC0" or SharedUtils:GetCurrentGameMode() == "Domination0" or SharedUtils:GetCurrentGameMode() == "Scavenger0" then

ResourceManager:RegisterInstanceLoadHandler(partition_grenade, instance_grenade, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 8
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.shot.initialSpeed.z = 25
	end)

-- --------------------------------------

end
end
end

end)
