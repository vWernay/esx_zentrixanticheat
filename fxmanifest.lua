  fx_version 'bodacious'
game 'gta5'

author 'victorBOY'
description 'Anticheat ESX básico, com AntiTriggers'
version '0.2.1'

client_scripts {
    'ZentryAnticheat.Client.net.dll',
    'config.lua',
    'client/checkcheater.lua',
    'client/main.lua'
}

server_scripts {
    'ZentryAnticheat.Server.net.dll',
    'config.lua',
    'server/webhook.lua',
    'server/main.lua',
    'version.lua'
}