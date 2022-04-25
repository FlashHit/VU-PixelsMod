class "MMVehicles_tank_ru"

function MMVehicles_tank_ru:Write(mmResources)

-- RU Tank --

	if (mmResources:IsLoaded('t90shell')) then
		mmResources:SetLoaded('t90shell', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('t90shell'))
		bulletData:MakeWritable()
		bulletData.gravity = 0.5
--		bulletData.impactImpulse = 15000
--		bulletData.startDamage = 250
--		bulletData.endDamage = 250
--		bulletData.initialSpeed = 250
		bulletData.timeToLive = 4
		print('Changed T90A Shell...')
	end

--
--	if (mmResources:IsLoaded('t90shot')) then
--		mmResources:SetLoaded('t90shot', false)
--
--		local fireData = FiringFunctionData(mmResources:GetInstance('t90shot'))
--		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 100
--		fireData.fireLogic.rateOfFire = 350
--		fireData.fireLogic.reloadTime = 0.5
--		print('Changed T90A Cannon...')
--	end

--	if (mmResources:IsLoaded('t90impact')) then
--		mmResources:SetLoaded('t90impact', false)
--
--		local expData = VeniceExplosionEntityData(mmResources:GetInstance('t90impact'))
--		expData:MakeWritable()
--		expData.blastDamage = 0
--		expData.blastRadius = 1.0
--		expData.blastImpulse = 90000
--		expData.shockwaveDamage = 0.1
--		expData.shockwaveRadius = 1.0
--		expData.shockwaveImpulse = 90000
--		expData.shockwaveTime = 0.1
--		expData.triggerImpairedHearing = false
--		expData.isCausingSuppression = false
--		print('Changed T90A Impact...')
--	end
--
--	if (mmResources:IsLoaded('t90impactsplash')) then
--		mmResources:SetLoaded('t90impactsplash', false)
--
--		local expData = VeniceExplosionEntityData(mmResources:GetInstance('t90impactsplash'))
--		expData:MakeWritable()
--		expData.blastDamage = 0
--		expData.blastRadius = 0
--		expData.blastImpulse = 0
--		expData.shockwaveDamage = 0
--		expData.shockwaveRadius = 0
--		expData.shockwaveImpulse = 0
--		expData.shockwaveTime = 0
--		expData.triggerImpairedHearing = false
--		expData.isCausingSuppression = false
--		print('Changed T90A Splash...')
--	end

end
return MMVehicles_tank_ru()
