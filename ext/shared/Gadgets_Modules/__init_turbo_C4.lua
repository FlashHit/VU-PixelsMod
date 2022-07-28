   local partition_c4 = Guid ("90D317AC-2554-11E0-9BE1-9E3A551FF0D1")
   local instance_c4 = Guid ("6CF717B6-188A-4AE7-A1D2-CC1A2333C0D7")

   local partition_c4exp = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
   local instance_c4exp = Guid ("5FE6E2AD-072E-4722-984A-5C52BC66D4C1")

   local partition_c4expentity = Guid ("910AD7C5-2558-11E0-96DC-FF63A5537869")
   local instance_c4expentity = Guid ("09DCA5BB-BB2E-4EC6-B07F-5F74863EB458")

var_blastDamage = 1500 -- Normal = 500
var_blastRadius = 15.0 -- Normal = 5.0
var_blastImpulse = 6000.0 -- Normal = 6000
var_shockwaveDamage = 5.0 -- Normal = 1.0
var_shockwaveRadius = 12.0 -- Normal = 6.0
var_shockwaveImpulse = 4000.0 -- Normal = 2000


ResourceManager:RegisterInstanceLoadHandler(partition_c4exp, instance_c4exp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = var_blastDamage
    loadedInstance.blastRadius = var_blastRadius
    loadedInstance.blastImpulse = var_blastImpulse
    loadedInstance.shockwaveDamage = var_shockwaveDamage
    loadedInstance.shockwaveRadius = var_shockwaveRadius
    loadedInstance.shockwaveImpulse = var_shockwaveImpulse
    loadedInstance.shockwaveTime = 0
    loadedInstance.triggerImpairedHearing = false
    loadedInstance.isCausingSuppression = false
	print('Changed Turbo C4 Explosion...')
	end)

ResourceManager:RegisterInstanceLoadHandler(partition_c4, instance_c4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.ammo.autoReplenishDelay = 0.1
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.1
    loadedInstance.fireLogic.rateOfFire = 250.0
	print('Changed Turbo C4 - Increased AMMO size...')
	end)


ResourceManager:RegisterInstanceLoadHandler(partition_c4expentity, instance_c4expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.health = 1
    loadedInstance.maxCount = 32
	print('Changed Turbo C4 - can place more !...')
	end)

