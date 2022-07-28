   local partition_grenade = Guid ("FFF5DB09-E74B-11DF-9B5E-86394B544891")
   local instance_grenade = Guid ("04E1FA90-5B6E-4316-862C-15EB89652441")

   local partition_grenadeent = Guid ("CF031A0B-2492-11E0-85B7-F234A394297F")
   local instance_grenadeent = Guid ("326152E6-0F84-430D-D2E3-19EBDA8266C4")

   local partition_grenadeexp = Guid ("CF031A0B-2492-11E0-85B7-F234A394297F")
   local instance_grenadeexp = Guid ("0E0932A0-E8EF-4037-983B-F35A6F7FEEE5")


-- global setings for ALL mapmodes
var_timeToLive = 3 -- Time till the grenades explode, 2 = normal time
var_gravity = -3.5 -- The efect gravity has, 0 = no gravity + values pulls the nades up, -9.8 = normal
var_initialSpeed = 25 -- Speed you trow the grenades 35 = normal

var_numberOfBulletsPerShell = 15
var_numberOfBulletsPerShot = 15
-- Number of grenades you trow
-- --------------------------------------
var_blastDamage = 1500 -- 112 normal damage rate
var_blastRadius = 12 -- radius damage aplies, 7 = normal
var_blastImpulse = 140 -- impulse damage, 2000 = normal
var_shockwaveDamage = 40 -- Shockwave damage to area and player, 1 = normal
var_shockwaveRadius = 10 -- Damage radius for shockwave, 8 = normal
var_shockwaveImpulse = 60 -- shockwavedamage to area and player, 500 = normal




ResourceManager:RegisterInstanceLoadHandler(partition_grenadeent, instance_grenadeent, function(loadedInstance)
     loadedInstance = GrenadeEntityData(loadedInstance)
    loadedInstance:MakeWritable()


    loadedInstance.transform.left.x = 8
    loadedInstance.transform.up.y = 8
    loadedInstance.transform.forward.z = 8

    loadedInstance.timeToLive = var_timeToLive
    loadedInstance.gravity = var_gravity
	print('Changed M67 Grenade is now lighter ...')
	end)


ResourceManager:RegisterInstanceLoadHandler(partition_grenadeexp, instance_grenadeexp, function(loadedInstance)
     loadedInstance = VeniceExplosionEntityData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.blastDamage = var_blastDamage
    loadedInstance.blastRadius = var_blastRadius
    loadedInstance.blastImpulse = var_blastImpulse
    loadedInstance.shockwaveDamage = var_shockwaveDamage
    loadedInstance.shockwaveRadius = var_shockwaveRadius
    loadedInstance.shockwaveImpulse = var_shockwaveImpulse
    loadedInstance.triggerImpairedHearing = true
    loadedInstance.isCausingSuppression = true
	print('Changed M67 Grenade Explosion...')
	end)


ResourceManager:RegisterInstanceLoadHandler(partition_grenade, instance_grenade, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.weaponDispersion.standDispersion.minAngle = 5
    loadedInstance.weaponDispersion.standDispersion.maxAngle = 7
    loadedInstance.weaponDispersion.standDispersion.increasePerShot = 0.8
    loadedInstance.weaponDispersion.crouchDispersion.minAngle = 5
    loadedInstance.weaponDispersion.crouchDispersion.maxAngle = 7
    loadedInstance.weaponDispersion.crouchDispersion.increasePerShot = 0.8
    loadedInstance.weaponDispersion.proneDispersion.minAngle = 5
    loadedInstance.weaponDispersion.proneDispersion.maxAngle = 7
    loadedInstance.weaponDispersion.proneDispersion.increasePerShot = 0.8

    loadedInstance.shot.initialSpeed.z = var_initialSpeed
    loadedInstance.shot.numberOfBulletsPerShell = var_numberOfBulletsPerShell
    loadedInstance.shot.numberOfBulletsPerShot = var_numberOfBulletsPerShot

    loadedInstance.ammo.magazineCapacity = 1
    loadedInstance.ammo.numberOfMagazines = 32
    loadedInstance.ammo.ammoBagPickupDelayMultiplier = 2
	print('Changed M67 SUPER Grenade - Increased AMMO size...')
	end)
