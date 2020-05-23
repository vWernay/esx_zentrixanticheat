--[[ Checar Versão ]]--
local VERSION = "0.2.1"

AddEventHandler("onResourceStart", function(resource)
    if resource == GetCurrentResourceName() then
        checkVersion()
    end
end)

function checkVersion()
  PerformHttpRequest("https://raw.githubusercontent.com/vWernay/esx_zentrixanticheat/master/version.json", function(err, text, h)
    if err == 200 then
      local versionArray = json.decode(text)
      local gitVersion = versionArray.version

      if(VERSION ~= gitVersion) then
        print("\n=================================\n")
        local patchnoteArray = versionArray.patchnote
        local patchnote = ""
        for _, line in pairs(patchnoteArray) do
          patchnote = patchnote..line.."\n"
        end

        print("Uma nova versão do ZENTRIX_ANTICHEAT está disponível: "..gitVersion)
        print("patchnote: \n"..patchnote)
        print("\n=================================\n")
      end
    else
      print("cant_get_version")
    end
  end, "GET")
end