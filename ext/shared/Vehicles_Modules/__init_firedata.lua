--

   local partition_lav25_atgm = Guid ("ACFD0C2A-2D69-496A-AE55-9E09EE43BAF0")
   local instance_lav25_atgm = Guid ("538CDF32-5BBF-4D0B-849D-A59079D0AEEA")

ResourceManager:RegisterInstanceLoadHandler(partition_lav25_atgm, instance_lav25_atgm, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 12
    loadedInstance.ammo.numberOfMagazines = -1
    loadedInstance.fireLogic.reloadTime = 4.0
	print('Changed Atack Vehicle Firedata : US LAV-25 ATGM Launcher ...')
	end)

--

   local partition_bmp2m_atgm = Guid ("9A3C60F7-4A0F-B735-3B7C-FA64DDE35E4E")
   local instance_bmp2m_atgm = Guid ("52EC2FFF-2E86-26DC-41A2-4CA3B92F3C05")

ResourceManager:RegisterInstanceLoadHandler(partition_bmp2m_atgm, instance_bmp2m_atgm, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 12
    loadedInstance.ammo.numberOfMagazines = -1
    loadedInstance.fireLogic.reloadTime = 4.0
	print('Changed Atack Vehicle Firedata : RU BMP-2M ATGM Launcher ...')
	end)
-- IFV_ATGM_Projectile lav25 btr90 m142 bm32

-- ---------------------------------------------------------------------------------------
