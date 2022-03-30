class "MMWeapons_aug"

function MMWeapons_aug:Write(mmResources)

	if (mmResources:IsLoaded('aug')) then
		mmResources:SetLoaded('aug', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('aug'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed aug - Pimped AMMO size...')
	end

end
return MMWeapons_aug()