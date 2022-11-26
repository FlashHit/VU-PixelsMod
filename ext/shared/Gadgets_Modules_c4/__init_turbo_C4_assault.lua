   local partition_c4 = Guid ("90D317AC-2554-11E0-9BE1-9E3A551FF0D1")
   local instance_c4 = Guid ("6CF717B6-188A-4AE7-A1D2-CC1A2333C0D7")

   local partition_c4exp = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
   local instance_c4exp = Guid ("5FE6E2AD-072E-4722-984A-5C52BC66D4C1")

   local partition_c4expentity = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
   local instance_c4expentity = Guid ("09DCA5BB-BB2E-4EC6-B07F-5F74863EB458")

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
	print('Changed Gadgets: More damage on C4 Explosion - Conquest Assault ...')
	end)

Events:Subscribe('Level:LoadResources', function()

	if SharedUtils:GetCurrentGameMode() == "ConquestAssaultSmall0" then
ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 16
    loadedInstance.ammo.autoReplenishDelay = 0.1
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.1
    loadedInstance.fireLogic.rateOfFire = 250.0
	print('Changed Gadgets: Turbo C4 - Increased AMMO size - Conquest Assault ...')
	end)

	ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 16
	print('Changed Gadgets: Turbo C4 - Conquest Assault - can place more !...')
	end)
end
end)
