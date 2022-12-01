require('__shared/version')

function getCurrentVersion()
    options = HttpOptions({}, 10);
    options.verifyCertificate = false; --ignore cert for wine users
    res = Net:GetHTTP("https://raw.githubusercontent.com/spatieman/VU-PixelsMod/main/mod.json", options);
    if res.status ~= 200 then
        return null;
    end
    json = json.decode(res.body);
    return json.Version;
end

function checkVersion()
    if getCurrentVersion() ~= localModVersion then
	print("********************************************************************************************");
        print("** Pixelmod seems to be out of date! Please visit https://github.com/spatieman/VU-PixelsMod" );
	print('Changed Version on github is ('..json.Version..') - Local version:('..localModVersion..')...')
	print("********************************************************************************************");
	else
	print("************************************************************************");
	print("********************* Pixelmod seems to be up2date *********************");
	print('Version on github is ('..json.Version..') - Local version:('..localModVersion..')...')
	print("************************************************************************");
    end
end

checkVersion();

