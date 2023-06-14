-- [[ QBCore ]] --
local QBCore = exports['qb-core']:GetCoreObject()

-- [[ Variables ]] --

-- [[ Resource Metadata ]] --

-- [[ Net Events ]] --
RegisterNetEvent('LENT-BurgerShot:Server:GiveItem', function(item, itemName, price, amount, billtype) 
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local totalWeight = GetTotalWeight(Player.PlayerData.items)
    local maxWeight = 240000
    local slots = 0

    local balance = Player.Functions.GetMoney(tostring(billtype))

    for _ in pairs(Player.PlayerData.items) do slots = slots + 1 end
    slots = Config.QBCoreSettings['MaxSlots'] - slots
    
    if (totalWeight + (QBCore.Shared.Items[item].weight * amount)) > maxWeight then
        if Config.QBCoreSettings['Notify'] == 'ps' then
            TriggerClientEvent("ps-ui:client:notify", src, "Not enough space in inventory", "error")
        elseif Config.QBCoreSettings['Notify'] == 'qb' then
            TriggerClientEvent("QBCore:Notify", src, "Not enough space in inventory", "error")
        else
            TriggerClientEvent("QBCore:Notify", src, "Not enough space in inventory", "error")
        end
    elseif QBCore.Shared.Items[item].unique and (tonumber(slots) < tonumber(amount)) then
        if Config.QBCoreSettings['Notify'] == 'ps' then
            TriggerClientEvent("ps-ui:client:notify", src, "Not enough space in inventory", "error")
        elseif Config.QBCoreSettings['Notify'] == 'qb' then
            TriggerClientEvent("QBCore:Notify", src, "Not enough space in inventory", "error")
        else
            TriggerClientEvent("QBCore:Notify", src, "Not enough space in inventory", "error")
        end
    else
        if billtype == 'cash' then 
            Player.Functions.RemoveMoney("cash", price, "Burgershot Purchase")
        elseif billtype == 'bank' then
            Player.Functions.RemoveMoney("bank", price, "Burgershot Purchase")
            local cid = Player.PlayerData.citizenid
            local title = "Car Sale"
            local name = ("%s %s"):format(Player.PlayerData.charinfo.firstname, Player.PlayerData.charinfo.lastname)
            local txt = "Purchased " .. itemName .. ' for $' .. price .. ' at Burgershot'
            local issuer = "Ahron Ward @ Burger Shot"
            local reciver = name
            local type = "withdraw"
            exports['Renewed-Banking']:handleTransaction(cid, title, price, txt, issuer, reciver, type)
        end

        Player.Functions.AddItem(item, amount)
        TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items[item], 'add')
    end
end)

-- [[ Functions ]] --
function GetTotalWeight(items) 
    local weight = 0 
    if not items then 
        return 0 
    end 
    for _, item in pairs(items) do 
        weight += item.weight * item.amount 
    end 
    return tonumber(weight) 
end

-- [[ Threads ]] --
