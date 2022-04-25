class "MMVehicles_tank_lbt_stryker"

function MMVehicles_tank_lbt_stryker:Write(mmResources)

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



end
return MMVehicles_tank_lbt_stryker()
