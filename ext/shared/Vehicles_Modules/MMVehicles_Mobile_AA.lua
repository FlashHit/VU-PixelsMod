class "MMVehicles_Mobile_AA"

function MMVehicles_Mobile_AA:Write(mmResources)

-- Mobile AA stuff --
	if (mmResources:IsLoaded('tunguskacannon')) then
		mmResources:SetLoaded('tunguskacannon', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('tunguskacannon'))
		fireData:MakeWritable()
		fireData.dispersion[1].minAngle = 0.05
		fireData.dispersion[1].maxAngle = 0.08
		fireData.dispersion[1].increasePerShot = 0.0005
		fireData.dispersion[1].decreasePerSecond = 0.025

		fireData.shot.initialSpeed.z = 1400

		fireData.fireLogic.rateOfFire = 4000

		fireData.fireLogic.recoil.maxRecoilAngleX = 0
		fireData.fireLogic.recoil.minRecoilAngleX = 0
		fireData.fireLogic.recoil.maxRecoilAngleY = 0
		fireData.fireLogic.recoil.minRecoilAngleY = 0
		fireData.fireLogic.recoil.maxRecoilAngleZ = 0
		fireData.fireLogic.recoil.minRecoilAngleZ = 0

-- Time till Mobile AA stops fireing, Default 0.011 --
		fireData.overHeat.heatPerBullet = 0.006

		print('Changed Tunguska Cannon...')
	end

	if (mmResources:IsLoaded('tunguskabullets')) then
		mmResources:SetLoaded('tunguskabullets', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('tunguskabullets'))
		bulletData:MakeWritable()
		bulletData.impactImpulse = 100
		bulletData.startDamage = 10
		bulletData.endDamage = 13
		bulletData.initialSpeed = 1400
		bulletData.timeToLive = 0.6
		print('Changed Tunguska Bullets...')
	end

end

return MMVehicles_Mobile_AA()