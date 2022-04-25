class "MMWeapons_pp2000"

function MMWeapons_pp2000:Write(mmResources)

	if (mmResources:IsLoaded('pp2000')) then
		mmResources:SetLoaded('pp2000', false)

		local weaponBP = SoldierWeaponBlueprint(mmResources:GetInstance('pp2000'))
		local weaponData = SoldierWeaponData(weaponBP.object)
		local fireData = ebxEditUtils:GetWritableContainer(weaponData, 'weaponFiring.primaryFire')
		fireData.fireLogic.rateOfFire = fireData.fireLogic.rateOfFire + 300
		fireData.ammo.magazineCapacity = fireData.ammo.magazineCapacity * 3
		fireData.ammo.numberOfMagazines = 10
		dprint('Changed pp2000 - Pimped AMMO size...')
	end

end
return MMWeapons_pp2000()