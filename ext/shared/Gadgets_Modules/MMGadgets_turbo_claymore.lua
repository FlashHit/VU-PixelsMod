class "MMWeapons_claymore"

function MMWeapons_claymore:Write(instance)

	if (mmResources:IsLoaded('claymore_havok')) then
		mmResources:SetLoaded('claymore_havok', false)

		local expData = HavokAsset(mmResources:GetInstance('claymore_havok'))
		expData:MakeWritable()
		expData.scale = 2.0
		dprint('Changed Claymore HavokAsset...')
	end


	if (mmResources:IsLoaded('claymoreexp')) then
		mmResources:SetLoaded('claymoreexp', false)

		local expData = VeniceExplosionEntityData(mmResources:GetInstance('claymoreexp'))
		expData:MakeWritable()

var_blastDamage = 200 -- Normal = 112
var_blastRadius = 10 -- Normal = 4
var_blastImpulse = 3000 -- Normal = 2000
var_shockwaveDamage = 10 -- Normal = 1
var_shockwaveRadius = 15 -- Normal = 6
var_shockwaveImpulse = 1500 -- Normal = 500

		expData.blastDamage = var_blastDamage
		expData.blastRadius = var_blastRadius
		expData.blastImpulse = var_blastImpulse
		expData.shockwaveDamage = var_shockwaveDamage
		expData.shockwaveRadius = var_shockwaveRadius
		expData.shockwaveImpulse = var_shockwaveImpulse
		expData.shockwaveTime = 0
		expData.triggerImpairedHearing = true
		expData.isCausingSuppression = true
		dprint('Changed Turbo Claymore Explosion...')
	end

	if (mmResources:IsLoaded('claymore')) then
		mmResources:SetLoaded('claymore', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('claymore'))
		fireData:MakeWritable()
		fireData.ammo.numberOfMagazines = 16
		fireData.ammo.autoReplenishDelay = 0.1
		fireData.ammo.ammoBagPickupDelayMultiplier = 0.1

		fireData.fireLogic.rateOfFire = 250.0
		dprint('Changed Claymore magazine...')
	end 
	if (mmResources:IsLoaded('claymore_expentity')) then
		mmResources:SetLoaded('claymore_expentity', false)

		local expEntityData = ExplosionPackEntityData(mmResources:GetInstance('claymore_expentity'))
		expEntityData:MakeWritable()
		expEntityData.health = 5
		expEntityData.maxCount = 16
		dprint('Changed Claymore Placed Entity...')
	end 

end
return MMWeapons_claymore()
