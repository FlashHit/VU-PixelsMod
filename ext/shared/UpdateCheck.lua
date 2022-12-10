do
	local m_ModVersion = require('__shared/version')
	-- Object in mod.json for Reason: upgrade - patch - bugfix - new release - stable release - test
	-- or anything else you want to announce.
	-- if u want to use this, use the mod.json i am using, it contains the   "Reason": "whatever it is",  entry.

	local function _GetResponse()
		local s_Options = HttpOptions({}, 10)
		s_Options.verifyCertificate = false

		local s_Response = Net:GetHTTP("https://raw.githubusercontent.com/spatieman/VU-PixelsMod/main/mod.json", s_Options);

		if not s_Response or s_Response.status ~= 200 then
			return
		end

		local s_Table = json.decode(s_Response.body)

		return s_Table.Version, s_Table.Reason
	end

	local s_Version, s_Reason = _GetResponse()

	if s_Version ~= m_ModVersion then
		print("**********************************************************************************************");
		print("** Pixelmod seems to be out of date! Please visit https://github.com/spatieman/VU-PixelsMod **");
		print('Changed Version on github is (' .. s_Version .. ') - Local version:(' .. m_ModVersion .. ') - Reason for update: (' .. s_Reason .. ')')
		print("**********************************************************************************************");
	else
		print("************************************************************************");
		print("********************* Pixelmod seems to be up2date *********************");
		print('Version on github is (' .. s_Version .. ') - Local version:(' .. m_ModVersion .. ')...')
		print("************************************************************************");
	end
end
