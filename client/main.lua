-----------------------------------------------------------------------------------------------------------------------------------------
-- ANTI-TRIGGERS -- AQUI VÃO TRIGGERS CLIENT-SIDE QUE ALGUNS LUA EXEC EXECUTAM
-----------------------------------------------------------------------------------------------------------------------------------------
local EventosHackerClient = {
    "ambulancier:selfRespawn",
    "esx_jailer:wysylandoo",
    "HCheat:TempDisableDetection",
    "UnJP",
    "vrp:noclip",
    "vrp:teleport",
    "vrp:teleportar"
}

local AlreadyTriggered = false

for i, eventName in ipairs(EventosHackerClient) do
    AddEventHandler(
        eventName,
        function()
        local _source = source
        local name = GetPlayerName(_source)
            if AlreadyTriggered == true then
                CancelEvent()
                return
            end
            TriggerServerEvent('AC:triggerc', hacker) -- BANIR
            AlreadyTriggered = true
        end
    )
end