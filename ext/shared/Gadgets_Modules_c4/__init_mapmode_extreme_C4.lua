-- TEST project for C4
-- Here is where partition and instance is placed

   local partition_c4 = Guid ("90D317AC-2554-11E0-9BE1-9E3A551FF0D1")
    local instance_c4 = Guid ("6CF717B6-188A-4AE7-A1D2-CC1A2333C0D7")

   local partition_c4expentity = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
    local instance_c4expentity = Guid ("09DCA5BB-BB2E-4EC6-B07F-5F74863EB458")

-- here the fun should start...

   local partition_c4exp = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
   local instance_c4exp = Guid ("5FE6E2AD-072E-4722-984A-5C52BC66D4C1")

ResourceManager:RegisterInstanceLoadHandler(partition_c4exp, instance_c4exp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 1500 -- Normal = 500
    loadedInstance.blastRadius = 15 -- Normal = 5.0
    loadedInstance.blastImpulse = 6000 -- Normal = 6000
    loadedInstance.shockwaveDamage = 15 -- Normal = 1.0
    loadedInstance.shockwaveRadius = 15 -- Normal = 6.0
    loadedInstance.shockwaveImpulse = 4000 -- Normal = 2000
    loadedInstance.shockwaveTime = 0
    loadedInstance.triggerImpairedHearing = false
    loadedInstance.isCausingSuppression = false
	print('Changed pimped C4 Explosion...')
	end)

-- ------------------------------


Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestLarge0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultLarge0" or SharedUtils:GetCurrentGameMode() == "TankSuperiority0" then
	ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.ammo.autoReplenishDelay = 0.1
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.1
    loadedInstance.fireLogic.rateOfFire = 250.0
end)

	ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 32
end)

	else
	if SharedUtils:GetCurrentGameMode() == "ConquestSmall0" or SharedUtils:GetCurrentGameMode() == "Domination0" then
	ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 16
    loadedInstance.ammo.autoReplenishDelay = 0.1
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.1
    loadedInstance.fireLogic.rateOfFire = 250.0
end)

	ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 16
end)

	else
	if SharedUtils:GetCurrentGameMode() == "TeamDeathMatch0" or SharedUtils:GetCurrentGameMode() == "SquadDeathMatch0" or SharedUtils:GetCurrentGameMode() == "TeamDeathMatchC0" then
	ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 8
    loadedInstance.ammo.autoReplenishDelay = 0.1
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.1
    loadedInstance.fireLogic.rateOfFire = 250.0
end)

	ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 8
end)

	else
	if SharedUtils:GetCurrentGameMode() == "RushLarge0" or SharedUtils:GetCurrentGameMode() == "SquadRush0" or SharedUtils:GetCurrentGameMode() == "CaptureTheFlag0" then
	ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 12
    loadedInstance.ammo.autoReplenishDelay = 0.1
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.1
    loadedInstance.fireLogic.rateOfFire = 250.0
end)

	ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 12
end)

	else
	if SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" or SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall1" then
	ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 24
    loadedInstance.ammo.autoReplenishDelay = 0.1
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.1
    loadedInstance.fireLogic.rateOfFire = 250.0
end)

	ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 24
end)


end
end
end
end
end

end)
	
-- #################################