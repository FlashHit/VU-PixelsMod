class "MMWeapons_acwr"

function MMWeapons_acwr:Write(mmResources)

	if (mmResources:IsLoaded('acwr')) then
		mmResources:SetLoaded('acwr', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('acwr'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed acwr - Pimped AMMO size...')
	end

end
return MMWeapons_acwr()