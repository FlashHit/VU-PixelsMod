class "MMHandgun_mp412rex"

function MMHandgun_mp412rex:Write(mmResources)

	if (mmResources:IsLoaded('mp412rex')) then
		mmResources:SetLoaded('mp412rex', false)

		local fireData = FiringFunctionData(mmResources:GetInstance('mp412rex'))
		fireData:MakeWritable()
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed mp412rex - Pimped AMMO size...')
	end

end
return MMHandgun_mp412rex()