class "MMWeapons_aek971"

function MMWeapons_aek971:Write(mmResources)


	if (mmResources:IsLoaded('aek971')) then
		mmResources:SetLoaded('aek971', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('aek971'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
	
		dprint('Changed AEK - Super charched AMMO...')
	end

end
return MMWeapons_aek971()