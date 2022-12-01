--

   local partition_lav25_atgm = Guid ("ACFD0C2A-2D69-496A-AE55-9E09EE43BAF0")
   local instance_lav25_atgm = Guid ("538CDF32-5BBF-4D0B-849D-A59079D0AEEA")

ResourceManager:RegisterInstanceLoadHandler(partition_lav25_atgm, instance_lav25_atgm, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 12
    loadedInstance.ammo.numberOfMagazines = -1
    loadedInstance.fireLogic.reloadTime = 4.0
	print('Changed Atack Vehicle Firedata: US ATGM Launcher ...')
	end)

   local partition_bmp2m_atgm = Guid ("9A3C60F7-4A0F-B735-3B7C-FA64DDE35E4E")
   local instance_bmp2m_atgm = Guid ("52EC2FFF-2E86-26DC-41A2-4CA3B92F3C05")

ResourceManager:RegisterInstanceLoadHandler(partition_bmp2m_atgm, instance_bmp2m_atgm, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 12
    loadedInstance.ammo.numberOfMagazines = -1
    loadedInstance.fireLogic.reloadTime = 4.0
	print('Changed Atack Vehicle Firedata: RU - ATGM Launcher ...')
	end)
-- IFV_ATGM_Projectile changes also: lav25 btr90 m142 bm32

-- ---------------------------------------------------------------------------------------

-- Mounted_M2HB_Firing.txt
-- Used on US vehicles: Growler ITV (jeep) - RHIB (gunner) - DPV (gunner)
-- Used on phoenix (gunner) - 

   local partition_unknown1 = Guid ("F7DEF272-8440-46AB-A624-B7C102471DF6")
    local instance_unknown1 = Guid ("1E98B2EB-7272-4899-9D55-78C5EEDB4305")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown1, instance_unknown1, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed land Vehicle: US Growler ITV / RHIB / Phoenix - Firedata: Gunner ammo size ...')
	end)

-- --------------------------------------
-- Mounted_Minigun_Firing.txt
-- Used on US Vehicles: Railgun recon chopper - 
-- Used on RU Vehicles: Railgun recon chopper - 

   local partition_unknown2 = Guid ("B9DE386A-3798-41C9-983F-267BEA9A241B")
    local instance_unknown2 = Guid ("9ED3A887-06CF-4FA4-9E07-EFCFEA31B1F2")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown2, instance_unknown2, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed air vehicle: US/RU Recon chopper - Firedata: Railgun ammo size ...')
	end)

-- --------------------------------------
-- Mounted_PKM_Firing.txt
-- Used on RU vehicles: Bursak (gunner) - 

   local partition_unknown3 = Guid ("C260C6C5-EAD9-4586-A0B8-95830FD72B43")
    local instance_unknown3 = Guid ("0B1191CC-382D-40E2-BF33-21285554DD06")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown3, instance_unknown3, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: RU gunner ammo size ...')
	end)

-- ---------------
-- Mounted_HMG_Firing.txt
-- Used on RU vehicles: VDV Buggy (jeep) - RHIB (gunner) - DPV (gunner)?

  local partition_unknown4 = Guid ("318A27B9-E92F-4BD0-83A0-23F9ABA59C73")
   local instance_unknown4 = Guid ("3F6AF461-5EDE-4881-A72A-92509DA21FEB")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown4, instance_unknown4, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed land vehicle: RU VDV Buggy / RHIB / DPV - Firedata: Gunner ammo size ...')
	end)

-- ---------------
-- Tank_Remote_HMG_Firing.txt
-- Used on US vehicles: LAV-25 (gunner) - HMMWV - M1 Abrams (tank,gunner) - AAV-7A1 AMTRAC (gunner) - 
-- Used on US vehicles: rhino - 

   local partition_unknown7 = Guid ("6C3AFD1A-A95D-4D02-BE45-5AFADE8B5A7F")
    local instance_unknown7 = Guid ("ACCB3DF7-5834-4520-811F-F0BC4B560D66")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown7, instance_unknown7, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: US HMG ammo size...')
	end)

-- ---------------
-- Coax_HMG_Firing.txt
-- Used on US vehicles: M1 Abrams (tank) -

   local partition_unknown8 = Guid ("36C4ACA3-19B2-42A0-BD85-DD555BFC4700")
    local instance_unknown8 = Guid ("7A0BDAC9-1F45-46D2-BA64-A68BAF942921")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown8, instance_unknown8, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: US Coax HMG ammo size ...')
	end)

-- ---------------
-- Coax_LMG_Firing.txt
-- Used on US vehicles: LAV-25 - M1 Abrams (tank) - M1128 (gunners)
-- Used on RU vehicles: sprud-sd (gunners) -

   local partition_unknown9 = Guid ("38D0C787-E880-4E5A-BE89-9E697402C3DA")
    local instance_unknown9 = Guid ("5446DA55-1462-4B6F-B54D-4B9708C5CE67")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown9, instance_unknown9, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: US/RU Coax LMG ammo size...')
	end)

-- ---------------
-- GAU8_cannon_firing.txt
-- Used on RU vehicle: SU25TM frogfoot 
-- Used on US vehicle: A10 thunderbolt

   local partition_unknown10 = Guid ("71B9175E-431B-405F-8E7A-6CA6745BEE47")
    local instance_unknown10 = Guid ("C1642697-2490-4AED-99D2-CFBDC84CD311")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown10, instance_unknown10, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 1000
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Changed tank destroyers - Firedata: US/RU jets ammo size ...')
	end)

-- ---------------
-- Coax_LMG_Firing_M1128.txt
-- Used on US vehicles: M1128 -

   local partition_unknown11 = Guid ("16BFCBCD-F0B5-4AD3-A2A2-8ACBD9A230FC")
    local instance_unknown11 = Guid ("49620BD2-D6C1-40CB-B85F-88667893A8A8")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown11, instance_unknown11, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: US Coax LMG gun ...')
	end)

-- ---------------
-- Coax_HMG_Firing_Green_Tracer.txt
-- Used on RU vehicle: T-90A (tank) - 

   local partition_unknown15 = Guid ("33B87C86-1308-3B90-2FB3-C46309AF723B")
    local instance_unknown15 = Guid ("CA655F07-E3AB-9BF0-03E1-1003AF81993B")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown15, instance_unknown15, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed Heavy atack vehicle Firedata: RU coax HMG ammo size...')
	end)

-- ---------------
-- Coax_LMG_Firing_Green_Tracer.txt
-- Used on RU vehicle: BMP-2M - T-90A (tank) - BTR-90 - 

   local partition_unknown16 = Guid ("92A730E9-A070-1B6A-62F7-5C3C111F1CD5")
    local instance_unknown16 = Guid ("6DEBB13C-7F70-CE9B-3FC4-963B6843AE86")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown16, instance_unknown16, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: RU coax LMG ammo size ...')
	end)

-- ---------------
-- Tank_Remote_HMG_Firing_Green_Tracer.txt
-- Used on RU vehicle: GAZ-3937 Vodnik - BMP-2M (gunner)- T-90A (tank,gunner) 
-- Used on RU vehicle: BTR-90 (gunner) - 

   local partition_unknown17 = Guid ("0C27C964-2FC5-8754-05F3-582AF9EC9828")
    local instance_unknown17 = Guid ("6756D475-8CC0-B9C8-F2B7-1893ACF85974")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown17, instance_unknown17, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: RU coax HMG ammo size ...')
	end)

-- ---------------
-- Partition B74B48B5-A0AB-45D3-B056-256FA7752ACF
-- FiringFunctionData 9DFD3182-EB7F-43FC-ABE7-BA169CA2AA24

-- US: MBT_Canister_Firing.txt
-- Used on US vehicles: M1128 - 

   local partition_unknown18 = Guid ("B74B48B5-A0AB-45D3-B056-256FA7752ACF")
    local instance_unknown18 = Guid ("9DFD3182-EB7F-43FC-ABE7-BA169CA2AA24")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown18, instance_unknown18, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: US Canister shell ammo size ...')
	end)

-- ---------------
-- Partition B1EA7E55-A576-5A64-3D80-FC082B007543
-- FiringFunctionData 4660EC72-5C03-73AE-0354-446E2A9E8CF1
-- RU: MBT_Canister_Firing_T90.txt
-- Used on RU vehicles: sprud-sd - 

   local partition_unknown19 = Guid ("B1EA7E55-A576-5A64-3D80-FC082B007543")
    local instance_unknown19 = Guid ("4660EC72-5C03-73AE-0354-446E2A9E8CF1")

ResourceManager:RegisterInstanceLoadHandler(partition_unknown19, instance_unknown19, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 250
    loadedInstance.ammo.numberOfMagazines = -1
	print('Changed atack vehicle Firedata: RU Canister shell ammo size ...')
	end)

-- ---------------
