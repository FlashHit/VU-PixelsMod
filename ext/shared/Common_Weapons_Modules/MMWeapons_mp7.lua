class "MMWeapons_mp7"

function MMWeapons_mp7:Write(mmResources)

	if (mmResources:IsLoaded('mp7')) then
		mmResources:SetLoaded('mp7', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('mp7'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed mp7 - Pimped AMMO size...')
	end

end
return MMWeapons_mp7()