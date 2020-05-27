-----------------------------------------------------------------------------------------------------------------------------------------
-- ANTI-TRIGGERS -- AQUI VÃO TRIGGERS SERVER-SIDE QUE ALGUNS LUA EXEC EXECUTAM
-----------------------------------------------------------------------------------------------------------------------------------------
local EventosHacker = {
    "8321hiue89js",
    "adminmenu:allowall",
    "AdminMenu:giveBank",
    "AdminMenu:giveCash",
    "AdminMenu:giveDirtyMoney",
    "Tem2LPs5Para5dCyjuHm87y2catFkMpV",
    "dqd36JWLRC72k8FDttZ5adUKwvwq9n9m",
    "antilynx8:anticheat",
    "antilynxr4:detect",
    "antilynxr6:detection",
    "ynx8:anticheat",
    "antilynx8r4a:anticheat",
    "lynx8:anticheat",
    "AntiLynxR4:kick",
    "AntiLynxR4:log",
    "Banca:deposit",
    "Banca:withdraw",
    "BsCuff:Cuff696999",
    "CheckHandcuff",
    "cuffServer",
    "cuffGranted",
    "DFWM:adminmenuenable",
    "DFWM:askAwake",
    "DFWM:checkup",
    "DFWM:cleanareaentity",
    "DFWM:cleanareapeds",
    "DFWM:cleanareaveh",
    "DFWM:enable",
    "DFWM:invalid",
    "DFWM:log",
    "DFWM:openmenu",
    "DFWM:spectate",
    "DFWM:ViolationDetected",
    "dmv:success",
    "eden_garage:payhealth",
    "ems:revive",
    "esx_blanchisseur:startWhitening",
    "esx_drugs:startHarvestWeed",
    "esx_drugs:startTransformWeed",
    "esx_drugs:startSellWeed",
    "esx_drugs:startHarvestCoke",
    "esx_drugs:startTransformCoke",
    "esx_drugs:startSellCoke",
    "esx_drugs:startHarvestMeth",
    "esx_drugs:startTransformMeth",
    "esx_drugs:startSellMeth",
    "esx_drugs:startHarvestOpium",
    "esx_drugs:startTransformOpium",
    "esx_drugs:startSellOpium",
    "esx_drugs:stopHarvestCoke",
    "esx_drugs:stopTransformCoke",
    "esx_drugs:stopSellCoke",
    "esx_drugs:stopHarvestMeth",
    "esx_drugs:stopTransformMeth",
    "esx_drugs:stopSellMeth",
    "esx_drugs:stopHarvestWeed",
    "esx_drugs:stopTransformWeed",
    "esx_drugs:stopSellWeed",
    "esx_drugs:stopHarvestOpium",
    "esx_drugs:stopTransformOpium",
    "esx_drugs:stopSellOpium",
    "esx:enterpolicecar",
    "esx_fueldelivery:pay",
    "esx_jail:sendToJail",
    "esx_jail:unjailQuest",
    "esx_jailer:sendToJail",
    "esx_jailer:unjailTime",
    "esx_pizza:pay",
    "esx_ranger:pay",
    "esx_slotmachine:sv:2",
    "hentailover:xdlol",
    "JailUpdate",
    "js:jailuser",
    "js:removejailtime",
    "LegacyFuel:PayFuel",
    "ljail:jailplayer",
    "lscustoms:payGarage",
    "mellotrainer:adminTempBan",
    "mellotrainer:adminKick",
    "mellotrainer:s_adminKill",
    "NB:destituerplayer",
    "NB:recruterplayer",
    "OG_cuffs:cuffCheckNearest",
    "paramedic:revive",
    "police:cuffGranted",
    "unCuffServer",
    "uncuffGranted",
    "vrp_slotmachine:server:2",
    "whoapd:revive",
    "gcPhone:_internalAddMessageDFWM",
    "gcPhone:tchat_channelDFWM",
    "esx_conce:setVehicleOwnedDFWM",
    "esx_mafiajob:confiscateDFWMPlayerItem",
    "_chat:messageEntDFWMered",
    "lscustoms:pDFWMayGarage",
    "vrp_slotmachDFWMine:server:2",
    "Banca:dDFWMeposit",
    "bank:depDFWMosit",
    "esx_jobs:caDFWMution",
    "give_back",
    "esx_fueldDFWMelivery:pay",
    "esx_carthDFWMief:pay",
    "esx_godiDFWMrtyjob:pay",
    "esx_pizza:pDFWMay",
    "esx_ranger:pDFWMay",
    "esx_garbageDFWMjob:pay",
    "esx_truckDFWMerjob:pay",
    "AdminMeDFWMnu:giveBank",
    "AdminMDFWMenu:giveCash",
    "esx_goDFWMpostaljob:pay",
    "esx_baDFWMnksecurity:pay",
    "esx_sloDFWMtmachine:sv:2",
    "esx:giDFWMveInventoryItem",
    "NB:recDFWMruterplayer",
    "esx_biDFWMlling:sendBill",
    "esx_jDFWMailer:sendToJail",
    "esx_jaDFWMil:sendToJail",
    "js:jaDFWMiluser",
    "esx-qalle-jail:jailPDFWMlayer",
    "esx_dmvschool:pDFWMay",
    "LegacyFuel:PayFuDFWMel",
    "OG_cuffs:cuffCheckNeDFWMarest",
    "CheckHandcDFWMuff",
    "cuffSeDFWMrver",
    "cuffGDFWMranted",
    "police:cuffGDFWMranted",
    "esx_handcuffs:cufDFWMfing",
    "esx_policejob:haDFWMndcuff",
    "bank:withdDFWMraw",
    "dmv:succeDFWMss",
    "esx_skin:responseSaDFWMveSkin",
    "esx_dmvschool:addLiceDFWMnse",
    "esx_mechanicjob:starDFWMtCraft",
    "esx_drugs:startHarvestWDFWMeed",
    "esx_drugs:startTransfoDFWMrmWeed",
    "esx_drugs:startSellWeDFWMed",
    "esx_drugs:startHarvestDFWMCoke",
    "esx_drugs:startTransDFWMformCoke",
    "esx_drugs:startSellCDFWMoke",
    "esx_drugs:startHarDFWMvestMeth",
    "esx_drugs:startTDFWMransformMeth",
    "esx_drugs:startSellMDFWMeth",
    "esx_drugs:startHDFWMarvestOpium",
    "esx_drugs:startSellDFWMOpium",
    "esx_drugs:starDFWMtTransformOpium",
    "esx_blanchisDFWMseur:startWhitening",
    "esx_drugs:stopHarvDFWMestCoke",
    "esx_drugs:stopTranDFWMsformCoke",
    "esx_drugs:stopSellDFWMCoke",
    "esx_drugs:stopHarvesDFWMtMeth",
    "esx_drugs:stopTranDFWMsformMeth",
    "esx_drugs:stopSellMDFWMeth",
    "esx_drugs:stopHarDFWMvestWeed",
    "esx_drugs:stopTDFWMransformWeed",
    "esx_drugs:stopSellWDFWMeed",
    "esx_drugs:stopHarvestDFWMOpium",
    "esx_drugs:stopTransDFWMformOpium",
    "esx_drugs:stopSellOpiuDFWMm",
    "esx_society:openBosDFWMsMenu",
    "esx_tankerjob:DFWMpay",
    "esx_vehicletrunk:givDFWMeDirty",
    "gambling:speDFWMnd",
    "AdminMenu:giveDirtyMDFWMoney",
    "esx_moneywash:depoDFWMsit",
    "esx_moneywash:witDFWMhdraw",
    "mission:completDFWMed",
    "truckerJob:succeDFWMss",
    "99kr-burglary:addMDFWMoney",
    "esx_jailer:unjailTiDFWMme",
    "esx_ambulancejob:reDFWMvive",
    "DiscordBot:plaDFWMyerDied",
    "esx:getShDFWMaredObjDFWMect",
    "esx_society:getOnlDFWMinePlayers",
    "js:jaDFWMiluser",
    "h:xd",
    "adminmenu:setsalary",
    "adminmenu:cashoutall",
    "bank:tranDFWMsfer",
    "paycheck:bonDFWMus",
    "paycheck:salDFWMary",
    "HCheat:TempDisableDetDFWMection",
    "esx_drugs:pickedUpCDFWMannabis",
    "esx_drugs:processCDFWMannabis",
    "esx-qalle-hunting:DFWMreward",
    "esx-qalle-hunting:seDFWMll",
    "esx_mecanojob:onNPCJobCDFWMompleted",
    "BsCuff:Cuff696DFWM999",
    "veh_SR:CheckMonDFWMeyForVeh",
    "esx_carthief:alertcoDFWMps",
    "mellotrainer:adminTeDFWMmpBan",
    "mellotrainer:adminKickDFWM",
    "esx_society:putVehicleDFWMInGarage",
    "esx_vehicletrunk:giveDirty",
    "f0ba1292-b68d-4d95-8823-6230cdf282b6",
    "gambling:spend",
    "265df2d8-421b-4727-b01d-b92fd6503f5e",
    "pizza:pourboire",
    "vrp:sendmoney",
    "vrp:getmoney",
    "vrp:noclip",
    "vrp:teleport",
    "vrp:teleportar",
    "esx_mafiajob:getOtherPlayerData", -- REMOVA CASO USE O "ESX_MAFIAJOB" PADRÃO
    "xaxaxaxaxaxaxaxaxax",
    "lscustoms:payGarage",
    "esx_carthief:pay",
    "esx_godirtyjob:pay",
    "esx_banksecurity:pay",
    "e8a5d81b-5c30-4cf1-a16e-5805fc8fd24e",
    "esx_pilot:success",
    "dropOff",
    "PayForRepairNow"
}

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

for i, eventName in ipairs(EventosHacker) do -- Se algum hacker usar um evento ele bane
    RegisterNetEvent(eventName)
    AddEventHandler(
      eventName,
      function()
        local _source = source
        local name = GetPlayerName(_source)
  
        local steam = ""
        local license = ""
        local discord = ""
        local xbl = ""
        local live = ""
        local fivem = ""
  
        for k, v in pairs(GetPlayerIdentifiers(_source)) do
          if string.sub(v, 1, string.len("steam:")) == "steam:" then
            steam = v
          elseif string.sub(v, 1, string.len("license:")) == "license:" then
            license = v
          elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
            xbl = v
          elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord = v
          elseif string.sub(v, 1, string.len("live:")) == "live:" then
            live = v
          elseif string.sub(v, 1, string.len("fivem:")) == "fivem:" then
            fivem = v
          end
        end

        SendWebhookMessage(Config.webhook, "```O [User:" ..name.. "] Foi Banido por usar mod menu SERVER-SIDE!.```")
        for k,v in ipairs(GetPlayerIdentifiers(source))do
            banirUser(v)
        end
        DropPlayer(source, GetConvar("anticheat_reason_ban", "Você foi banido deste servidor!"))
      end
    )
  end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANTI FLOOD HACK -- MUITOS "MODS MENU" USAM ISSO AO FAZER UMA AÇÃO NO SERVIDOR
-----------------------------------------------------------------------------------------------------------------------------------------

local blacklisted = 
    {
  ------------------------------- FRASES PROIBIDAS NO CHAT
    "/ooc kogusz menu! Buy at https://discord.gg/BbDMhJe",
    "/ooc Baggy Menu! Buy at https://discord.gg/AGxGDzg",
    "/ooc Desudo Menu! Buy at https://discord.gg/hkZgrv3",
    "/ooc Yo add me Fallen#0811",
    "/ooc \107\111\103\117\115\122\10 menu! Buy at https://discord.gg/BM5zTvA",
    "/frp kogusz menu! Buy at https://discord.gg/BbDMhJe",
    "/frp Baggy Menu! Buy at https://discord.gg/AGxGDzg",
    "/frp Desudo Menu! Buy at https://discord.gg/hkZgrv3",
    "/frp Yo add me Fallen#0811",
    "/frp \107\111\103\117\115\122\10 menu! Buy at https://discord.gg/BM5zTvA",
    "BAGGY menu <3 https://discord.gg/AGxGDzg",
    "KoGuSzMENU <3 https://discord.gg/BbDMhJe",
    "KoGuSzMENU <3 https://discord.gg/BM5zTvA",
    "Desudo menu <3 https://discord.gg/hkZgrv3",
    "Yo add me Fallen#0811",
    "Lynx 8 ~ www.lynxmenu.com",
    "Lynx 7 ~ www.lynxmenu.com",
    "lynxmenu.com",
    "www.lynxmenu.com",
    "You got raped by Lynx 8",
    "^0Lynx 8 ~ www.lynxmenu.com",
    "^0AlphaV ~ 5391",
    "^0You got raped by AlphaV",
    "^0TITO MODZ - Cheats and Anti-Cheat",
    "^0https://discord.gg/AGxGDzg",
    "^0https://discord.gg/hkZgrv3",
    "You just got fucked mate",
    "Add me Fallen#0811",
    "Desudo; Plane#000",
    "BAGGY; baggy#6875",
    "SKAZAMENU",
    "skaza",
    "aries",
    "youtube.com"
    }

AddEventHandler('chatMessage', function(source, name, message)
    
  local _source = source
  local name = GetPlayerName(_source)

  local steam = ""
  local license = ""
  local discord = ""
  local xbl = ""
  local live = ""
  local fivem = ""

  for k, v in pairs(GetPlayerIdentifiers(_source)) do
    if string.sub(v, 1, string.len("steam:")) == "steam:" then
      steam = v
    elseif string.sub(v, 1, string.len("license:")) == "license:" then
      license = v
    elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
      xbl = v
    elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
      discord = v
    elseif string.sub(v, 1, string.len("live:")) == "live:" then
      live = v
    elseif string.sub(v, 1, string.len("fivem:")) == "fivem:" then
      fivem = v
    end
  end

  for i , word in ipairs(blacklisted) do
    if string.match(message, word) then
      SendWebhookMessage(Config.webhook, "```O [User:" ..name.. "] Foi Banido por usar mod menu SERVER-SIDE!.```")
      for k,v in ipairs(GetPlayerIdentifiers(source))do
        banirUser(v)
      end
      DropPlayer(source, 'ZentriX-Anticheat / Eu acho que você tentou injetar algo :)')
      CancelEvent()
      end
    end

end)
