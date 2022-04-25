class "MMVehicles_tank"

function MMVehicles_tank:Write(mmResources)

-- M1128 Stryker US --

	if (mmResources:IsLoaded('m1128shell')) then
		mmResources:SetLoaded('m1128shell', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('m1128shell'))
		bulletData:MakeWritable()
		bulletData.gravity = 0.5
--		bulletData.impactImpulse = 15000
--		bulletData.startDamage = 250
--		bulletData.endDamage = 250
--		bulletData.initialSpeed = 250
		bulletData.timeToLive = 4
		print('Changed M1128 Stryker Shell Modifier ... ... ...')
	end

--	if (mmResources:IsLoaded('m1128engine')) then
--		mmResources:SetLoaded('m1128engine', false)
--
--		local engineData = CombustionEngineConfigData(mmResources:GetInstance('m1128engine'))
--		engineData:MakeWritable()
--		engineData.enginePowerMultiplier = 18
--		print('Changed M1128 Stryker Engine...')
--	end 


-- Sprut-SD RU --

	if (mmResources:IsLoaded('sprutsdshell')) then
		mmResources:SetLoaded('sprutsdshell', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('sprutsdshell'))
		bulletData:MakeWritable()
		bulletData.gravity = 0.5
--		bulletData.impactImpulse = 15000
--		bulletData.startDamage = 250
--		bulletData.endDamage = 250
--		bulletData.initialSpeed = 250
		bulletData.timeToLive = 4
		print('Changed Sprut-SD Shell Modifier ... ... ...')
	end


-- --------------------------------------------------------------------------------------------------------
-- US Tank --

	if (mmResources:IsLoaded('m1abramsshell')) then
		mmResources:SetLoaded('m1abramsshell', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('m1abramsshell'))
		bulletData:MakeWritable()
		bulletData.gravity = 0.5
--		bulletData.impactImpulse = 15000
--		bulletData.startDamage = 250
--		bulletData.endDamage = 250
--		bulletData.initialSpeed = 250
		bulletData.timeToLive = 4
		print('Changed M1Abrams Shell...')
	end

--	if (mmResources:IsLoaded('m1abramsshot')) then
--		mmResources:SetLoaded('m1abramsshot', false)
--
--		local fireData = FiringFunctionData(mmResources:GetInstance('m1abramsshot'))
--		fireData:MakeWritable()
--		fireData.shot.initialSpeed.z = 100
--		fireData.fireLogic.rateOfFire = 350
--		fireData.fireLogic.reloadTime = 0.5
--		print('Changed M1Abrams Cannon...')
--	end

--	if (mmResources:IsLoaded('mbtcannon')) then
--		mmResources:SetLoaded('mbtcannon', false)
--
--		local weaponData = WeaponComponentData(mmResources:GetInstance('mbtcannon'))
--		weaponData:MakeWritable()
--		weaponData.impulseStrength = 100
--		weaponData.transform.forward.z = 0
--		print('Changed MBT Cannon...')
--	end

--	if (mmResources:IsLoaded('m1abramsengine')) then
--		mmResources:SetLoaded('m1abramsengine', false)
--
--		local engineData = CombustionEngineConfigData(mmResources:GetInstance('m1abramsengine'))
--		engineData:MakeWritable()
--		engineData.enginePowerMultiplier = 3
--		engineData.boost.forwardStrength = 4
--		print('Changed M1Abrams Engine...')
--	end

--	if (mmResources:IsLoaded('m1abramswheel') and false) then
--		mmResources:SetLoaded('m1abramswheel', false)
--
--		local wheelData = WheelConfigData(mmResources:GetInstance('m1abramswheel'))
--		wheelData:MakeWritable()
--
--		--wheelData.slopeGripMinAngle = 0
--		--wheelData.slopeGripMaxAngle = 91
--		--wheelData.slopeGripExponent = 20
--
--		wheelData.sideSlipAngleMaxSlipCondition = 172000.0
--    	wheelData.angularVelocityMinSlipCondition = 0.00570000009611
--    	wheelData.wheelVelocityXMinSlipCondition = 3600.0
--    	wheelData.wheelSlipRatioMaxSlipCondition = 1000.0
--
--		wheelData.lowSpeedSteeringSensitivity = 1
--		wheelData.midSpeedSteeringSensitivity = 1
--		wheelData.highSpeedSteeringSensitivity = 1
--
--		wheelData.lowSpeedSteeringSensitivityLimit = 20.0
--    	wheelData.midSpeedSteeringSensitivityLimit = 50.0
--    	wheelData.highSpeedSteeringSensitivityLimit = 70.0
--
--    	wheelData.trackedTurnSpeedLimit = 3
--    	wheelData.trackedForwardSpeedLimit = 1.5
--
--		wheelData.longitudinalFrictionForceMaxFactor = 10
--		wheelData.lateralFrictionForceMaxFactor = 10
--
--		wheelData.steeringSensitivity[1].steeringSensitivity = 1
--		wheelData.steeringSensitivity[2].steeringSensitivity = 1
--		wheelData.steeringSensitivity[3].steeringSensitivity = 1
--		wheelData.steeringSensitivity[4].steeringSensitivity = 1
--		wheelData.steeringSensitivity[5].steeringSensitivity = 1
--		wheelData.steeringSensitivity[6].steeringSensitivity = 1
--		wheelData.steeringSensitivity[7].steeringSensitivity = 1
--		print('Changed M1Abrams Wheels...')
--	end

	


-- --------------------------------------------------------------------------------------------------------
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

return MMVehicles_tank()