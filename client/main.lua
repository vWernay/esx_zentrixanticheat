local EventosHackerClient = { -- REMOVA ALGUNS CASO SEU SERVIDOR ULTILIZE
    "ambulancier:selfRespawn",
    "esx_jailer:wysylandoo",
    "HCheat:TempDisableDetection",
    "UnJP",
    "vrp:noclip",
    "vrp:teleport",
    "vrp:teleportar",
    "esx_inventoryhud:openPlayerInventory" -- CASO VOCÊ TENHA O "esx_inventoryhud" REMOVA
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
            TriggerServerEvent('AC:triggerc', hacker)
            AlreadyTriggered = true
        end
    )
end
