   local partition_m15 = Guid ("B38C8E78-EBE6-11DF-8768-F4F1C9378C27")
    local instance_m15 = Guid ("D1110C87-5913-43A4-A47F-04AD47B0C611")

   local partition_m15exp = Guid ("49F4451D-D64E-45E5-BC96-B39CE8BC4D10")
    local instance_m15exp = Guid ("EA440D5D-925C-4239-8463-4FE3EAD30C5F")

   local partition_m15expentity = Guid ("49F4451D-D64E-45E5-BC96-B39CE8BC4D10")
    local instance_m15expentity = Guid ("D936971A-354B-49B7-BCCA-4FE01B68D395")


ResourceManager:RegisterInstanceLoadHandler(partition_m15, instance_m15, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.numberOfMagazines = 16 -- atention, this is a multiplier x2
    loadedInstance.ammo.autoReplenishDelay = 0.5
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 0.5
    loadedInstance.fireLogic.rateOfFire = 250.0
	print('Changed Turbo M15 tank mine - Increased AMMO size ...')
	end)



ResourceManager:RegisterInstanceLoadHandler(partition_m15expentity, instance_m15expentity, function(loadedInstance)
     loadedInstance = ExplosionPackEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.maxAttachableInclination = 180
    loadedInstance.health = 1
    loadedInstance.maxCount = 32  -- Total mines you can place
	print('Changed Turbo M15 tank mine - now you can place even more mines ! ...')
	end)



ResourceManager:RegisterInstanceLoadHandler(partition_m15exp, instance_m15exp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = 1500 -- Normal = 500
    loadedInstance.blastRadius = 15 -- Normal = 5
    loadedInstance.blastImpulse = 9000 -- Normal = 6000
    loadedInstance.shockwaveDamage = 10 -- Normal = 1
    loadedInstance.shockwaveRadius = 15 -- Normal = 6
    loadedInstance.shockwaveImpulse = 2000 -- Normal = 2000
    loadedInstance.shockwaveTime = 0
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true
	print('Changed Turbo M15 tank mine - Things goes BOOOOOOOOM !!!...')
	end)
 