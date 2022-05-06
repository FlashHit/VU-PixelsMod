class "MMVehicles_tank_lbt_phoenix_barsuk"

function MMVehicles_tank_lbt_phoenix_barsuk:Write(mmResources)

-- US Phoenix - RU Barsuk

	if (mmResources:IsLoaded('lbt_shell4')) then
		mmResources:SetLoaded('lbt_shell4', false)

		local bulletData = FiringFunctionData(mmResources:GetInstance('lbt_shell4'))
		bulletData:MakeWritable()
		bulletData.ammo.magazineCapacity = 24
		print('Changed LBT Phoenix - Barsuk Shell Modifier ... ... ... ... ... ...')
	end

end
return MMVehicles_tank_lbt_phoenix_barsuk()
