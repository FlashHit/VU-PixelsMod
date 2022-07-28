   local partition_radarsweep_lav25 = Guid ("D124CDD4-FE2A-11DF-BB74-FD1A26B74EE5")
   local instance_radarsweep_lav25 = Guid ("30769039-A9CD-4B93-BC5B-34E59265A25F")
   local partition_radarsweep_lavAD = Guid ("0E23F40F-CDB3-4B9E-A36B-BD338CFA35BC")
   local instance_radarsweep_lavAD = Guid ("5BD5B6E3-4BB8-4145-90B0-D0D587E15F3C")
   local partition_radarsweep_lav25_1 = Guid ("D124CDD4-FE2A-11DF-BB74-FD1A26B74EE5")
   local instance_radarsweep_lav25_1 = Guid ("30769039-A9CD-4B93-BC5B-34E59265A25F")


ResourceManager:RegisterInstanceLoadHandler(partition_radarsweep_lav25, instance_radarsweep_lav25, function(loadedInstance)
     loadedInstance = RadarSweepComponentData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.controllableSweepRadius = 60
    loadedInstance.controllableSweepInterval = 1.5
    loadedInstance.sweepForMines = true
    loadedInstance.mineSweepRadius = 60
    loadedInstance.mineSweepInterval = 1.5
	print('Changed LAV-25 Radarsweep Range...')
	end)


ResourceManager:RegisterInstanceLoadHandler(partition_radarsweep_lav25_1, instance_radarsweep_lav25_1, function(loadedInstance)
     loadedInstance = RadarSweepComponentData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.controllableSweepRadius = 60
    loadedInstance.controllableSweepInterval = 1.5
    loadedInstance.sweepForMines = true
    loadedInstance.mineSweepRadius = 60
    loadedInstance.mineSweepInterval = 1.5
	print('Changed LAV-25 (1) Radarsweep Range...')
	end)


ResourceManager:RegisterInstanceLoadHandler(partition_radarsweep_lavAD, instance_radarsweep_lavAD, function(loadedInstance)
     loadedInstance = RadarSweepComponentData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.controllableSweepRadius = 60
    loadedInstance.controllableSweepInterval = 1.5
    loadedInstance.sweepForMines = true
    loadedInstance.mineSweepRadius = 60
    loadedInstance.mineSweepInterval = 1.5
	print('Changed LAV-AD Radarsweep Range...')
	end)
