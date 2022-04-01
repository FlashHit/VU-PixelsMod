class "MMHandgun_dummy"

function MMHandgun_dummy:Write(mmResources)

	if (mmResources:IsLoaded('l86')) then
		mmResources:SetLoaded('l86', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('l86'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed l86 LMG - Pimped AMMO size...')
	end

end
return MMHandgun_dummy()