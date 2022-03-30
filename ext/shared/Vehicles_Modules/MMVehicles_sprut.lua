class "MMVehicles_sprut"

function MMVehicles_sprut:Write(mmResources)


	if (mmResources:IsLoaded('sprutsd')) then
		mmResources:SetLoaded('sprutsd', false)

		local chassisData = ChassisComponentData(mmResources:GetInstance('sprutsd'))
		chassisData:MakeWritable()
		chassisData.transform.left.x = 0.65
		chassisData.transform.up.y = 0.65
		chassisData.transform.forward.z = 0.65

		print('Changed Sprut-SD Chassis...')
	end

	if (mmResources:IsLoaded('sprutsdengine')) then
		mmResources:SetLoaded('sprutsdengine', false)

		local engineData = CombustionEngineConfigData(mmResources:GetInstance('sprutsdengine'))
		engineData:MakeWritable()
		engineData.enginePowerMultiplier = 5
		engineData.boost.accelerationScale = 2
		print('Changed Sprut-SD Engine...')
	end
end

return MMVehicles_sprut()