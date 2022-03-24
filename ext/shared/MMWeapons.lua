class "MMWeapons"

function MMWeapons:Write(instance)

end

--Events:Subscribe('Level:Loaded', function()
--
--	if (mmResources:IsLoaded('smawmissile')) then
--		mmResources:SetLoaded('smawmissile', false)
--	end
--	if (mmResources:IsLoaded('rpgprojectile')) then
--		mmResources:SetLoaded('rpgprojectile', false)
--	end
--	if (mmResources:IsLoaded('12gfrag')) then
--		mmResources:SetLoaded('12gfrag', false)
--	end
--	if (mmResources:IsLoaded('m93rbullet')) then
--		mmResources:SetLoaded('m93rbullet', false)
--	end
--	if (mmResources:IsLoaded('40mmlvg_grenade')) then
--		mmResources:SetLoaded('40mmlvg_grenade', false)
--	end
--	if (mmResources:IsLoaded('40mmlvgsound')) then
--		mmResources:SetLoaded('40mmlvgsound', false)
--	end
--	if (mmResources:IsLoaded('sniperbullet')) then
--		mmResources:SetLoaded('sniperbullet', false)
--	end
--	if (mmResources:IsLoaded('crossbolt')) then
--		mmResources:SetLoaded('crossbolt', false)
--	end
--	if (mmResources:IsLoaded('crossboltsound')) then
--		mmResources:SetLoaded('crossboltsound', false)
--	end
--
--	for resourceName, resourceData in pairs(mmResources:Get()) do
--		if (mmResources:IsLoaded(resourceName)) then
--			print('WARNING - Possible Unused Resource: '..tostring(resourceName))
--			mmResources:SetLoaded(resourceName, false)
--		end
--	end 


function MMWeapons:ResetSwayData(swagData, minAngleMod, maxAngleMod, perShotMod, recoilMod, recoilHMod, recoilIncMod, recoilDecMod)

	local stances = {'stand', 'crouch', 'prone'}
	local zoomlevels = {'noZoom', 'zoom'}
	local poses = {'baseValue', 'moving', 'jumping', 'sprinting', 'vaultingSmallObject', 'vaultingMediumObject'}
	local transitions = {
		'proneToCrouch', 'proneToStand',
		'crouchToProne', 'crouchToStand',
		'standToProne', 'standToCrouch',
	}
	local suppressionZooms = {'Unzoomed', 'Zoomed'}
	if (type(minAngleMod) ~= 'number') then minAngleMod = 0 end
	if (type(maxAngleMod) ~= 'number') then maxAngleMod = 0 end
	if (type(perShotMod) ~= 'number') then perShotMod = 0 end
	if (type(recoilMod) ~= 'number') then recoilMod = 0 end
	if (type(recoilHMod) ~= 'number') then recoilHMod = 0 end
	if (type(recoilIncMod) ~= 'number') then recoilIncMod = 0 end
	if (type(recoilDecMod) ~= 'number') then recoilDecMod = 10 end

	for _,stance in pairs(stances) do
		for _,zoomlevel in pairs(zoomlevels) do

			for _,pose in pairs(poses) do

				if (stance == 'stand' or (stance ~= 'stand' and (pose == 'baseValue' or pose == 'moving'))) then
					swagData[stance][zoomlevel][pose].minAngle = swagData[stance][zoomlevel][pose].minAngle * minAngleMod
					swagData[stance][zoomlevel][pose].maxAngle = swagData[stance][zoomlevel][pose].maxAngle * maxAngleMod
					swagData[stance][zoomlevel][pose].increasePerShot = swagData[stance][zoomlevel][pose].increasePerShot * perShotMod
				end
			end

			swagData[stance][zoomlevel].recoil.recoilAmplitudeMax = swagData[stance][zoomlevel].recoil.recoilAmplitudeMax * recoilMod
			swagData[stance][zoomlevel].recoil.recoilAmplitudeIncPerShot = swagData[stance][zoomlevel].recoil.recoilAmplitudeIncPerShot * recoilIncMod
			swagData[stance][zoomlevel].recoil.horizontalRecoilAmplitudeIncPerShotMin = swagData[stance][zoomlevel].recoil.horizontalRecoilAmplitudeIncPerShotMin * recoilIncMod
			swagData[stance][zoomlevel].recoil.horizontalRecoilAmplitudeIncPerShotMax = swagData[stance][zoomlevel].recoil.horizontalRecoilAmplitudeIncPerShotMax * recoilIncMod
			swagData[stance][zoomlevel].recoil.horizontalRecoilAmplitudeMax = swagData[stance][zoomlevel].recoil.horizontalRecoilAmplitudeMax * recoilHMod
			swagData[stance][zoomlevel].recoil.recoilAmplitudeDecreaseFactor = swagData[stance][zoomlevel].recoil.recoilAmplitudeDecreaseFactor * recoilDecMod
		end
	end

	for _,transition in pairs(transitions) do
		swagData[transition].maxPenaltyValue.minAngle = 0
		swagData[transition].maxPenaltyValue.maxAngle = 0
		swagData[transition].maxPenaltyValue.increasePerShot = 0
		swagData[transition].coolDown = 0
	end

	for _,zoom in pairs(suppressionZooms) do
		swagData['suppressionModifier'..zoom].dispersionMod.minAngleModifier = 0
		swagData['suppressionModifier'..zoom].dispersionMod.maxAngleModifier = 0
		swagData['suppressionModifier'..zoom].dispersionMod.increasePerShotModifier = 0
		swagData['suppressionModifier'..zoom].recoilAngleMod = 0
	end

	swagData.firstShotRecoilMultiplier = 0
end

-- specific to GunMaster only
function MMWeapons:OverrideGMMagSize(weaponData, newMagSize)

	if (weaponData == nil or weaponData.weaponModifierData == nil or #weaponData.weaponModifierData == 0) then
		return
	end

	for i=1, #weaponData.weaponModifierData do
		local weaponModData = WeaponModifierData(weaponData.weaponModifierData[i])
		if (weaponModData.unlockAsset:Is('UnlockAsset')) then
			local unlockAsset = UnlockAsset(weaponModData.unlockAsset)
			if (unlockAsset.name == 'Gameplay/XP2/GM_Deploytime') then
				for j=1, #weaponModData.modifiers do
					local unlockMod = weaponModData.modifiers[j]
					if (unlockMod:Is('WeaponMagazineModifier')) then
						local magMod = WeaponMagazineModifier(unlockMod)
						magMod:MakeWritable()
						magMod.magazineCapacity = newMagSize
					end
				end
			end
		end
	end
end

-- specific to GunMaster only
function MMWeapons:SetGMLevelKills(gmKillCounterInstance)

	local gmCounterData = GunMasterKillCounterEntityData(gmKillCounterInstance)
	gmCounterData:MakeWritable()

	local gmPreset_Normal = gmCounterData.weaponsPreset[1].gunMasterLevelInfos
	local gmPreset_NormalReversed = gmCounterData.weaponsPreset[2].gunMasterLevelInfos
	local gmPreset_LightWeight = gmCounterData.weaponsPreset[3].gunMasterLevelInfos
	local gmPreset_HeavyGear = gmCounterData.weaponsPreset[4].gunMasterLevelInfos
	local gmPreset_PistolRun = gmCounterData.weaponsPreset[5].gunMasterLevelInfos
	local gmPreset_SnipersDelight = gmCounterData.weaponsPreset[6].gunMasterLevelInfos
	local gmPreset_USArmsRace = gmCounterData.weaponsPreset[7].gunMasterLevelInfos
	local gmPreset_RUArmsRace = gmCounterData.weaponsPreset[8].gunMasterLevelInfos
	local gmPreset_EUArmsRace = gmCounterData.weaponsPreset[9].gunMasterLevelInfos

	gmPreset_Normal[1].killsNeeded = 1 	-- GM_MP443
	gmPreset_Normal[2].killsNeeded = 2 	-- GM_M93
	gmPreset_Normal[3].killsNeeded = 2 	-- GM_T44
	gmPreset_Normal[4].killsNeeded = 2 	-- GM_PP
	gmPreset_Normal[5].killsNeeded = 2 	-- GM_P90
	gmPreset_Normal[6].killsNeeded = 4 	-- GM_SPAS
	gmPreset_Normal[7].killsNeeded = 1 	-- GM_Jackhammer
	gmPreset_Normal[8].killsNeeded = 2 	-- GM_ACR
	gmPreset_Normal[9].killsNeeded = 3 	-- GM_MTAR
	gmPreset_Normal[10].killsNeeded = 2	-- GM_AUG
	gmPreset_Normal[11].killsNeeded = 2	-- GM_SCAR
	gmPreset_Normal[12].killsNeeded = 2	-- GM_LSAT
	gmPreset_Normal[13].killsNeeded = 2	-- GM_L86
	gmPreset_Normal[14].killsNeeded = 2	-- GM_M417
	gmPreset_Normal[15].killsNeeded = 2	-- GM_JNG90
	gmPreset_Normal[16].killsNeeded = 2	-- GM_M320
	gmPreset_Normal[17].killsNeeded = 2	-- GM_Knife

	gmPreset_NormalReversed[1].killsNeeded = 2 	-- GM_JNG90
	gmPreset_NormalReversed[2].killsNeeded = 2 	-- GM_M417
	gmPreset_NormalReversed[3].killsNeeded = 2 	-- GM_L86
	gmPreset_NormalReversed[4].killsNeeded = 2 	-- GM_LSAT
	gmPreset_NormalReversed[5].killsNeeded = 2 	-- GM_SCAR
	gmPreset_NormalReversed[6].killsNeeded = 2 	-- GM_AUG
	gmPreset_NormalReversed[7].killsNeeded = 3 	-- GM_MTAR
	gmPreset_NormalReversed[8].killsNeeded = 2 	-- GM_ACR
	gmPreset_NormalReversed[9].killsNeeded = 1 	-- GM_Jackhammer
	gmPreset_NormalReversed[10].killsNeeded = 4	-- GM_SPAS
	gmPreset_NormalReversed[11].killsNeeded = 2	-- GM_P90
	gmPreset_NormalReversed[12].killsNeeded = 2	-- GM_PP
	gmPreset_NormalReversed[13].killsNeeded = 2	-- GM_T44
	gmPreset_NormalReversed[14].killsNeeded = 2	-- GM_M93
	gmPreset_NormalReversed[15].killsNeeded = 1	-- GM_MP443
	gmPreset_NormalReversed[16].killsNeeded = 2	-- GM_M320
	gmPreset_NormalReversed[17].killsNeeded = 2	-- GM_Knife

end

return MMWeapons()