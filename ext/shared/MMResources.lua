class "MMResources"

function MMResources:__init()
	self.LoadHandlers = {}
	self.MMResources = {}

--  -----------------------------------------------------------------------------
-- AMTRAC AAV-7A1
	self.MMResources["lbt_shell3"] = {}
	self.MMResources["lbt_shell3"]["Partition"] = '1995BB90-5EB4-4FA9-85B6-EC33AB985CE3'
	 self.MMResources["lbt_shell3"]["Instance"] = '1EFBF8CE-016A-4D78-AC3D-066463871BAA' -- FFD

	self.MMResources["lbt_shell3grav"] = {}
	self.MMResources["lbt_shell3grav"]["Partition"] = '1995BB90-5EB4-4FA9-85B6-EC33AB985CE3'
	 self.MMResources["lbt_shell3grav"]["Instance"] = 'CF718E63-EDA0-4A87-BEE5-CBF5CE3F66F8' -- BED

-- US Phoenix - RU Barsuk
	self.MMResources["lbt_shell4"] = {}
	self.MMResources["lbt_shell4"]["Partition"] = 'E8E52039-27D8-4629-8E4D-7B1F8A419175'
	 self.MMResources["lbt_shell4"]["Instance"] = '36BB119F-DD27-4DE5-93A1-644BB5F12A99' -- FFD


--  -----------------------------------------------------------------------------
-- US LAV-25 - RU BMP-2M - RU BTR 90 - 
	self.MMResources["lbt_shell1"] = {}
	self.MMResources["lbt_shell1"]["Partition"] = '347C7F28-38E4-4888-8567-AD4FFBD25299'
	 self.MMResources["lbt_shell1"]["Instance"] = 'F0F54699-EE70-4F17-8416-DF41912E183F' -- FFD

	self.MMResources["lbt_shell2"] = {}
	self.MMResources["lbt_shell2"]["Partition"] = '35DA1164-EAA9-4622-8D5A-704FF73DD295'
	 self.MMResources["lbt_shell2"]["Instance"] = '382C510B-6F52-4FA3-9D4A-C113F05323B8' -- FFD



--  -----------------------------------------------------------------------------
-- M220 TOW launcher RU --
	self.MMResources["kornet_launcher"] = {}
	self.MMResources["kornet_launcher"]["Partition"] = '814B23C4-E1D9-4E12-9E8C-3EFC4ADAAAC6'
	 self.MMResources["kornet_launcher"]["Instance"] = '14C0C6FE-AB2B-41E1-9099-482862877B88' -- ACV

	self.MMResources["kornet_projectile"] = {}
	self.MMResources["kornet_projectile"]["Partition"] = 'EE3F34C9-7624-11E0-B5FB-8FD0F7AE8C7B'
	 self.MMResources["kornet_projectile"]["Instance"] = 'EE3F34CA-7624-11E0-B5FB-8FD0F7AE8C7B' -- MED

-- -----------------------
-- TOW data
	self.MMResources["tow_launcher"] = {}
	self.MMResources["tow_launcher"]["Partition"] = 'F1B068BC-EDA2-11DF-A210-D95A58A9D93E'
	 self.MMResources["tow_launcher"]["Instance"] = '2ECE2821-FEF6-402E-9975-FC59E35305F4' -- ACV


--  -----------------------------------------------------------------------------
-- US Chopper mods --
-- Venom_Recon_US --
	self.MMResources["venomengine"] = {}
	self.MMResources["venomengine"]["Partition"] = '97945D87-011D-11E0-B97C-FC495C335A52'
	 self.MMResources["venomengine"]["Instance"] = '2B590EC0-F63D-482F-B210-0C707C9B71DB'

	self.MMResources["venomrotors"] = {}
	self.MMResources["venomrotors"]["Partition"] = '97945D87-011D-11E0-B97C-FC495C335A52'
	 self.MMResources["venomrotors"]["Instance"] = 'CBA6B1C2-5690-4F23-9F2B-C24FB9C4958B'
--  -----------------------------------------------------------------------------
-- AH6_Light_Atack_US
	self.MMResources["ah6engine"] = {}
	self.MMResources["ah6engine"]["Partition"] = 'FD8AB747-FF4D-11DD-A7B1-F7C6DEEC9D32'
	 self.MMResources["ah6engine"]["Instance"] = '15AB2B27-FF4E-11DD-A7B1-F7C6DEEC9D32'

	self.MMResources["ah6rotors"] = {}
	self.MMResources["ah6rotors"]["Partition"] = 'FD8AB747-FF4D-11DD-A7B1-F7C6DEEC9D32'
	 self.MMResources["ah6rotors"]["Instance"] = '15AB2B28-FF4E-11DD-A7B1-F7C6DEEC9D32'

--  -----------------------------------------------------------------------------
-- AH1Z_Atack_US
	self.MMResources["ah1zengine"] = {}
	self.MMResources["ah1zengine"]["Partition"] = '643135EA-6CA7-11DF-B6FA-F715AA601362'
	 self.MMResources["ah1zengine"]["Instance"] = 'DE4BF5C6-4EC4-45BE-9FDB-D71391F7D39B'

	self.MMResources["ah1zrotors"] = {}
	self.MMResources["ah1zrotors"]["Partition"] = '643135EA-6CA7-11DF-B6FA-F715AA601362'
	 self.MMResources["ah1zrotors"]["Instance"] = '1822C40A-247F-4EDB-AF22-5409774543B5'


--  -----------------------------------------------------------------------------

-- Shared stuff --
	self.MMResources["rocketpods"] = {} -- US and RU rocketpods
	self.MMResources["rocketpods"]["Partition"] = 'E64E52BD-4E40-4BFE-B6C3-49523084AE94'
	 self.MMResources["rocketpods"]["Instance"] = '3EE6789F-4113-42BA-B8FE-79DD5EF89FB1' -- FFD

	self.MMResources["gunnercannon"] = {} -- aplies on to the viper
	self.MMResources["gunnercannon"]["Partition"] = '0A232494-FB58-496E-BF30-FD9B39E12008'
	 self.MMResources["gunnercannon"]["Instance"] = 'E06B6CCE-F5A3-40E6-A41F-D442AC4D7434' -- FFD

	self.MMResources["tv_missile"] = {} -- 
	self.MMResources["tv_missile"]["Partition"] = 'B0ABD608-1E4E-4F82-9742-BED2CEC60940'
	 self.MMResources["tv_missile"]["Instance"] = 'D19A7398-0024-4FE0-81FB-7530CA0A353D' -- VPE


--  -----------------------------------------------------------------------------
-- RU Chopper mods --
-- Z11W_Light_Atack_RU
	self.MMResources["z11wengine"] = {}
	self.MMResources["z11wengine"]["Partition"] = 'D78088E5-38B7-11DE-BF1C-984D9AEE762C'
	 self.MMResources["z11wengine"]["Instance"] = 'D780B01D-38B7-11DE-BF1C-984D9AEE762C'

	self.MMResources["z11wrotors"] = {}
	self.MMResources["z11wrotors"]["Partition"] = 'D78088E5-38B7-11DE-BF1C-984D9AEE762C'
 	 self.MMResources["z11wrotors"]["Instance"] = 'D780B01E-38B7-11DE-BF1C-984D9AEE762C' 

--  -----------------------------------------------------------------------------
-- KA-60_Kasatka_Recon_RU
	self.MMResources["ka60engine"] = {}
	self.MMResources["ka60engine"]["Partition"] = '2C5892FC-37CB-4A4E-92E2-2DD7BAF08A5C'
	 self.MMResources["ka60engine"]["Instance"] = '3B771741-64EC-4740-B340-88D69EDCB2A4'

	self.MMResources["ka60rotors"] = {}
	self.MMResources["ka60rotors"]["Partition"] = '2C5892FC-37CB-4A4E-92E2-2DD7BAF08A5C'
	 self.MMResources["ka60rotors"]["Instance"] = '2D14442E-7269-4E54-9B53-5AFA0D64B302'

--  -----------------------------------------------------------------------------
-- Mi28_Atack_RU
	self.MMResources["mi28engine"] = {}
	self.MMResources["mi28engine"]["Partition"] = '89BE53B6-2FF4-11DE-8C23-DAB1D69416DE'
	 self.MMResources["mi28engine"]["Instance"] = '89BEA1FD-2FF4-11DE-8C23-DAB1D69416DE'

	self.MMResources["mi28rotors"] = {}
	self.MMResources["mi28rotors"]["Partition"] = '89BE53B6-2FF4-11DE-8C23-DAB1D69416DE'
	 self.MMResources["mi28rotors"]["Instance"] = '89BEA1FE-2FF4-11DE-8C23-DAB1D69416DE'

--  -----------------------------------------------------------------------------


-- Common Gadgets --
	self.MMResources["grenade"] = {}
	self.MMResources["grenade"]["Partition"] = 'FFF5DB09-E74B-11DF-9B5E-86394B544891'
	self.MMResources["grenade"]["Instance"] = '04E1FA90-5B6E-4316-862C-15EB89652441'

	self.MMResources["grenadeent"] = {}
	self.MMResources["grenadeent"]["Partition"] = 'CF031A0B-2492-11E0-85B7-F234A394297F'
	self.MMResources["grenadeent"]["Instance"] = '326152E6-0F84-430D-D2E3-19EBDA8266C4'

	self.MMResources["grenadeexp"] = {}
	self.MMResources["grenadeexp"]["Partition"] = 'CF031A0B-2492-11E0-85B7-F234A394297F'
	self.MMResources["grenadeexp"]["Instance"] = '0E0932A0-E8EF-4037-983B-F35A6F7FEEE5'

--	self.MMResources["knoife"] = {}
--	self.MMResources["knoife"]["Partition"] = 'B6CDC48A-3A8C-11E0-843A-AC0656909BCB'
--	self.MMResources["knoife"]["Instance"] = 'F21FB5EA-D7A6-EE7E-DDA2-C776D604CD2E'


-- SHOTGUNS --
-- Weapons Shotguns - Jackhammer - MK3A1 Shotgun --
	self.MMResources["jackhammer"] = {}
	self.MMResources["jackhammer"]["Partition"] = '014C428F-9A3C-4EA0-9F0C-873058E72438'
	self.MMResources["jackhammer"]["Instance"] = 'C57F6902-E9BE-44B8-BCFA-9FFEB3A9A93C'
	self.MMResources["jackhammer"]["FireFunction1"] = '3D4D9FCA-FD1A-4F7D-B278-C4676ACD15DF' -- 12g_buckshot
	self.MMResources["jackhammer"]["FireFunction2"] = '607CF93E-0510-460C-917B-C056A8CADBBC' -- 12g_flechette
	self.MMResources["jackhammer"]["FireFunction3"] = '20B53027-2589-465A-A1DF-DA737A940DAE' -- 12g_frag
	self.MMResources["jackhammer"]["FireFunction4"] = '91D7B0A3-AB80-4B91-96AC-94014C925478' -- 12g_slug

-- Weapons Shotguns - DAO12 Striker Shotgun --
	self.MMResources["DAO12"] = {}
	self.MMResources["DAO12"]["Partition"] = 'CE832020-046A-11E0-A970-FF10D557871E'
	self.MMResources["DAO12"]["Instance"] = 'CA0D0869-3535-27A3-AF84-5E992D3C24A9'
	self.MMResources["DAO12"]["FireFunction1"] = '0A70FC78-2199-462F-92B8-209D2F9211E1' -- 12g_buckshot
	self.MMResources["DAO12"]["FireFunction2"] = 'C601149B-890A-453E-8C9D-AE9C8B4216F4' -- 12g_flechette
	self.MMResources["DAO12"]["FireFunction3"] = '4F027BBA-5AE6-4DE1-B900-4461FC479015' -- 12g_frag
	self.MMResources["DAO12"]["FireFunction4"] = '38C05E70-31E9-4A41-A3CA-4FD74B079CF9' -- 12g_slug

-- Weapons Shotguns - M1014 Semi-automatic Shotgun --
	self.MMResources["M1014"] = {}
	self.MMResources["M1014"]["Partition"] = '460F1126-2578-11E0-96DC-FF63A5537869'
	self.MMResources["M1014"]["Instance"] = '707C6815-CFD6-FBE0-A5DE-915AFDA6350A'
	self.MMResources["M1014"]["FireFunction1"] = '28FF9461-5D36-4A7D-B187-CE7A538E66CA' -- 12g_buckshot
	self.MMResources["M1014"]["FireFunction2"] = '1D08ACCF-C1CA-4CF4-B550-18390BEF07ED' -- 12g_flechette
	self.MMResources["M1014"]["FireFunction3"] = '0DBAD71F-95F4-47D4-93C1-C1A37E1BD9B2' -- 12g_frag
	self.MMResources["M1014"]["FireFunction4"] = '8F3DAC3A-72B1-48D2-8CBF-8CAD8DECC4B1' -- 12g_slugs

-- Weapons Shotguns - USAS12 automatic Shotgun --
	self.MMResources["USAS12"] = {}
	self.MMResources["USAS12"]["Partition"] = 'F4F57492-38F5-11E0-845E-D6BEC180D605'
	self.MMResources["USAS12"]["Instance"] = 'BE7FC137-648E-67C2-22F7-2594900FFFCA'
	self.MMResources["USAS12"]["FireFunction1"] = '682FE06E-ECD8-4F30-9A6C-600F279D2FC2' -- 12g_buckshot
	self.MMResources["USAS12"]["FireFunction2"] = '0088688B-9DD2-4100-9F02-C5A227184F9C' -- 12g_flechette
	self.MMResources["USAS12"]["FireFunction3"] = '134AF0FC-0D7A-4BCE-83A5-259E39F69F63' -- 12g_frag
	self.MMResources["USAS12"]["FireFunction4"] = '36DE8274-A60D-4361-AA10-2040D0C0E23A' -- 12g_slug

-- Weapons Shotguns - Saiga 20K Semi --
	self.MMResources["Saiga20K"] = {}
	self.MMResources["Saiga20K"]["Partition"] = 'A119D627-257B-11E0-96DC-FF63A5537869'
	self.MMResources["Saiga20K"]["Instance"] = '9CBF227A-BCD6-B540-622B-B70BBC85331F'
	self.MMResources["Saiga20K"]["FireFunction1"] = 'C84F534F-5075-4EC1-8CAD-60D09F61A8A9' -- 12g_buckshot
	self.MMResources["Saiga20K"]["FireFunction2"] = 'D360086F-0720-4BFA-B690-665FF90B942D' -- 12g_flechette
	self.MMResources["Saiga20K"]["FireFunction3"] = 'CF1D6D6E-242A-4A2F-B163-166F9701543E' -- 12g_frag
	self.MMResources["Saiga20K"]["FireFunction4"] = 'E050498A-FD20-40DC-85A2-BCEB0C79ECAB' -- 12g_slug

-- Weapons Shotguns - Remington 870MCS --
	self.MMResources["870mcs"] = {}
	self.MMResources["870mcs"]["Partition"] = '50F905EA-E32B-11DF-931B-DC6D3E613E0F'
	self.MMResources["870mcs"]["Instance"] = 'B76D7661-C812-64C2-322C-A269E40A1CD7'
	self.MMResources["870mcs"]["FireFunction1"] = '23EA5A02-84C7-4163-9210-B26E6CB37DC4' -- 12g_buckshot
	self.MMResources["870mcs"]["FireFunction2"] = '62ED76A6-D4B3-46D6-887C-F720E2FA3147' -- 12g_flechette
	self.MMResources["870mcs"]["FireFunction3"] = 'DC77650A-A5AF-48E4-B2EF-BCE2FB8BD54A' -- 12g_frag
	self.MMResources["870mcs"]["FireFunction4"] = '71E1E801-312C-43E7-886D-30AB75ACC629' -- 12g_slug

-- Weapons Shotguns - spas12 --
	self.MMResources["spas12"] = {}
	self.MMResources["spas12"]["Partition"] = '37F8F2ED-CAC0-42E8-B77B-2300A99C3B0F'
	self.MMResources["spas12"]["Instance"] = '27C36CA8-C16D-4D2B-B3DC-73E7AF91BE85'
	self.MMResources["spas12"]["FireFunction1"] = 'B8F55C07-0412-4D22-9FAC-5DDA807244FB' -- 12g_buckshot
	self.MMResources["spas12"]["FireFunction2"] = '9DC63986-E3C8-42C1-B431-88148AE1F1FA' -- 12g_flechette
	self.MMResources["spas12"]["FireFunction3"] = 'FCC8977C-04BF-4BB8-9F31-DC4EF3D03313' -- 12g_frag
	self.MMResources["spas12"]["FireFunction4"] = '92F0B89D-0B88-456A-B57C-50BD7F36BADA' -- 12g_slug

-- Common Handguns --
	self.MMResources["m9"] = {}
	self.MMResources["m9"]["Partition"] = '94D0FEE8-E685-11DF-805B-F4FA4757ED08'
	self.MMResources["m9"]["Instance"] = '4CDDA2E9-C167-4F81-9958-835EAC8C65D7'
	self.MMResources["gm_m9"] = {}
	self.MMResources["gm_m9"]["Partition"] = '3080B817-349A-47EB-AEFB-C6128456021F'
	self.MMResources["gm_m9"]["Instance"] = '26E5B12B-462C-4429-917D-792233362480'

	self.MMResources["g17c"] = {} -- glock18.txt datafile
	self.MMResources["g17c"]["Partition"] = '3B3F9879-EB4B-11DF-8AA6-AE0344995412'
	self.MMResources["g17c"]["Instance"] = '56911FB5-F016-456D-8B7E-A50C4EE33D6C'
	self.MMResources["g17c_supp"] = {} -- glock18.txt datafile
	self.MMResources["g17c_supp"]["Partition"] = '3B3F9879-EB4B-11DF-8AA6-AE0344995412'
	self.MMResources["g17c_supp"]["Instance"] = 'EE3C5B46-187E-43CF-8D9C-9058482BAABB'
	
	self.MMResources["mp443"] = {}
	self.MMResources["mp443"]["Partition"] = '0D4646B4-F3DF-11DF-B48C-9F474D51EF2A'
	self.MMResources["mp443"]["Instance"] = '53489D8D-BE0B-4180-9F96-F1B728EFD898'
	self.MMResources["gm_mp443"] = {}
	self.MMResources["gm_mp443"]["Partition"] = 'ED5DEF93-B621-456F-8246-33BFC9E564C2'
	self.MMResources["gm_mp443"]["Instance"] = 'C2E77536-5D91-43AF-B78D-03CDC06C3A6D'


	self.MMResources["g18"] = {}
	self.MMResources["g18"]["Partition"] = '3B3F9879-EB4B-11DF-8AA6-AE0344995412'
	self.MMResources["g18"]["Instance"] = 'F3830102-A4A4-416F-B4D6-6C9C6FAADDCC'
	self.MMResources["g18_supp"] = {}
	self.MMResources["g18_supp"]["Partition"] = '3B3F9879-EB4B-11DF-8AA6-AE0344995412'
	self.MMResources["g18_supp"]["Instance"] = 'EE3C5B46-187E-43CF-8D9C-9058482BAABB'

	self.MMResources["magnum44"] = {}
	self.MMResources["magnum44"]["Partition"] = '21E91507-2AF6-11E0-9848-9E9BC51DCED8'
	self.MMResources["magnum44"]["Instance"] = 'B6CD5488-67E6-4063-8594-A09DAA2640F3'
	self.MMResources["gm_magnum44"] = {}
	self.MMResources["gm_magnum44"]["Partition"] = '584C0B65-BC87-4853-AD28-7B7CEB21B336'
	self.MMResources["gm_magnum44"]["Instance"] = '09C7A2C4-DA0C-4F4C-B1C9-772A66AEB157'

	self.MMResources["magnum44aim"] = {}
	self.MMResources["magnum44aim"]["Partition"] = '5DEFA236-40CF-48CF-8EA8-C1C0093F3013'
	self.MMResources["magnum44aim"]["Instance"] = '8BDECEC7-453B-4A88-87B4-A23D20C4147E'

	self.MMResources["magnum44scope"] = {}
	self.MMResources["magnum44scope"]["Partition"] = '21E91507-2AF6-11E0-9848-9E9BC51DCED8'
	self.MMResources["magnum44scope"]["Instance"] = '4F9AE8E4-7F90-4059-A3AC-6D511F77E8E3'

	self.MMResources["zoom20x"] = {}
	self.MMResources["zoom20x"]["Partition"] = '609CC1AC-4B36-4197-B1C1-2357E57CEBAF'
	self.MMResources["zoom20x"]["Instance"] = '34C9BF53-1E0C-42D3-9EC1-696421E8A420'



	self.MMResources["m93r"] = {}
	self.MMResources["m93r"]["Partition"] = '06374F08-F23B-11DF-A182-B47F2E879897'
	self.MMResources["m93r"]["Instance"] = '95EB502E-D5F7-5793-A108-5EC4E77802DA'
	self.MMResources["gm_m93r"] = {}
	self.MMResources["gm_m93r"]["Partition"] = '30870A1C-F7BE-494A-B65B-9B0EB380A93C'
	self.MMResources["gm_m93r"]["Instance"] = '08D76B3D-03BB-4B71-8BE3-406B9FDE6B4D' 

	self.MMResources["m93rbullet"] = {}
	self.MMResources["m93rbullet"]["Partition"] = '091E357E-9512-4B58-BF2E-744DAF8B9ADE'
	self.MMResources["m93rbullet"]["Instance"] = '3A93E9FC-5BE9-48A2-B479-EC73FF739038' 

	self.MMResources["mp412rex"] = {}
	self.MMResources["mp412rex"]["Partition"] = '2EB76B74-1F16-11E0-BE14-C6BC4F4ED27B'
	self.MMResources["mp412rex"]["Instance"] = '97E1D650-4F0D-4F1D-91B2-F65CD8A2C7EC'

	self.MMResources["m1911"] = {}
	self.MMResources["m1911"]["Partition"] = '944B9E9B-279F-11E0-BCCD-BF5F79C336AA'
	self.MMResources["m1911"]["Instance"] = '95EA0974-BC1D-4657-AD19-2851223F25D3'

-- To add --
--	self.MMResources["m9ny"] = {}
--	self.MMResources["m9ny"]["Partition"] = '94D0FEE8-E685-11DF-805B-F4FA4757ED08'
--	self.MMResources["m9ny"]["Instance"] = '82356FE8-4061-0359-3D5B-114F424962B6'
--



-- common weapons --
-- Crossbow --
	self.MMResources["crossboltsound"] = {}
	self.MMResources["crossboltsound"]["Partition"] = '591449E1-A47A-4768-A7A8-29DE293517E8'
	self.MMResources["crossboltsound"]["Instance"] = '3C39A1D9-F161-4A4B-A065-9C70D13DBB81'

	self.MMResources["crossbow_ammo"] = {}
	self.MMResources["crossbow_ammo"]["Partition"] = 'EEEC6E85-6A26-4C51-842E-55C5B75DE9DC'
	self.MMResources["crossbow_ammo"]["Instance"] = '408C21F4-6D2F-41D8-AB92-D79141A3645E' 

	self.MMResources["crossbolt_damage_HE"] = {}
	self.MMResources["crossbolt_damage_HE"]["Partition"] = '07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA'
	self.MMResources["crossbolt_damage_HE"]["Instance"] = 'B85B6C38-0D14-4079-932A-237984798ADF'

-- Crossbow Ammo types
-- ----- Used for MAV pimping --------------
	self.MMResources["crossbolt"] = {}
	self.MMResources["crossbolt"]["Partition"] = '26076E01-A015-44A8-BFBF-695187E25FFB'
	self.MMResources["crossbolt"]["Instance"] = '81F4A9B1-0918-48EE-B097-63AA0B75F622'

	self.MMResources["crossbolt_he2"] = {}
	self.MMResources["crossbolt_he2"]["Partition"] = '07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA'
	self.MMResources["crossbolt_he2"]["Instance"] = 'CCE3BBAD-06BE-4EBC-8BA3-0CF8A4461AEE'

-- --------------------------
	self.MMResources["crossbolt_default"] = {}
	self.MMResources["crossbolt_default"]["Partition"] = '26076E01-A015-44A8-BFBF-695187E25FFB'
	self.MMResources["crossbolt_default"]["Instance"] = '391BB7D5-C4AE-4952-B103-189DC1700030'

	self.MMResources["crossbolt_scan"] = {}
	self.MMResources["crossbolt_scan"]["Partition"] = '2E6F6D70-6D07-4E9A-A679-DA61C0892CA8'
	self.MMResources["crossbolt_scan"]["Instance"] = 'D7D7E957-27B1-4125-936E-0D851C7CEF9C'

	self.MMResources["crossbolt_he"] = {}
	self.MMResources["crossbolt_he"]["Partition"] = '07E407B3-A4FE-4CD1-BABA-D8F6EB59FAEA'
	self.MMResources["crossbolt_he"]["Instance"] = 'D09E04C4-4B06-4967-A7F5-1DE6D0912676'

	self.MMResources["crossbolt_BA"] = {}
	self.MMResources["crossbolt_BA"]["Partition"] = '7060D665-78CF-41A5-862B-B3055748A8C3'
	self.MMResources["crossbolt_BA"]["Instance"] = 'D3A33689-42BD-478C-8D83-B7C0B73EE19D'

-- Common class weapons --
	self.MMResources["asval"] = {}
	self.MMResources["asval"]["Partition"] = '330F6EB9-1740-11E0-B7E4-E4E608316920'
	self.MMResources["asval"]["Instance"] = '808AB537-87CF-4997-B6AD-B11111EE19C4'
--	self.MMResources["asval"]["Instance"] = '22053930-04B1-826C-E0A1-D3308D940C9B' -- Org

	self.MMResources["pdwr"] = {}
	self.MMResources["pdwr"]["Partition"] = 'C47BFE6F-1F1E-11E0-AE3C-E30EAF72F572'
	self.MMResources["pdwr"]["Instance"] = 'F9AE571D-0CC3-1AF0-BEBF-1CBC08010325'
	self.MMResources["pdwr"]["Ammo"] = 'EA2D2761-E274-4836-8C92-9825594A879C'

	self.MMResources["mp5k"] = {}
	self.MMResources["mp5k"]["Partition"] = 'B0F05591-F4AE-4BFF-9570-8DB045590A72'
	self.MMResources["mp5k"]["Instance"] = '6B50743A-8C05-41FF-A099-BE69176D9ECB'

	self.MMResources["p90"] = {}
	self.MMResources["p90"]["Partition"] = 'C75DBA86-F326-11DF-ABE6-A89858BEBE43'
	self.MMResources["p90"]["Instance"] = '25F31D4F-71A9-E349-983D-A86989548A74'
	self.MMResources["gm_p90"] = {}
	self.MMResources["gm_p90"]["Partition"] = 'C7D08BC3-04B6-440C-BF99-0E6D6A41D890'
	self.MMResources["gm_p90"]["Instance"] = '4C7904EB-0121-4BE4-B50B-D15E4505BC7E'

	self.MMResources["p90_silenced"] = {}
	self.MMResources["p90_silenced"]["Partition"] = 'C75DBA86-F326-11DF-ABE6-A89858BEBE43'
	self.MMResources["p90_silenced"]["Instance"] = 'C1CB32CD-43BF-48C8-936F-C9B904B062AF'

	self.MMResources["pp2000"] = {}
	self.MMResources["pp2000"]["Partition"] = '144442BD-173B-11E0-B7E4-E4E608316920'
	self.MMResources["pp2000"]["Instance"] = '4B357FE8-2B48-3238-D1CD-7DC2A200F5D5'

	self.MMResources["ump45"] = {}
	self.MMResources["ump45"]["Partition"] = '13D445F7-EBE3-11DF-91EC-895E59A6915B'
	self.MMResources["ump45"]["Instance"] = '6092F3DA-F72A-C1A6-995A-8B22DA1ABCF2'

	self.MMResources["mp7"] = {}
	self.MMResources["mp7"]["Partition"] = '122FC693-ECA7-11DF-BD6E-C1427E3D6CAB'
	self.MMResources["mp7"]["Instance"] = '4256DDD4-BF48-3A95-340E-1A4E7E4F3162'

	self.MMResources["pp19"] = {}
	self.MMResources["pp19"]["Partition"] = '983A236F-22EB-11E0-87CC-DAB15BD78BE2'
	self.MMResources["pp19"]["Instance"] = '68BC3068-5698-126B-4C51-3B30F30FEEFA'

--	self.MMResources["pp19_bullet"] = {}
--	self.MMResources["pp19_bullet"]["Partition"] = '034DE2CA-615D-415A-B94D-7E6BF78BF004'
--	self.MMResources["pp19_bullet"]["Instance"] = '1DCD8041-89A8-439E-9914-45B5BB60578F'


-- Assault Gadget stuff --
	self.MMResources["medicbag"] = {}
	self.MMResources["medicbag"]["Partition"] = '1D6061B2-2234-11E0-92F5-C9B649EF6972'
	self.MMResources["medicbag"]["Instance"] = 'A867A678-615B-3FA6-7AF5-0DEE6ED69EA0'

	self.MMResources["defibs"] = {}
	self.MMResources["defibs"]["Partition"] = '1B81A779-135F-11E0-B4A8-98C3FD926350'
	self.MMResources["defibs"]["Instance"] = 'ECFCD019-F32C-4CBD-94CC-A69B3DF99AB2'

	self.MMResources["defib_projectile"] = {}
	self.MMResources["defib_projectile"]["Partition"] = '1B81A779-135F-11E0-B4A8-98C3FD926350'
	self.MMResources["defib_projectile"]["Instance"] = '1861554A-8C81-4944-96D1-7347494F7688'

--	self.MMResources["defibvolabel"] = {}
--	self.MMResources["defibvolabel"]["Partition"] = '2C4E5C83-B1BD-11DE-96E2-89FC67A5C271'
--	self.MMResources["defibvolabel"]["Instance"] = '50999073-C1D2-4240-B50F-6EC1FC45BCE8'

-- Weapons assault --
	self.MMResources["m16a3"] = {}
	self.MMResources["m16a3"]["Partition"] = 'EA96401D-F166-11DF-A2F6-9139D3229269'
	self.MMResources["m16a3"]["Instance"] = '1CAE0E91-1EC1-48B9-8FFE-90EDA105FFB4'

	self.MMResources["m416"] = {}
	self.MMResources["m416"]["Partition"] = '88309FB2-3912-11E0-845E-D6BEC180D605'
	self.MMResources["m416"]["Instance"] = 'CA28953E-9A4A-4579-B1B7-1FFBDBFBE7B9'

	self.MMResources["aek971"] = {}
	self.MMResources["aek971"]["Partition"] = '64DB81AD-1F08-11E0-BE14-C6BC4F4ED27B'
	self.MMResources["aek971"]["Instance"] = 'CE3372DA-991B-41C1-95BC-19B5D26AAE5B'

	self.MMResources["aek971_heavy"] = {}
	self.MMResources["aek971_heavy"]["Partition"] = '64DB81AD-1F08-11E0-BE14-C6BC4F4ED27B'
	self.MMResources["aek971_heavy"]["Instance"] = '5F2C908F-56EA-42EF-A0C8-C800A38C32E4'

	self.MMResources["aek971_silenced"] = {} 
	self.MMResources["aek971_silenced"]["Partition"] = '64DB81AD-1F08-11E0-BE14-C6BC4F4ED27B'
	self.MMResources["aek971_silenced"]["Instance"] = 'D87F08AD-D44F-4C77-92F6-D67C161F8233'

	self.MMResources["m16a4"] = {}
	self.MMResources["m16a4"]["Partition"] = 'EA96401D-F166-11DF-A2F6-9139D3229269'
	self.MMResources["m16a4"]["Instance"] = 'B8195790-AB8E-43ED-961A-9CFCE09378A9'

	self.MMResources["f2000"] = {}
	self.MMResources["f2000"]["Partition"] = 'B73816D2-F3B8-11DF-B48C-9F474D51EF2A'
	self.MMResources["f2000"]["Instance"] = 'D900F1B8-0C20-4A04-9448-5459500470AE'

	self.MMResources["an94"] = {}
	self.MMResources["an94"]["Partition"] = '37A1075D-0467-11E0-A970-FF10D557871E'
	self.MMResources["an94"]["Instance"] = 'B4E31807-4480-4393-93C0-8B4DFACC6A53'

	self.MMResources["g3a3"] = {}
	self.MMResources["g3a3"]["Partition"] = '34347158-E5AA-11DF-99EB-E13A35414FEB'
	self.MMResources["g3a3"]["Instance"] = 'B0DD2A45-0E62-427A-8834-562D0DCFBC6A'

	self.MMResources["kh2002"] = {}
	self.MMResources["kh2002"]["Partition"] = 'CF1239D1-1738-11E0-B7E4-E4E608316920'
	self.MMResources["kh2002"]["Instance"] = 'D8CDC02F-42A9-4278-B3DD-89375EB6B9D4'

	self.MMResources["ak74m"] = {}
	self.MMResources["ak74m"]["Partition"] = 'A7C73A1A-ECD7-11DF-9B09-83A1F299B70D'
	self.MMResources["ak74m"]["Instance"] = 'E2EBB09B-C23C-4718-B506-089D336948D3'

	self.MMResources["famas"] = {}
	self.MMResources["famas"]["Partition"] = '706A1BD6-6DAB-4CEE-BFCA-82814251E2D8'
	self.MMResources["famas"]["Instance"] = 'F91A9BA8-A08B-44EE-B6F3-9B181FAD71BA'
	
	self.MMResources["l85a2"] = {}
	self.MMResources["l85a2"]["Partition"] = '197EE0EE-6190-46FF-982C-AA90A37439C7'
	self.MMResources["l85a2"]["Instance"] = '99F73917-43AC-4C61-BE0B-AD6570F9CE17'

	self.MMResources["scarl"] = {}
	self.MMResources["scarl"]["Partition"] = '6695DE67-4178-4EA7-95F9-9D575EF95E2A'
	self.MMResources["scarl"]["Instance"] = '97E50571-45A0-47FF-9A40-ABA5F76AA19A'

	self.MMResources["auga3"] = {}
	self.MMResources["auga3"]["Partition"] = '91978925-827B-4DA2-82C1-307ECCB7B83B'
	self.MMResources["auga3"]["Instance"] = '6AD6C194-AAF8-4B19-A204-6F0CB8E41764'

	self.MMResources["augbullet"] = {}
	self.MMResources["augbullet"]["Partition"] = '9847CF94-6CC9-4500-BE0F-002E3CAA3637'
	self.MMResources["augbullet"]["Instance"] = '6C055C66-9145-4ECB-8C41-BBE1A6C91287'


-- Engineer class weapons --
-- Engineer gadget stuff --
	self.MMResources["repairtool"] = {}
	self.MMResources["repairtool"]["Partition"] = '9D6458CD-2955-11E0-864C-EDEE51946146'
	self.MMResources["repairtool"]["Instance"] = '4D509E54-0572-4D7D-BF49-3D83AFCFD73D' 

	self.MMResources["eod_pda"] = {}
	self.MMResources["eod_pda"]["Partition"] = '88BAEC68-03CE-4024-A951-20DB8CB2069C'
	self.MMResources["eod_pda"]["Instance"] = '9C831110-C62C-4484-8643-359F9DFD8D05'

	self.MMResources["eod"] = {}
	self.MMResources["eod"]["Partition"] = '269BB4A2-0DC3-11E0-B817-B1885439A6BF'
	self.MMResources["eod"]["Instance"] = 'E280A780-82D0-4B1F-865D-E47865E2772C'

	self.MMResources["eod_chassis"] = {}
	self.MMResources["eod_chassis"]["Partition"] = '269BB4A2-0DC3-11E0-B817-B1885439A6BF'
	self.MMResources["eod_chassis"]["Instance"] = '9FF66CD4-2AF1-11CE-78ED-6EC576D7F93D'

-- pimped rocket stuff
	self.MMResources["smawmissile"] = {}
	self.MMResources["smawmissile"]["Partition"] = '168F529B-17F6-11E0-8CD8-85483A75A7C5'
	self.MMResources["smawmissile"]["Instance"] = '168F529C-17F6-11E0-8CD8-85483A75A7C5' 

	self.MMResources["rpgprojectile"] = {}
	self.MMResources["rpgprojectile"]["Partition"] = '6C857FD9-6FB3-11DE-B35E-864CF572E1C4'
	self.MMResources["rpgprojectile"]["Instance"] = 'CDD3A384-8243-A258-E23D-239CC0D52698' 

	self.MMResources["us_stinger"] = {}
	self.MMResources["us_stinger"]["Partition"] = '28C2561D-EC16-11DF-BA9E-F3DCE5C70CB9'
	self.MMResources["us_stinger"]["Instance"] = 'AC50A504-5962-4F7F-84F8-640BCC36F73B'

	self.MMResources["us_stinger_ammo"] = {}
	self.MMResources["us_stinger_ammo"]["Partition"] = '28C2561D-EC16-11DF-BA9E-F3DCE5C70CB9'
	self.MMResources["us_stinger_ammo"]["Instance"] = '2EEC7BB1-BFD2-41C5-AFEF-C36A61BB9E6D'
--
	self.MMResources["smaw"] = {}
	self.MMResources["smaw"]["Partition"] = 'BCE98CA0-17EC-11E0-8CD8-85483A75A7C5'
	self.MMResources["smaw"]["Instance"] = 'AB8577C5-D5F9-4A17-BEB2-2E153E171630'

	self.MMResources["smawgravity"] = {}
	self.MMResources["smawgravity"]["Partition"] = '168F529B-17F6-11E0-8CD8-85483A75A7C5'
	self.MMResources["smawgravity"]["Instance"] = '168F529C-17F6-11E0-8CD8-85483A75A7C5' -- MED

--
	self.MMResources["rpg7"] = {}
	self.MMResources["rpg7"]["Partition"] = 'E7F8EC1A-E8F5-11DF-AC96-84E6B0EFF32E'
	self.MMResources["rpg7"]["Instance"] = '7584D16E-6B77-4A7B-BEEE-15DA5EF98E2E' -- FFD

	self.MMResources["rpg7gravity"] = {}
	self.MMResources["rpg7gravity"]["Partition"] = '6C857FD9-6FB3-11DE-B35E-864CF572E1C4'
	self.MMResources["rpg7gravity"]["Instance"] = 'CDD3A384-8243-A258-E23D-239CC0D52698' -- MED
--
	self.MMResources["fgm148_lock"] = {}
	self.MMResources["fgm148_lock"]["Partition"] = 'F4C6BD34-0D15-11E0-99FE-EA6897C76A7E'
	self.MMResources["fgm148_lock"]["Instance"] = 'F3150F93-C300-43A1-96AA-9453DBD159E8'

	self.MMResources["fgm148"] = {}
	self.MMResources["fgm148"]["Partition"] = 'F4C6BD34-0D15-11E0-99FE-EA6897C76A7E'
	self.MMResources["fgm148"]["Instance"] = 'C1CE96A7-C9DD-43B3-822F-1B5BAC0F331A'

	self.MMResources["igla_lock"] = {}
	self.MMResources["igla_lock"]["Partition"] = 'B412A569-1413-11E0-A672-E0A480096E27'
	self.MMResources["igla_lock"]["Instance"] = 'BA1B7D20-46F4-40E2-9835-B963CFF07527'

	self.MMResources["igla_ammo"] = {}
	self.MMResources["igla_ammo"]["Partition"] = 'B412A569-1413-11E0-A672-E0A480096E27'
	self.MMResources["igla_ammo"]["Instance"] = 'CE53E1AB-2B5B-4844-97B7-5A4990EB3913'

-- M15 Tank mine stuff --
	self.MMResources["m15"] = {}
	self.MMResources["m15"]["Partition"] = 'B38C8E78-EBE6-11DF-8768-F4F1C9378C27'
	self.MMResources["m15"]["Instance"] = 'D1110C87-5913-43A4-A47F-04AD47B0C611'

	self.MMResources["m15exp"] = {}
	self.MMResources["m15exp"]["Partition"] = '49F4451D-D64E-45E5-BC96-B39CE8BC4D10'
	self.MMResources["m15exp"]["Instance"] = 'EA440D5D-925C-4239-8463-4FE3EAD30C5F'

	self.MMResources["m15expentity"] = {}
	self.MMResources["m15expentity"]["Partition"] = '49F4451D-D64E-45E5-BC96-B39CE8BC4D10'
	self.MMResources["m15expentity"]["Instance"] = 'D936971A-354B-49B7-BCCA-4FE01B68D395'

-- Weapons Engineer --
	self.MMResources["m4a1"] = {}
	self.MMResources["m4a1"]["Partition"] = 'E58B6AE6-E32E-11DF-8110-9522DC68C5EB'
	self.MMResources["m4a1"]["Instance"] = '13C4A7A7-85A0-42AF-92AD-2B9F80B0045A'

	self.MMResources["scarh"] = {}
	self.MMResources["scarh"]["Partition"] = '3DD281E1-279E-11E0-BCCD-BF5F79C336AA'
	self.MMResources["scarh"]["Instance"] = '44311C4C-0308-4CB5-82FD-341584BB1EC0'

	self.MMResources["m4"] = {} -- M4a1 
	self.MMResources["m4"]["Partition"] = 'E58B6AE6-E32E-11DF-8110-9522DC68C5EB'
	self.MMResources["m4"]["Instance"] = 'C2C9ECFB-CDB9-43FC-BD69-EBA56E151FA8'

	self.MMResources["a91"] = {}
	self.MMResources["a91"]["Partition"] = '98DAE0F8-1717-11E0-9317-9BA393B7EF47'
	self.MMResources["a91"]["Instance"] = 'A7D5788E-0209-4B51-8857-363DA07B9ECD'

	self.MMResources["g36c"] = {}
	self.MMResources["g36c"]["Partition"] = '00204E5D-09D2-11E0-9907-B7A8F369505D'
	self.MMResources["g36c"]["Instance"] = '4E846F32-FCE3-4AB9-AF84-61584B7C9846'

	self.MMResources["sg553"] = {}
	self.MMResources["sg553"]["Partition"] = 'B8F7A8DD-17E0-11E0-8CD8-85483A75A7C5'
	self.MMResources["sg553"]["Instance"] = '770B6F5B-2126-4327-B439-8D77B744E12B'

	self.MMResources["aks74u"] = {}
	self.MMResources["aks74u"]["Partition"] = 'BC650B69-F196-11DF-B91B-D0A172B2A94A'
	self.MMResources["aks74u"]["Instance"] = '48E3784D-9858-4616-99C0-4E85EE9B5523'

	self.MMResources["g53"] = {} -- hk53.txt weapon data
	self.MMResources["g53"]["Partition"] = '3E24517D-B208-4D69-8FF9-A6120249E6EC'
	self.MMResources["g53"]["Instance"] = '9E90DB5A-B56A-4595-8DBD-77406754D0C8'

	self.MMResources["qbz95"] = {}
	self.MMResources["qbz95"]["Partition"] = '1F059380-D6B9-437F-B9D4-BD85038233A9'
	self.MMResources["qbz95"]["Instance"] = '7A40EBD2-B50B-4BD5-9AEC-6C7DB4D457FB'

	self.MMResources["acwr"] = {}
	self.MMResources["acwr"]["Partition"] = 'E1DE3897-F570-11E0-B897-D25D16CBAAAF'
	self.MMResources["acwr"]["Instance"] = '80D1A454-CD95-2058-96F1-BA9AEE854748'

--	self.MMResources["acwrbullets"] = {}
--	self.MMResources["acwrbullets"]["Partition"] = 'E951BBE1-971B-4227-9FAE-67386CAE62FD'
--	self.MMResources["acwrbullets"]["Instance"] = '69097012-1798-4A9E-904A-1E30B7113ACA'

	self.MMResources["mtar"] = {}
	self.MMResources["mtar"]["Partition"] = '057A5DF0-209C-4C31-880F-479AF453884D'
	self.MMResources["mtar"]["Instance"] = '86687168-663F-4D33-AAD6-D6C5DE5E8F34'


-- Support Gadgets stuff

--  Ammo crate --
	self.MMResources["ammobag"] = {}
	self.MMResources["ammobag"]["Partition"] = '04CD683B-1F1B-11E0-BBD1-F7235575FD24'
	self.MMResources["ammobag"]["Instance"] = '4AE515CE-846D-6070-5F56-1285B7E8E187'

-- C4 stuff --
	self.MMResources["c4"] = {}
	self.MMResources["c4"]["Partition"] = '90D317AC-2554-11E0-9BE1-9E3A551FF0D1'
	self.MMResources["c4"]["Instance"] = '6CF717B6-188A-4AE7-A1D2-CC1A2333C0D7'

	self.MMResources["c4exp"] = {}
	self.MMResources["c4exp"]["Partition"] = '910AD7C5-2558-11E0-96DC-FF63A5537869'
	self.MMResources["c4exp"]["Instance"] = '5FE6E2AD-072E-4722-984A-5C52BC66D4C1'

	self.MMResources["c4expentity"] = {}
	self.MMResources["c4expentity"]["Partition"] = '910AD7C5-2558-11E0-96DC-FF63A5537869'
	self.MMResources["c4expentity"]["Instance"] = '09DCA5BB-BB2E-4EC6-B07F-5F74863EB458'

	
-- Claymore stuff --
	self.MMResources["claymore"] = {}
	self.MMResources["claymore"]["Partition"] = 'D9EAFB20-1357-11E0-B5EB-8AEE7FB8A0AF'
	self.MMResources["claymore"]["Instance"] = '526C78FC-D2CA-491B-9D18-1EDEFB10A762'

	self.MMResources["claymoreexp"] = {}
	self.MMResources["claymoreexp"]["Partition"] = '8709A814-1FF9-11E0-8A74-C88A4F19AAB4'
	self.MMResources["claymoreexp"]["Instance"] = '5120E4F0-CD8C-4926-A45C-DA4460865508'

	self.MMResources["claymore_havok"] = {}
	self.MMResources["claymore_havok"]["Partition"] = '8709A814-1FF9-11E0-8A74-C88A4F19AAB4'
	self.MMResources["claymore_havok"]["Instance"] = '426247C9-56D7-FBA7-539C-F6C6BD7FD07A'

	self.MMResources["claymore_expentity"] = {}
	self.MMResources["claymore_expentity"]["Partition"] = '8709A814-1FF9-11E0-8A74-C88A4F19AAB4'
	self.MMResources["claymore_expentity"]["Instance"] = 'AA3BA4F5-2F8E-65FD-016A-D1E6F8C870FB'

-- MORTAR STUFF --
	self.MMResources["mortar"] = {}
	self.MMResources["mortar"]["Partition"] = '5350B268-18C9-11E0-B820-CD6C272E4FCC'
	self.MMResources["mortar"]["Instance"] = '145C4108-7660-1329-4599-4402DA4801A0'

	self.MMResources["mortarbase"] = {}
	self.MMResources["mortarbase"]["Partition"] = 'E8CBD57D-18D5-11E0-B820-CD6C272E4FCC'
	self.MMResources["mortarbase"]["Instance"] = '58F57454-DBBF-5D32-DFDB-ED79642011A9'

	self.MMResources["mortardeployed"] = {}
	self.MMResources["mortardeployed"]["Partition"] = 'A381F7C8-18DD-11E0-9A44-B310CA9F1EC8'
	self.MMResources["mortardeployed"]["Instance"] = 'E5F87C27-8CEA-9FAD-060B-982ECDC78AB3'

	self.MMResources["mortardeployedff1"] = {}
	self.MMResources["mortardeployedff1"]["Partition"] = 'A381F7C8-18DD-11E0-9A44-B310CA9F1EC8'
	self.MMResources["mortardeployedff1"]["Instance"] = '060D79AA-4FFB-4087-9D29-1D7015945B8A'

	self.MMResources["mortardeployedff2"] = {}
	self.MMResources["mortardeployedff2"]["Partition"] = 'A381F7C8-18DD-11E0-9A44-B310CA9F1EC8'
	self.MMResources["mortardeployedff2"]["Instance"] = '19EAD11D-13BA-481A-9F5D-8B11D530AB55'

	self.MMResources["mortardeployedrot1"] = {}
	self.MMResources["mortardeployedrot1"]["Partition"] = 'A381F7C8-18DD-11E0-9A44-B310CA9F1EC8'
	self.MMResources["mortardeployedrot1"]["Instance"] = '047678CD-F731-4B09-A4F1-DBFE526CB6E6'

	self.MMResources["mortardeployedrot2"] = {}
	self.MMResources["mortardeployedrot2"]["Partition"] = 'A381F7C8-18DD-11E0-9A44-B310CA9F1EC8'
	self.MMResources["mortardeployedrot2"]["Instance"] = 'D0E48E36-0DEC-46CB-8981-BA3C281DDD9A'

	self.MMResources["mortardeployedrot3"] = {}
	self.MMResources["mortardeployedrot3"]["Partition"] = 'A381F7C8-18DD-11E0-9A44-B310CA9F1EC8'
	self.MMResources["mortardeployedrot3"]["Instance"] = 'B4D5D0FF-9A9A-4205-8FD1-1F9188F62F45'

	self.MMResources["mortarsound"] = {}
	self.MMResources["mortarsound"]["Partition"] = 'B49E7523-8A83-4463-828F-21938E974E4E'
	self.MMResources["mortarsound"]["Instance"] = '4612880D-428E-40DB-B1FA-C6B92CDD2CA0'

	self.MMResources["mortarexp"] = {}
	self.MMResources["mortarexp"]["Partition"] = '5350B268-18C9-11E0-B820-CD6C272E4FCC'
	self.MMResources["mortarexp"]["Instance"] = '4827959A-8A3B-4C9F-994E-E54150AA565F'

	self.MMResources["mortarexp2"] = {}
	self.MMResources["mortarexp2"]["Partition"] = '5350B268-18C9-11E0-B820-CD6C272E4FCC'
	self.MMResources["mortarexp2"]["Instance"] = 'BF5478A3-77E5-4F87-BAC7-91936CAD1C81'

	self.MMResources["mortarsmk"] = {}
	self.MMResources["mortarsmk"]["Partition"] = '7C592ADA-6915-4969-BFF2-A875027A9962'
	self.MMResources["mortarsmk"]["Instance"] = 'A420BDD8-F89F-49E3-B6DB-E8327253A589' 

-- Weapons Support --	
	self.MMResources["m27iar"] = {}
	self.MMResources["m27iar"]["Partition"] = 'FB9A13FB-5D10-48C7-8BD4-A97B712E2C20'
	self.MMResources["m27iar"]["Instance"] = 'D2026831-177B-404E-80F8-534C0CF9524D'

-- LMG weapons --
	self.MMResources["m249"] = {}
	self.MMResources["m249"]["Partition"] = 'F37DBC84-F61B-11DF-829C-95F94E7154E3'
	self.MMResources["m249"]["Instance"] = '7FCFC3D7-49C2-477E-8952-664FDA86B41E'

	self.MMResources["pkp"] = {}
	self.MMResources["pkp"]["Partition"] = 'D1DC5650-EBFE-11DF-8ACD-A1D8961E5550'
	self.MMResources["pkp"]["Instance"] = '9893EBD7-95B1-43E7-8405-86803312D998'

	self.MMResources["m240"] = {}
	self.MMResources["m240"]["Partition"] = '5D6FD6B8-E5BC-11DF-A152-D82BD29AC2ED'
	self.MMResources["m240"]["Instance"] = '335B1E8B-8BFF-4A0B-80E7-9F55FB9C25DC'

	self.MMResources["m240_extended"] = {}
	self.MMResources["m240_extended"]["Partition"] = '5D6FD6B8-E5BC-11DF-A152-D82BD29AC2ED'
	self.MMResources["m240_extended"]["Instance"] = '87CB23D8-28DA-4151-89C8-4C4E615E16CE'

	self.MMResources["m240_swag"] = {}
	self.MMResources["m240_swag"]["Partition"] = '5D6FD6B8-E5BC-11DF-A152-D82BD29AC2ED'
	self.MMResources["m240_swag"]["Instance"] = '08D8BE73-EABA-4E16-A19A-20FE567945F2'

	self.MMResources["m60"] = {}
	self.MMResources["m60"]["Partition"] = '99BD41C7-EDB0-11DF-A0C6-D95650B9E286'
	self.MMResources["m60"]["Instance"] = '1D44B441-7F16-46F3-9EFF-D0647D554EFE'

	self.MMResources["type88"] = {}
	self.MMResources["type88"]["Partition"] = '97F4741B-2AFA-11E0-9848-9E9BC51DCED8'
	self.MMResources["type88"]["Instance"] = '81DAF3F8-D054-4B05-8DFA-5F0F0E722A94'

	self.MMResources["rpk74m"] = {}
	self.MMResources["rpk74m"]["Partition"] = '6D35134E-EDA8-11DF-81C7-E27FD45FBB2E'
	self.MMResources["rpk74m"]["Instance"] = 'B0D9DB9A-46D4-4675-8D89-FB57FE049D96'

	self.MMResources["qbb95"] = {}
	self.MMResources["qbb95"]["Partition"] = 'EC29F616-A358-481C-BD2E-EEAD692CAA49'
	self.MMResources["qbb95"]["Instance"] = 'A6F96A7A-B741-42F6-AC02-832FB41752DA'

	self.MMResources["mg36"] = {}
	self.MMResources["mg36"]["Partition"] = '9AE12268-346F-4249-8E22-B5DB851332F2'
	self.MMResources["mg36"]["Instance"] = 'E59A3BD1-90DB-4EDC-9C7F-8582CB71AFA1'

	self.MMResources["l86"] = {}
	self.MMResources["l86"]["Partition"] = '0BF57B31-9632-484F-8922-0BD476C5FF62'
	self.MMResources["l86"]["Instance"] = 'B7F09598-2A6B-4553-A8F7-43308F1C5EFC'

	self.MMResources["l86bulletmod"] = {}
	self.MMResources["l86bulletmod"]["Partition"] = '0BF57B31-9632-484F-8922-0BD476C5FF62'
	self.MMResources["l86bulletmod"]["Instance"] = 'D1A33CDC-4561-450E-85B0-FF0529392515'

	self.MMResources["lsat"] = {}
	self.MMResources["lsat"]["Partition"] = '75E9AE70-B8B5-4A63-BDCC-AAF2914277D2'
	self.MMResources["lsat"]["Instance"] = '66CF5A46-9D6C-4AD3-A4FE-F17452F4FCF5'


-- Gadgets Recon class --
--	self.MMResources["radiobeacon_spot"] = {}
--	self.MMResources["radiobeacon_spot"]["Partition"] = '8887C2AE-27C6-11E0-9123-987FBA709E0E'
--	self.MMResources["radiobeacon_spot"]["Instance"] = '03488936-8E6C-4E4A-A187-3FD6D8B8B81C'
--
--	self.MMResources["radiobeacon_chassis"] = {}
--	self.MMResources["radiobeacon_chassis"]["Partition"] = '8887C2AE-27C6-11E0-9123-987FBA709E0E'
--	self.MMResources["radiobeacon_chassis"]["Instance"] = '7748BE51-BBA1-E5C1-F911-4D417F47A31C'
	
	self.MMResources["tugs"] = {}
	self.MMResources["tugs"]["Partition"] = '483F1918-1815-11E0-8BA5-9B1E2E41035E'
	self.MMResources["tugs"]["Instance"] = 'E8BDE781-EBCA-4FFB-8219-6DCAC05DE5AE'

	self.MMResources["tugs_vehicle"] = {}
	self.MMResources["tugs_vehicle"]["Partition"] = 'C6AC3720-4E44-11E0-B74F-973632ECCDB7'
	self.MMResources["tugs_vehicle"]["Instance"] = '6AD11C63-B795-4233-B943-C6DE347E26A7'

	self.MMResources["tugs_chassis"] = {}
	self.MMResources["tugs_chassis"]["Partition"] = 'C6AC3720-4E44-11E0-B74F-973632ECCDB7'
	self.MMResources["tugs_chassis"]["Instance"] = 'F9706033-B085-A573-1CF8-235C43B2FCAE'

	self.MMResources["mav_pda"] = {}
	self.MMResources["mav_pda"]["Partition"] = '1271F1BE-49D5-4599-AAD2-0D3BBAFB1EF7'
	self.MMResources["mav_pda"]["Instance"] = '0A6952EC-1EF1-4B3C-80DC-DEC527096066'

	self.MMResources["mav_chassis"] = {}
	self.MMResources["mav_chassis"]["Partition"] = 'FDE06FAE-1D63-11E0-8A6F-FC9481BB4D51'
	self.MMResources["mav_chassis"]["Instance"] = '53758EA5-4337-15BF-0987-2670ACE8CF01'

	self.MMResources["mav_weapon"] = {}
	self.MMResources["mav_weapon"]["Partition"] = 'CAFE2963-3F07-4254-A778-164F6772CA1E'
	self.MMResources["mav_weapon"]["Instance"] = '5938891C-0CEC-4D08-8F34-0ACBB79D4693'

	self.MMResources["mav_camera"] = {}
	self.MMResources["mav_camera"]["Partition"] = 'FDE06FAE-1D63-11E0-8A6F-FC9481BB4D51'
	self.MMResources["mav_camera"]["Instance"] = '27BE6159-8AA4-4E38-9DE8-4D1F9EE31C28'

	self.MMResources["mav_camera2"] = {}
	self.MMResources["mav_camera2"]["Partition"] = 'FDE06FAE-1D63-11E0-8A6F-FC9481BB4D51'
	self.MMResources["mav_camera2"]["Instance"] = '2965A1A1-FF5A-44ED-86DC-88F7E23E652E'

--	self.MMResources["soflam_pda"] = {}
--	self.MMResources["soflam_pda"]["Partition"] = '54715D36-2C3C-49A6-9F60-90FA372068C5'
--	self.MMResources["soflam_pda"]["Instance"] = '69592FE0-38B2-42D2-988C-813E5185F4C3'
--
--	self.MMResources["soflam_chassis"] = {}
--	self.MMResources["soflam_chassis"]["Partition"] = '7432AA7D-1802-11E0-8BA5-9B1E2E41035E'
--	self.MMResources["soflam_chassis"]["Instance"] = 'F45BD7C0-8C8F-124E-DEBA-05F1D59F908F'


-- Weapons Recon --	
	self.MMResources["mk11"] = {}
	self.MMResources["mk11"]["Partition"] = '0B82D738-09DF-11E0-9907-B7A8F369505D'
	self.MMResources["mk11"]["Instance"] = '62434DC8-4768-76D1-A6AB-71536E3310F5'

	self.MMResources["sv98"] = {}
	self.MMResources["sv98"]["Partition"] = '0B551663-E80F-11DF-9138-C690837A65DF'
	self.MMResources["sv98"]["Instance"] = '3CC3FF85-FB0C-4686-8B55-949FD31A09CE'

	self.MMResources["sv98sway"] = {}
	self.MMResources["sv98sway"]["Partition"] = '0B551663-E80F-11DF-9138-C690837A65DF'
	self.MMResources["sv98sway"]["Instance"] = 'C5521CEF-6A2B-40E7-BC93-D21E8AFE7DD8'

	self.MMResources["sks"] = {}
	self.MMResources["sks"]["Partition"] = '409062B8-2AEF-11E0-9848-9E9BC51DCED8'
	self.MMResources["sks"]["Instance"] = 'BDBDF5AB-2919-4B69-B225-29362632D7F3'

	self.MMResources["m40a5"] = {}
	self.MMResources["m40a5"]["Partition"] = '65B7D9D8-256F-11E0-96DC-FF63A5537869'
	self.MMResources["m40a5"]["Instance"] = '4DD1F6F8-01D8-49C4-8D2B-A88BB12B52EE'

	self.MMResources["m40a5sway"] = {}
	self.MMResources["m40a5sway"]["Partition"] = '65B7D9D8-256F-11E0-96DC-FF63A5537869'
	self.MMResources["m40a5sway"]["Instance"] = '13E7EBE3-5F4E-4F99-B58E-388C87B1E857'
	
	self.MMResources["m98"] = {}
	self.MMResources["m98"]["Partition"] = '84BA0CE7-1755-11E0-B7E4-E4E608316920'
	self.MMResources["m98"]["Instance"] = '7805C312-2B2B-49C6-B1A9-F6A99863BA3E'
	
	self.MMResources["m98sway"] = {}
	self.MMResources["m98sway"]["Partition"] = '84BA0CE7-1755-11E0-B7E4-E4E608316920'
	self.MMResources["m98sway"]["Instance"] = '790C78DF-7B37-4B69-85C1-C4C932FFE324'

	self.MMResources["m39ebr"] = {}
	self.MMResources["m39ebr"]["Partition"] = '351A4849-F3F3-11DF-B48C-9F474D51EF2A'
	self.MMResources["m39ebr"]["Instance"] = '3A02DDD1-F502-4335-80E1-2E4CDF970336'

	self.MMResources["svd"] = {}
	self.MMResources["svd"]["Partition"] = 'C1A5290C-ED78-11DF-8D94-C4EBBBD642E1'
	self.MMResources["svd"]["Instance"] = '5C26F504-A95E-4E9B-A1A1-84A0440D329B'

	self.MMResources["qbu88"] = {}
	self.MMResources["qbu88"]["Partition"] = '62FBED30-927B-11E0-A920-988860D1D68B'
	self.MMResources["qbu88"]["Instance"] = '6B1AE33E-6CE2-422F-BA8E-297BD12A1FAA'

	self.MMResources["l96"] = {}
	self.MMResources["l96"]["Partition"] = '30710090-22F9-11E0-9B3A-DBCC579DBD38'
	self.MMResources["l96"]["Instance"] = '4A933C70-2E94-4FD7-B736-50A7ADD25CE5'

	self.MMResources["l96sway"] = {}
	self.MMResources["l96sway"]["Partition"] = '30710090-22F9-11E0-9B3A-DBCC579DBD38'
	self.MMResources["l96sway"]["Instance"] = '5B5B22C8-A9A4-4F1F-871D-5D6ECF438867'

	self.MMResources["hk417"] = {}
	self.MMResources["hk417"]["Partition"] = 'E9658C2B-DE00-413D-B63B-BC3504652373'
	self.MMResources["hk417"]["Instance"] = '365D2E80-5EAD-4DA5-A7B7-4CD953B52E25'
	
	self.MMResources["jng90"] = {}
	self.MMResources["jng90"]["Partition"] = '8C663DDE-525E-4A4D-8D88-7CA1970E59D7'
	self.MMResources["jng90"]["Instance"] = 'D983A8A9-A0A5-45E4-920E-6A9B14EFE7C5'


--  -----------------------------------------------------------------------------
-- Generic stuff --
	self.MMResources["chat"] = {}
	self.MMResources["chat"]["Partition"] = '3E6AF1E2-B10E-11DF-9395-96FA88A245BF'
	self.MMResources["chat"]["Instance"] = '78B3E33E-098B-3320-ED15-89A36F04007B'


-- Pimped Vehicles --
   -- Mobile AA stuff US / RU --
	self.MMResources["tunguskacannon"] = {}
	self.MMResources["tunguskacannon"]["Partition"] = '22D80A30-0A76-176C-C559-6E71C4F17915'
	self.MMResources["tunguskacannon"]["Instance"] = '5ED03B20-CEE4-52F7-6C9B-DDE56DE6F800'

	self.MMResources["tunguskabullets"] = {}
	self.MMResources["tunguskabullets"]["Partition"] = '22D80A30-0A76-176C-C559-6E71C4F17915'
	self.MMResources["tunguskabullets"]["Instance"] = '78DE0889-A11A-7660-A607-BB57A2995BA3' 

-- ----------------------------------------------------------------------------------------
-- RU BM-23 -- US M142
	self.MMResources["bm23shell"] = {}
	self.MMResources["bm23shell"]["Partition"] = 'AB65DA57-DAC6-4201-AA97-F1B8F5328E80'
	self.MMResources["bm23shell"]["Instance"] = '9520BC73-20E0-4C99-A61D-07D6E3397DA7' -- FFD

	self.MMResources["bm23air"] = {}
	self.MMResources["bm23air"]["Partition"] = '0029E9E6-AB7A-4C54-AA46-0465C2EAC6F1'
	self.MMResources["bm23air"]["Instance"] = '2810291B-035F-4074-97D2-C8FC83AF95F7' -- FFD

-- RU Sprut
	self.MMResources["sprutsdshell"] = {}
	self.MMResources["sprutsdshell"]["Partition"] = '115E78B1-74E7-A5A0-490E-853DC10F3FF5'
	self.MMResources["sprutsdshell"]["Instance"] = '5F71446D-A417-AD79-3154-074D00ADCF7B' -- BED

--	self.MMResources["sprutsd"] = {}
--	self.MMResources["sprutsd"]["Partition"] = 'A069F34C-3AE9-4030-8808-29882A555FA1'
--	self.MMResources["sprutsd"]["Instance"] = '6ACD9A3B-FA8D-40F0-9F8A-F108EAF721F4'
--
--	self.MMResources["sprutsdengine"] = {}
--	self.MMResources["sprutsdengine"]["Partition"] = 'A069F34C-3AE9-4030-8808-29882A555FA1'
--	self.MMResources["sprutsdengine"]["Instance"] = '9132543A-DAD6-408B-80A7-B6469BCB505A'
--
--
-- US M1128 Stryker
	self.MMResources["m1128shell"] = {}
	self.MMResources["m1128shell"]["Partition"] = '6244034F-4140-41D5-BFA8-C19FFA05B915'
	self.MMResources["m1128shell"]["Instance"] = '19252A4F-00C8-40C3-81BC-62CC02625CE0' -- BED

--	self.MMResources["m1128engine"] = {}
--	self.MMResources["m1128engine"]["Partition"] = '3EE37540-9833-11E1-A26B-A2AC6EC60B20'
--	self.MMResources["m1128engine"]["Instance"] = 'FD6D9474-0F4E-483A-943D-16C6FF949545' 

-- ----------------------------------------------------------------------------------------

-- US Tank --
--	self.MMResources["m1abramsengine"] = {}
--	self.MMResources["m1abramsengine"]["Partition"] = 'B069BA89-EECF-11DD-8117-9421284A74E5'
--	self.MMResources["m1abramsengine"]["Instance"] = 'B06A08CE-EECF-11DD-8117-9421284A74E5'
--
--	self.MMResources["m1abramswheel"] = {}
--	self.MMResources["m1abramswheel"]["Partition"] = 'B069BA89-EECF-11DD-8117-9421284A74E5'
--	self.MMResources["m1abramswheel"]["Instance"] = 'B06A08B3-EECF-11DD-8117-9421284A74E5'
--
--	self.MMResources["m1abrams"] = {}
--	self.MMResources["m1abrams"]["Partition"] = 'B069BA89-EECF-11DD-8117-9421284A74E5'
--	self.MMResources["m1abrams"]["Instance"] = 'BE4ECA89-2682-4F0B-BA0A-5CECD4D25722'

--	self.MMResources["m1abramsshot"] = {}
--	self.MMResources["m1abramsshot"]["Partition"] = 'D684EC68-0FE9-4DF1-A732-9279BBA202F8'
--	self.MMResources["m1abramsshot"]["Instance"] = 'AB939926-0BAF-6C4F-22D8-6074F0D78EF9'

	self.MMResources["m1abramsshell"] = {}
	self.MMResources["m1abramsshell"]["Partition"] = 'D684EC68-0FE9-4DF1-A732-9279BBA202F8'
	self.MMResources["m1abramsshell"]["Instance"] = 'F8903680-77AE-4D0C-88B7-88E5407CE897' -- BED

--	self.MMResources["mbtcannon"] = {}
--	self.MMResources["mbtcannon"]["Partition"] = 'B069BA89-EECF-11DD-8117-9421284A74E5'
--	self.MMResources["mbtcannon"]["Instance"] = 'B06A0931-EECF-11DD-8117-9421284A74E5'

-- ----------------------------------------------------------------------------------------

-- RU tank --
	self.MMResources["t90shell"] = {}
	self.MMResources["t90shell"]["Partition"] = 'E25400E3-4E66-31A4-D991-6E56084F10FF'
	self.MMResources["t90shell"]["Instance"] = '36F86B49-A702-ED77-ACEC-015732F289E6'

--	self.MMResources["t90shot"] = {}
--	self.MMResources["t90shot"]["Partition"] = 'E25400E3-4E66-31A4-D991-6E56084F10FF'
--	self.MMResources["t90shot"]["Instance"] = 'AB939926-0BAF-6C4F-22D8-6074F0D78EF9'
--
--	self.MMResources["t90impact"] = {}
--	self.MMResources["t90impact"]["Partition"] = 'E25400E3-4E66-31A4-D991-6E56084F10FF'
--	self.MMResources["t90impact"]["Instance"] = '9B15C366-BBB8-B65C-6AEE-62C5F5703271'
--
--	self.MMResources["t90impactsplash"] = {}
--	self.MMResources["t90impactsplash"]["Partition"] = 'E25400E3-4E66-31A4-D991-6E56084F10FF'
--	self.MMResources["t90impactsplash"]["Instance"] = 'CE7AC4AB-83B2-188B-3BAB-3F035BA5857A'

-- ----------------------------------------------------------------------------------------

-- Player stuff --
	self.MMResources["yump"] = {}
	self.MMResources["yump"]["Partition"] = '235CD1DA-8B06-4A7F-94BE-D50DA2D077CE'
	self.MMResources["yump"]["Instance"] = '3129BCFE-000E-4001-9F8F-316E5835C9FC'

	self.MMResources["pose_stand"] = {}
	self.MMResources["pose_stand"]["Partition"] = '235CD1DA-8B06-4A7F-94BE-D50DA2D077CE'
	self.MMResources["pose_stand"]["Instance"] = '69A866A2-DF7C-4BAD-B55F-99536F2551F6'

	self.MMResources["pose_standair"] = {}
	self.MMResources["pose_standair"]["Partition"] = '235CD1DA-8B06-4A7F-94BE-D50DA2D077CE'
	self.MMResources["pose_standair"]["Instance"] = 'DF7475F9-216E-48C3-AED1-5483EFA3BB15'

	self.MMResources["pose_swimming"] = {}
	self.MMResources["pose_swimming"]["Partition"] = '235CD1DA-8B06-4A7F-94BE-D50DA2D077CE'
	self.MMResources["pose_swimming"]["Instance"] = 'C3755191-6B9F-4B88-8677-59488AFC7530'

	self.MMResources["pose_climbing"] = {}
	self.MMResources["pose_climbing"]["Partition"] = '235CD1DA-8B06-4A7F-94BE-D50DA2D077CE'
	self.MMResources["pose_climbing"]["Instance"] = 'AF7A12E9-D79A-4856-8C03-3C88DF1ED8A6'

	self.MMResources["pose_chute"] = {}
	self.MMResources["pose_chute"]["Partition"] = '235CD1DA-8B06-4A7F-94BE-D50DA2D077CE'
	self.MMResources["pose_chute"]["Instance"] = 'F39A8591-BA69-4BE9-B289-B2A0B336A7EE'

	self.MMResources["mpsoldierhpmodule"] = {}
	self.MMResources["mpsoldierhpmodule"]["Partition"] = 'F256E142-C9D8-4BFE-985B-3960B9E9D189'
	self.MMResources["mpsoldierhpmodule"]["Instance"] = '705967EE-66D3-4440-88B9-FEEF77F53E77'

	self.MMResources["playerphys"] = {}
	self.MMResources["playerphys"]["Partition"] = '235CD1DA-8B06-4A7F-94BE-D50DA2D077CE'
	self.MMResources["playerphys"]["Instance"] = 'A10FF2AA-F3CF-416B-A79B-E8C5416A9EBC'

	self.MMResources["mpsoldier"] = {}
	self.MMResources["mpsoldier"]["Partition"] = 'F256E142-C9D8-4BFE-985B-3960B9E9D189'
	self.MMResources["mpsoldier"]["Instance"] = '1C721510-AD42-4AFD-B613-04DC37D0FC1F'

	self.MMResources["persistance_"] = {}
	self.MMResources["persistance_"]["Partition"] = '235CD1DA-8B06-4A7F-94BE-D50DA2D077CE'
	self.MMResources["persistance_"]["Instance"] = 'F39A8591-BA69-4BE9-B289-B2A0B336A7EE'
-- ---------------------------------------------------------------------------------------------
-- Weapons Shotguns - M26 MASS Shotgun -- WIP



--	-- vehicles can be imported by supplying blueprints, entities, and logic referrences required
--	self.MMResources["a10"] = {}
--	self.MMResources["a10"]["Partition"] = 'D07E3830-85FD-4C0E-819E-23640D2B2ECB'
--	self.MMResources["a10"]["Instance"] = '46B31051-405C-40E0-A7F0-62283823CC7C'
--	self.MMResources["a10"]["Blueprints"] = {
--		'CC50390A-A29A-0C75-33A0-36DEDCFD0DA8', -- A-10_THUNDERBOLT_WingTipLeft
--		'B3E9860F-EE10-44F3-B4DC-5730BE251159', -- A-10_THUNDERBOLT
--		'66D8092F-AAC9-CD4B-C906-D0EACBFA4CF0', -- A-10_THUNDERBOLT_WreckTail
--		'3E66EB3E-6984-18D4-3AFB-F8ED7EFBEA8F', -- A-10_THUNDERBOLT_WingTipRight
--		'44C82567-14E3-48DA-BB9A-104D57CA1546', -- A-10_THUNDERBOLT_WreckBody
--		'FD0A16D5-E92A-C4EE-52BC-19BC622E409D' -- A-10_THUNDERBOLT_WreckFront
--	}
--	self.MMResources["a10"]["Entities"] = {
--		'FDCA8108-7A40-11E0-AC6E-B8454A26D179', -- A-10_THUNDERBOLT_WreckTail
--		'EB482D1E-7A40-11E0-AC6E-B8454A26D179', -- A-10_THUNDERBOLT_WreckBody
--		'46B31051-405C-40E0-A7F0-62283823CC7C', -- A10_THUNDERBOLT
--		'14E8A763-E3D0-4131-BBC3-8BD2B5581FB3', -- A10_THUNDERBOLT
--		'2DCB8669-210A-4E82-AF2B-B84173CE9622', -- A10_THUNDERBOLT
--		'D85CB473-7A40-11E0-AC6E-B8454A26D179', -- A-10_THUNDERBOLT_WreckFront
--		'86C1CA84-3179-4FA1-9F1A-6BB13EF14FE0', -- A10_THUNDERBOLT
--		'93B4369E-7B30-11E0-A197-B95FBA46DD5F', -- A-10_THUNDERBOLT_WingTipRight
--		'BA5EE5A4-A1A3-4914-84FD-10D99C2685F4', -- A10_THUNDERBOLT
--		'521F87C0-F67D-4DB7-82F5-9653584098F2', -- A10_THUNDERBOLT
--		'7555A6CF-FB4B-4285-9D2A-FEC678F7A713', -- A10_THUNDERBOLT
--		'76B634E2-7B30-11E0-A197-B95FBA46DD5F', -- A-10_THUNDERBOLT_WingTipLeft
--		'2F5148E7-A5B4-4C1C-A3FE-1BE3419571EC', -- A10_THUNDERBOLT
--		'C9AD39F3-8B65-47F4-AC7C-60737990B6DF' -- A10_THUNDERBOLT
--	}
--	self.MMResources["a10"]["LogicReferrence"] = {
--		'8FBCD462-B87C-465F-91D4-658D992CC8FD', -- A10_THUNDERBOLT
--		'74311DF0-1047-47DD-9920-DF09857ADD2E' -- A10_THUNDERBOLT
--	}
--
--	self.MMResources["a10_bullets"] = {}
--	self.MMResources["a10_bullets"]["Partition"] = '71B9175E-431B-405F-8E7A-6CA6745BEE47'
--	self.MMResources["a10_bullets"]["Instance"] = '79D9D672-27CC-433A-AB04-86B07F2F73CE'

-- -------------------------------------------------------------------------------------------------

-- Unused weapon and stuff --

--
--	self.MMResources["12gfrag"] = {}
--	self.MMResources["12gfrag"]["Partition"] = '2A6FCD72-5842-41B4-AC48-56BAACA506A3'
--	self.MMResources["12gfrag"]["Instance"] = 'EF265029-3291-4544-8081-ABFFA09D3D96'
--
--	self.MMResources["bullet338"] = {}
--	self.MMResources["bullet338"]["Partition"] = '2056BCC7-3769-458C-8C0E-BB6280DF360C'
--	self.MMResources["bullet338"]["Instance"] = '1BF6EA67-2EFE-4B93-9558-0B3B38862E1F'
--
--	self.MMResources["towenginefx"] = {}
--	self.MMResources["towenginefx"]["Partition"] = '25C535CD-2535-46B5-BF72-4E1961AFCC75'
--	self.MMResources["towenginefx"]["Instance"] = '08D225DA-28C7-4E27-9A81-719FDE099893'
--
--	self.MMResources["sniperbullet"] = {}
--	self.MMResources["sniperbullet"]["Partition"] = '808A49CA-F23B-711E-D6F7-214B81DE272B'
--	self.MMResources["sniperbullet"]["Instance"] = '82356FE8-4061-0359-3D5B-114F424962B6'
--
--	self.MMResources["40mmlvg"] = {}
--	self.MMResources["40mmlvg"]["Partition"] = 'A2BD3F80-0474-11E0-8A24-DDC0A9242026'
--	self.MMResources["40mmlvg"]["Instance"] = 'DCFE8B49-493D-2586-0195-BD4F35BB8197'
--
--	self.MMResources["40mmlvgfire"] = {}
--	self.MMResources["40mmlvgfire"]["Partition"] = '0782833F-E28E-417F-8D25-350D504EBEAA'
--	self.MMResources["40mmlvgfire"]["Instance"] = 'B287AFC7-2597-4C5A-A2B8-D0F8D43018C4'
--
--	self.MMResources["40mmlvgsound"] = {}
--	self.MMResources["40mmlvgsound"]["Partition"] = '7188E6E0-FB93-4277-8172-2FDA87317073'
--	self.MMResources["40mmlvgsound"]["Instance"] = '4C9B46AB-C0C6-48C3-A376-FB76DBF8DF7A'
--
--	self.MMResources["40mmlvg_grenade"] = {}
--	self.MMResources["40mmlvg_grenade"]["Partition"] = 'FD79A08F-F108-4751-B2C0-6C47397133B5'
--	self.MMResources["40mmlvg_grenade"]["Instance"] = '393E4094-C2A2-4DF2-B977-F82E6974A8CB'
--
--	self.MMResources["40mmlvg_grenadeexp"] = {}
--	self.MMResources["40mmlvg_grenadeexp"]["Partition"] = 'FD79A08F-F108-4751-B2C0-6C47397133B5'
--	self.MMResources["40mmlvg_grenadeexp"]["Instance"] = '5FE2082D-F901-43F2-A822-969CC6857134'
--
--	self.MMResources["40mmhe_grenade"] = {}
--	self.MMResources["40mmhe_grenade"]["Partition"] = 'D37476C2-3A86-11E0-BC25-D51252D5A427'
--	self.MMResources["40mmhe_grenade"]["Instance"] = 'CEC6D381-72DE-B7D4-E998-0D566E0575C6'
--
--	self.MMResources["40mmsmk_grenade"] = {}
--	self.MMResources["40mmsmk_grenade"]["Partition"] = 'A3E3C07B-2E9C-42D2-B540-7E70594293EC'
--	self.MMResources["40mmsmk_grenade"]["Instance"] = '30AD5145-04AD-4C97-8D1B-B4FE0E1AD6F5'

	self.MMResources["40mm_smokeburst_effect"] = {}
	self.MMResources["40mm_smokeburst_effect"]["Partition"] = 'A3E3C07B-2E9C-42D2-B540-7E70594293EC'
	self.MMResources["40mm_smokeburst_effect"]["Instance"] = '48BBE181-231E-4E7F-A959-10ECA1BCAF57'

--	self.MMResources["40mm_smokeburst_area"] = {}
--	self.MMResources["40mm_smokeburst_area"]["Partition"] = '5591B9C8-EB29-4412-BB28-DC07C351D650'
--	self.MMResources["40mm_smokeburst_area"]["Instance"] = 'DA00A6AA-E396-4FDB-807D-62AC0767B6B1'
--
--	self.MMResources["40mm_smokeburst_size"] = {}
--	self.MMResources["40mm_smokeburst_size"]["Partition"] = '5591B9C8-EB29-4412-BB28-DC07C351D650'
--	self.MMResources["40mm_smokeburst_size"]["Instance"] = '2CBD7863-1176-4DEF-AE04-9490E60AA876'
--
--	self.MMResources["40mm_smokeburst_color"] = {}
--	self.MMResources["40mm_smokeburst_color"]["Partition"] = '5591B9C8-EB29-4412-BB28-DC07C351D650'
--	self.MMResources["40mm_smokeburst_color"]["Instance"] = '9A11CA65-907D-45F0-AFD6-00B15E22E916'
--
--	self.MMResources["40mm_smokeburst_age"] = {}
--	self.MMResources["40mm_smokeburst_age"]["Partition"] = '5591B9C8-EB29-4412-BB28-DC07C351D650'
--	self.MMResources["40mm_smokeburst_age"]["Instance"] = '3FD2579E-2394-4BE4-BD6A-C69DF3696F68'

--	self.MMResources["humvee"] = {}
--	self.MMResources["humvee"]["Partition"] = '611F48A3-0919-11E0-985D-C512734E48AF'
--	self.MMResources["humvee"]["Instance"] = '34ADD228-7E03-C4A4-665F-E0F0955098EE'
--
--	self.MMResources["humveeengine"] = {}
--	self.MMResources["humveeengine"]["Partition"] = '611F48A3-0919-11E0-985D-C512734E48AF'
--	self.MMResources["humveeengine"]["Instance"] = '7ED9EDBE-034C-4CEE-9BA0-EFAB0698E167'
--
--	self.MMResources["humveehorn"] = {}
--	self.MMResources["humveehorn"]["Partition"] = '611F48A3-0919-11E0-985D-C512734E48AF'
--	self.MMResources["humveehorn"]["Instance"] = 'EEC68041-9AF5-497B-94C4-B576D8A033C0'
--
--	self.MMResources["growlerengine"] = {}
--	self.MMResources["growlerengine"]["Partition"] = 'CF5166FD-6B60-11E0-8ACE-C75FA07B1C42'
--	self.MMResources["growlerengine"]["Instance"] = 'FCE0343A-4366-4C12-A139-381585552777'
--
--	self.MMResources["growlerhorn"] = {}
--	self.MMResources["growlerhorn"]["Partition"] = 'CF5166FD-6B60-11E0-8ACE-C75FA07B1C42'
--	self.MMResources["growlerhorn"]["Instance"] = '4C6B9387-C2FC-40BA-BDC0-E79B70A817BB'
--
--	self.MMResources["growlerwheelsfront"] = {}
--	self.MMResources["growlerwheelsfront"]["Partition"] = 'CF5166FD-6B60-11E0-8ACE-C75FA07B1C42'
--	self.MMResources["growlerwheelsfront"]["Instance"] = '1564DF08-243A-488A-8C01-8D63CA647FED'
--
--	self.MMResources["growlerwheelsback"] = {}
--	self.MMResources["growlerwheelsback"]["Partition"] = 'CF5166FD-6B60-11E0-8ACE-C75FA07B1C42'
--	self.MMResources["growlerwheelsback"]["Instance"] = '1460C730-CB73-4BD4-B558-C1F1D4FE5C01'
--
--	self.MMResources["vdvmg"] = {}
--	self.MMResources["vdvmg"]["Partition"] = '2EA804A7-8232-11E0-823A-BD52CA6DC6B3'
--	self.MMResources["vdvmg"]["Instance"] = '1E362E5E-3605-4A49-9207-BA3F403BE506'
--
--	self.MMResources["vdvturret"] = {}
--	self.MMResources["vdvturret"]["Partition"] = '2EA804A7-8232-11E0-823A-BD52CA6DC6B3'
--	self.MMResources["vdvturret"]["Instance"] = 'DDBE49E9-86EC-471C-A53A-CE81929E0A51'
--
--	self.MMResources["vdvturretrotate"] = {}
--	self.MMResources["vdvturretrotate"]["Partition"] = '2EA804A7-8232-11E0-823A-BD52CA6DC6B3'
--	self.MMResources["vdvturretrotate"]["Instance"] = '94FAA227-20B6-40B1-B0F7-28ADDCF45297'
--
--	self.MMResources["quadbike"] = {}
--	self.MMResources["quadbike"]["Partition"] = '08D3686F-A96A-11E1-9047-F3806E4ECBA6'
--	self.MMResources["quadbike"]["Instance"] = '5BA1F26D-894A-BBAC-7E32-587645354615'
--
--	self.MMResources["civcar03"] = {}
--	self.MMResources["civcar03"]["Partition"] = '1A52E780-FEF6-11DF-B32D-B2D8A97C362D'
--	self.MMResources["civcar03"]["Instance"] = '4547A158-030C-B7B4-9043-4ADB726FAF8C'
--	self.MMResources["civcar03"]["Blueprints"] = {
--		'4547A158-030C-B7B4-9043-4ADB726FAF8C',
--		'9A02F5D2-33F2-11DE-99D3-98DCCAF38B4D'
--	}
--	self.MMResources["civcar03"]["Entities"] = {'8C7B446F-8BBC-780F-F25B-4328A7BC2303'}
--
--	self.MMResources["civcar03engine"] = {}
--	self.MMResources["civcar03engine"]["Partition"] = '1A52E780-FEF6-11DF-B32D-B2D8A97C362D'
--	self.MMResources["civcar03engine"]["Instance"] = '12F45D91-4D34-49C6-897F-2EB8ECA9F070'
--
--	self.MMResources["simplecarenginesound"] = {}
--	self.MMResources["simplecarenginesound"]["Partition"] = '3203023E-4A22-4B10-9698-E994174BF557'
--	self.MMResources["simplecarenginesound"]["Instance"] = '509CCE6F-7363-441E-A062-71419DCFD50E'
--
--	self.MMResources["deliveryvan"] = {}
--	self.MMResources["deliveryvan"]["Partition"] = 'FF60B55F-7BEA-11E0-B9A5-818EB3538184'
--	self.MMResources["deliveryvan"]["Instance"] = '74D984EC-29FD-365A-5052-41E81AFB6DEC'
--	self.MMResources["deliveryvan"]["Blueprints"] = {'74D984EC-29FD-365A-5052-41E81AFB6DEC'}
--	self.MMResources["deliveryvan"]["Entities"] = {'2CB916D5-51C6-18BC-7685-3E417DE1C48F'}





-- -------------------------------------------------------------------------------------------------

	for resourceName, resourceData in pairs(self.MMResources) do
		self.MMResources[resourceName].Loaded = false
	end

end




--	self.HeliLookup = { 
--		["Vehicles/AH1Z/AH1Z"] = true,
--		["Vehicles/AH6/AH6_Littlebird"] = true,
--		["Vehicles/KA-60_Kasatka/KA-60_Kasatka"] = true,
--		["Vehicles/Mi28/Mi28"] = true,
--		["Vehicles/Venom/Venom"] = true,
--		["Vehicles/Z11W/Z-11w"] = true,
--	}
-- end

function MMResources:RegisterInstanceLoadHandlers()
	for resourceName, resourceData in pairs(self.MMResources) do
		if (resourceData.Partition and resourceData.Instance) then
			ResourceManager:RegisterInstanceLoadHandler(Guid(resourceData.Partition), Guid(resourceData.Instance), function(instance)
				self:SetLoaded(resourceName, true)
				self:CallLoadHandlers()
			end)
		end
	end
end

function MMResources:Register(resourceName, partition, guid)
	self.MMResources[resourceName] = {
		Partition = partition,
		Instance = guid,
		Loaded = false
	}
end

function MMResources:AddLoadHandler(context, callback)
	table.insert(self.LoadHandlers, { Context = context, Callback = callback })
end



function MMResources:CallLoadHandlers()
	for i=1, #self.LoadHandlers do
		self.LoadHandlers[i].Callback(self.LoadHandlers[i].Context, self)
	end
end


function MMResources:IsLoaded(resourceName)
	if not self.MMResources[resourceName] then
		print("Tried to check unregistered resource: "..tostring(resourceName))
		return false
	else
		return self.MMResources[resourceName].Loaded
	end
end

function MMResources:SetLoaded(resourceName, value)
	if not self.MMResources[resourceName] then
		print("Tried to set unregistered resource: "..tostring(resourceName))
	else
		if (value) then
			--dprint("Resource Loaded: "..tostring(resourceName))
		end
		self.MMResources[resourceName].Loaded = value
	end
end

function MMResources:Get(resourceName)
	if (resourceName ~= nil) then
		return self.MMResources[resourceName]
	else
		return self.MMResources
	end
end

function MMResources:GetMap(guid)
	if (guid ~= nil) then
		return self.MapLookup[guid:ToString('D')]
	else
		return self.MapLookup
	end
end

function MMResources:GetPartition(resourceName)
	return ResourceManager:FindDatabasePartition(Guid(self.MMResources[resourceName].Partition))
end

function MMResources:GetInstance(resourceName, secondaryResource)
	if (secondaryResource ~= nil) then
		return ResourceManager:FindInstanceByGuid(Guid(self.MMResources[resourceName].Partition), Guid(self.MMResources[resourceName][secondaryResource]))
	else
		return ResourceManager:FindInstanceByGuid(Guid(self.MMResources[resourceName].Partition), Guid(self.MMResources[resourceName].Instance))
	end
end

function MMResources:AddToPartition(resourceName, partition)
	if not self.MMResources[resourceName] then
		print("Tried to add unregistered resource to partition: "..tostring(resourceName))
		return
	end

    print('Adding '..resourceName..' instances to partition...')
    self.MMResources[resourceName].Register = true
	local resourceData = self.MMResources[resourceName]

	if (resourceData.Entities) then
        print("Adding Entities ["..resourceName.."]...")
        for i = 1, #resourceData.Entities do
            local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.Entities[i]))
            if (res) then
                print("["..i.."] Added: "..res.typeInfo.name)
                partition:AddInstance(res)
            else
                print("["..i.."] Failed: "..resourceData.Entities[i])
            end
        end
    end
    if (resourceData.Blueprints) then
        print("Adding Blueprints ["..resourceName.."]...")
        for i = 1, #resourceData.Blueprints do
            local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.Blueprints[i]))
            if (res) then
                print("["..i.."] Added: "..res.typeInfo.name)
                partition:AddInstance(res)
            else
                print("["..i.."] Failed: "..resourceData.Blueprints[i])
            end
        end
    end
    if (resourceData.LogicReferrence) then
        print("Adding Logic Referrences ["..resourceName.."]...")
        for i = 1, #resourceData.LogicReferrence do
            local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.LogicReferrence[i]))
            if (res) then
                print("["..i.."] Added: "..res.typeInfo.name)
                partition:AddInstance(res)
            else
                print("["..i.."] Failed: "..resourceData.LogicReferrence[i])
            end
        end
    end
end

function MMResources:CreateRegistryContainer()
	local resourceContainer = RegistryContainer()
    
    print('Creating instance registry...')
    local registrySize = 0

    for resourceName, resourceData in pairs(self.MMResources) do
    	if (resourceData.Register) then 
	        if (resourceData.Entities) then
	            print("Adding Entities ["..resourceName.."]...")
	            for i = 1, #resourceData.Entities do
	                local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.Entities[i]))
	                if (res) then
	                    print("["..i.."] Added: "..res.typeInfo.name)
	                    resourceContainer.entityRegistry:add(res)
	                    registrySize = registrySize+1
	                else
	                    print("["..i.."] Failed: "..resourceData.Entities[i])
	                end
	            end
	        end
	        if (resourceData.Blueprints) then
	            print("Adding Blueprints ["..resourceName.."]...")
	            for i = 1, #resourceData.Blueprints do
	                local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.Blueprints[i]))
	                if (res) then
	                    print("["..i.."] Added: "..res.typeInfo.name)
	                    resourceContainer.blueprintRegistry:add(res)
	                    registrySize = registrySize+1
	                else
	                    print("["..i.."] Failed: "..resourceData.Blueprints[i])
	                end
	            end
	        end
	        if (resourceData.LogicReferrence) then
	            print("Adding Logic Referrences ["..resourceName.."]...")
	            for i = 1, #resourceData.LogicReferrence do
	                local res = ResourceManager:SearchForInstanceByGuid(Guid(resourceData.LogicReferrence[i]))
	                if (res) then
	                    print("["..i.."] Added: "..res.typeInfo.name)
	                    resourceContainer.referenceObjectRegistry:add(res)
	                    registrySize = registrySize+1
	                else
	                    print("["..i.."] Failed: "..resourceData.LogicReferrence[i])
	                end
	            end
	        end
	    end
    end
    if (registrySize > 0) then
    	return resourceContainer
    else
    	return
    end
end


return MMResources()