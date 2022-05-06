class "MMVehicles_tank_lbt_lav25_bmp2m"
-- US LAV-25 - RU BMP-2M

function MMVehicles_tank_lbt_lav25_bmp2m:Write(mmResources)

	if (mmResources:IsLoaded('lbt_shell1')) then
		mmResources:SetLoaded('lbt_shell1', false)

		local bulletData = FiringFunctionData(mmResources:GetInstance('lbt_shell1'))
		bulletData:MakeWritable()
		bulletData.ammo.magazineCapacity = 24
		print('Changed US LAV-25 - RU BMP-2M LBT 1 Shell Modifier ... ... ... ... ... ...')
	end



	if (mmResources:IsLoaded('lbt_shell2')) then
		mmResources:SetLoaded('lbt_shell2', false)

		local bulletData = FiringFunctionData(mmResources:GetInstance('lbt_shell2'))
		bulletData:MakeWritable()
		bulletData.ammo.magazineCapacity = 24
		print('Changed US LAV-25 - RU BMP-2M LBT 2 Shell Modifier ... ... ... ... ... ...')
	end

-- --------------------------------------------------------------------------------------------------------

end
return MMVehicles_tank_lbt_lav25_bmp2m()
