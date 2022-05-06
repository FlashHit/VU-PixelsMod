class "MMVehicles_tank_lbt_amtrac"

function MMVehicles_tank_lbt_amtrac:Write(mmResources)
-- AMTRAC AAV-7A1

	if (mmResources:IsLoaded('lbt_shell3')) then
		mmResources:SetLoaded('lbt_shell3', false)

		local bulletData = FiringFunctionData(mmResources:GetInstance('lbt_shell3'))
		bulletData:MakeWritable()
		bulletData.ammo.magazineCapacity = 24

		print('Changed LBT Amtrac AAV-7A1 Shell Modifier ... ... ... ... ... ...')
	end

	if (mmResources:IsLoaded('lbt_shell3grav')) then
		mmResources:SetLoaded('lbt_shell3grav', false)

		local bulletData = BulletEntityData(mmResources:GetInstance('lbt_shell3grav'))
		bulletData:MakeWritable()
		bulletData.gravity = -1.0
		bulletData.timeToLive = 8.0

		print('Changed LBT Amtrac AAV-7A1 Gravity Modifier ... ... ... ... ... ...')
	end


end
return MMVehicles_tank_lbt_amtrac()
