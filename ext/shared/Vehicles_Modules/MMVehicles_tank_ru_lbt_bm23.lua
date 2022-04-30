class "MMVehicles_tank_ru_lbt_bm23"

function MMVehicles_tank_ru_lbt_bm23:Write(mmResources)

-- RU BM-23 -- US M142 --

	if (mmResources:IsLoaded('bm23shell')) then
		mmResources:SetLoaded('bm23shell', false)

		local bulletData = FiringFunctionData(mmResources:GetInstance('bm23shell'))
		bulletData:MakeWritable()
		bulletData.ammo.magazineCapacity = 24
		print('Changed RU BM-23 and US M142 Shell Modifier ... ... ...')
	end

	if (mmResources:IsLoaded('bm23air')) then
		mmResources:SetLoaded('bm23air', false)

		local bulletData = FiringFunctionData(mmResources:GetInstance('bm23air'))
		bulletData:MakeWritable()
		bulletData.ammo.magazineCapacity = 24
		print('Changed RU BM-23 and US M142 Air Shell Modifier ... ... ...')
	end

-- --------------------------------------------------------------------------------------------------------

end
return MMVehicles_tank_ru_lbt_bm23()
