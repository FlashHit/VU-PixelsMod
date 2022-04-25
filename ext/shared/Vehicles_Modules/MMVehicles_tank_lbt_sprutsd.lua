class "MMVehicles_tank_lbt_sprutsd"

function MMVehicles_tank_lbt_sprutsd:Write(mmResources)

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

--	if (mmResources:IsLoaded('sprutsdengine')) then
--		mmResources:SetLoaded('sprutsdengine', false)
--
--		local engineData = CombustionEngineConfigData(mmResources:GetInstance('sprutsdengine'))
--		engineData:MakeWritable()
--		engineData.enginePowerMultiplier = 5
--		engineData.boost.accelerationScale = 2
--		print('Changed Sprut-SD Engine...')
--	end 

-- --------------------------------------------------------------------------------------------------------

end
return MMVehicles_tank_lbt_sprutsd()
