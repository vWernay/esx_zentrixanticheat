-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK -- AQUI É CARREGADO TODO SISTEMA DE WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
	 PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	else 
	    PerformHttpRequest('https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=' .. Config.STEAM_KEY .. '&steamids=' .. tonumber(GetIDFromSource('steam', source), 16), function(err, text, headers)

	    end)
	end
end

function GetIDFromSource(Type, ID) --(Obrigado ao WolfKnight do [forum.FiveM.net])
    local IDs = GetPlayerIdentifiers(ID)
    for k, CurrentID in pairs(IDs) do
        local ID = stringsplit(CurrentID, ':')
        if (ID[1]:lower() == string.lower(Type)) then
            return ID[2]:lower()
        end
    end
    return nil
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

------------------------
------ ARMAS -----------
-------------------------

RegisterServerEvent("AC:webhook:ACC")
AddEventHandler("AC:webhook:ACC", function(black, obj)
	local source = source
	local name = GetPlayerName(source)

	if GetIDFromSource('steam', source) ~= nil then
	SendWebhookMessage(Config.webhook, "```O [STEAM HEX:" ..GetIDFromSource('steam', source).. "] Esta Supeito.```")
	SendWebhookMessage(Config.webhook, "```O [User:" ..name.. "] Esta Supeito.```")
    end
end)

------------------------
------ TRIGGER E BAN ------
-------------------------

local banido = ""
local banidoTable = {}

function EstaBanido(id) -- Check se está banido
	return banidoTable[id]
end

function banirUser(id) -- Bane o palyer
	banido = banido .. id .. "\n"
	SaveResourceFile("esx_zentrixanticheat", "data/bans.txt", banido, -1)
	banidoTable[id] = true
end

AddEventHandler('playerConnecting', function(user, set) -- Quando ele entra faz um check
	for k,v in ipairs(GetPlayerIdentifiers(source))do
		if EstaBanido(v) then
			set(GetConvar("anticheat_reason_ban", "Você foi banido deste server!"))
			CancelEvent()
			break
		end
	end
end)

RegisterServerEvent("AC:triggerc")
AddEventHandler("AC:triggerc", function(hacker)
	local source = source
	local name = GetPlayerName(source)

    SendWebhookMessage(Config.webhook, "```O [User:" ..name.. "] Foi Banido por usar mod menu CLIENT-SIDE!.```")
    for k,v in ipairs(GetPlayerIdentifiers(source))do
        banirUser(v)
    end
    DropPlayer(source, GetConvar("anticheat_reason_ban", "Você foi banido deste servidor!"))
end)
