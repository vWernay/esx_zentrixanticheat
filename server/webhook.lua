-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
local webhooklink = "SEU_WEBHOOK_AQUI" -- COLOQUE SEU WEBHOOK AQUI!
local DISCORD_NAME = "ANTICHEAT NOMDE_DA_CITY"
local DISCORD_IMAGE = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSodDmhBuU7_u6d0zGYcnrfCF6ITLaU45td_Bqo4S8-7wMT5Urw"
local STEAM_KEY = "SEU_STEAM_KEY" -- SEU STEAM KEY AQUI!
local DISCORD_WEBHOOK = "SEU_WEBHOOK_AQUI" -- COLOQUE SEU WEBHOOK AQUI!

--PerformHttpRequest(webhooklink, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, content = "Anticheat **ATIVO**", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
	 PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	else 
	    PerformHttpRequest('https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=' .. STEAM_KEY .. '&steamids=' .. tonumber(GetIDFromSource('steam', source), 16), function(err, text, headers)

	    end)
	end
end

function GetIDFromSource(Type, ID) --(Obrigado ao WolfKnight [forum.FiveM.net])
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
------ LOG DE ARMAS BLACLIST ------
-------------------------

RegisterServerEvent("AC:ac_Armas:ACC")
AddEventHandler("AC:ac_Armas:ACC", function(black)
	local source = source
	local name = GetPlayerName(source)

	if GetIDFromSource('steam', source) ~= nil then
	SendWebhookMessage(webhooklink, "```O [STEAM HEX:" ..GetIDFromSource('steam', source).. "] Esta Supeito.```")
	SendWebhookMessage(webhooklink, "```O [User:" ..name.. "] Esta Supeito.```")
    end
end)

------------------------
------ LOG DE TRIGGER E BAN------
-------------------------

local banido = ""
local banidoTable = {}

function EstaBanido(id) -- Check se está banido
	return banidoTable[id]
end

function banirUser(id) -- Bane o palyer
	banido = banido .. id .. "\n"
	SaveResourceFile("ANTICHEAT", "data/bans.txt", banido, -1)
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

    SendWebhookMessage(webhooklink, "```O [User:" ..name.. "] Foi Banido por usar mod-menu CLIENT-SIDE!.```")
    for k,v in ipairs(GetPlayerIdentifiers(source))do
        banirUser(v)
    end
    DropPlayer(source, GetConvar("anticheat_reason_ban", "Você foi banido deste servidor!"))
end)

-------------------------------------------------------------
------ ANTI EXPLOSÃO -- SÓ FUNCIONA COM ONESYNC! ----------
--------------------------------------------------------------
if webhooklink == 'LINK' then
	print('\n\nERROR\n' .. GetCurrentResourceName() .. ': Por Favor adcione um discord webhook\n\n')
else
	PerformHttpRequest(DiscordWebhookSystemInfos, function(Error, Content, Head)
		if Content == '{"code": 50027, "message": "Webhook invalido"}' then
			print('\n\nERRO\n' .. GetCurrentResourceName() .. ': Discord webhook não existe!\n\n')
		end
	end)
end

AddEventHandler('explosionEvent', function(sender, ev)
    print(GetPlayerName(sender), json.encode(ev))
	TriggerEvent('AntiExplosions:Log', webhooklink, GetPlayerName(sender)..' '.."tentou explodir alguém!".."\nSteam ID : "..GetIDFromSource('steam', sender))
	CancelEvent()
	if DropPlayerOnExplosion then
		DropPlayer(sender, DropReason)
	end
end)

RegisterServerEvent('AntiExplosions:Log')
AddEventHandler('AntiExplosions:Log', function(WebHook, Message)
	PerformHttpRequest(webhooklink, function(Error, Content, Head) end, 'POST', json.encode({username = "AntiExplosões Script - Feito por victorBOY#0001", content = Message}), {['Content-Type'] = 'application/json'})
end)

------------------------
------ ANTI 2-IP  ------
-------------------------
--- CONFIG ---
webhook = 'SEU_WEBHOOK_AQUI'; -- TROQUE PELO SEU WEBHOOK!



--- CODIGO ---
function ExtractIdentifiers(src)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    --Loop todos os indentificadores
    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)

        --Convert it to a nice table.
        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end
function sendToDiscord(title, msg)
    local embed = {}
    embed = {
        {
            ["color"] = 16711680,
            ["title"] = "**".. title .."**",
            ["description"] = msg,
            ["footer"] = {
                ["text"] = "",
            },
        }
    }
    PerformHttpRequest(webhook, 
    function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end
playerTracker = {}
function GetAllPlayers()
    local players = {}

    for _, i in ipairs(GetPlayers()) do
        table.insert(players, i)    
    end

    return players
end
prefix = '^9[^5Anti-2IP^9] ^3'
AddEventHandler('playerConnecting', function(playerName, deferrals)
    local src = source 
    local ip = ExtractIdentifiers(src).ip 
    if playerTracker[ip] ~= nil then 
        if playerTracker[ip] ~= GetPlayerName(src) then 
            -- Print their name changed to staff 
            local players = GetAllPlayers()
            for i=1, #players do
                if IsPlayerAceAllowed(players[i], 'group.admin') then 
                    TriggerClientEvent('chatMessage', players[i], prefix .. "Player ^1" .. GetPlayerName(src) .. " ^3costumava ter o nick ^1" ..
                        playerTracker[ip])
                end
            end
            sendToDiscord('ALERTA DE NOME ALTERADO', "Player __" .. GetPlayerName(src) .. "__ alterou o nick para __" ..
                        playerTracker[ip] .. "__")
        end
    end 
    playerTracker[ip] = GetPlayerName(src)
end)
