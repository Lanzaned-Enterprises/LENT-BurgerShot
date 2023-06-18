-- [[ QBCore ]] --
local QBCore = exports['qb-core']:GetCoreObject()

-- [[ Variables ]] --

-- [[ Resource Metadata ]] --

-- [[ Net Events ]] --
RegisterNetEvent('LENT-BurgerShot:Server:GiveItem', function(item, itemName, price, amount, billtype)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local totalWeight = GetTotalWeight(Player.PlayerData.items)
    local maxWeight = Config.QBCoreSettings['MaxInventoryWeight']
    local slots = 0

    local balance = Player.Functions.GetMoney(tostring(billtype))

    for _ in pairs(Player.PlayerData.items) do
        slots = slots + 1
    end

    slots = Config.QBCoreSettings['MaxSlots'] - slots

    if (totalWeight + (QBCore.Shared.Items[item].weight * amount)) > maxWeight then
        SendNotification("Not enough space in inventory", "error")
    elseif QBCore.Shared.Items[item].unique and (tonumber(slots) < tonumber(amount)) then
        SendNotification("Not enough space in inventory", "error")
    else
        if billtype == 'cash' then
            if (balance < price) then
                SendNotification("You don't have enough cash!", "error")
                return
            end

            Player.Functions.RemoveMoney("cash", price, "Burgershot Purchase")
        elseif billtype == 'bank' then
            if (balance < price) then
                SendNotification("You don't have enough cash!", "error")
                return
            end

            Player.Functions.RemoveMoney("bank", price, "Burgershot Purchase")
            if Config.ResourceSettings['Renewed'] then
                local cid = Player.PlayerData.citizenid
                local title = "Car Sale"
                local name = ("%s %s"):format(Player.PlayerData.charinfo.firstname, Player.PlayerData.charinfo.lastname)
                local txt = "Purchased " .. itemName .. ' for $' .. price .. ' at Burgershot'
                local issuer = "Ahron Ward @ Burger Shot"
                local reciver = name
                local type = "withdraw"
                exports['Renewed-Banking']:handleTransaction(cid, title, price, txt, issuer, reciver, type)
            end
        end

        Player.Functions.AddItem(item, amount)
        TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items[item], 'add')
    end
end)

RegisterNetEvent('LENT-BurgerShot:Server:GiveMenu', function(itemList, price, billtype)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    
    local totalWeight = GetTotalWeight(Player.PlayerData.items)
    local maxWeight = Config.QBCoreSettings['MaxInventoryWeight']
    local slots = 0

    local balance = Player.Functions.GetMoney(tostring(billtype))

    for _ in pairs(Player.PlayerData.items) do
        slots = slots + 1
    end

    slots = Config.QBCoreSettings['MaxSlots'] - slots

    if (totalWeight + (QBCore.Shared.Items[itemList.Drink].weight * 1)) > maxWeight then
        if (totalWeight + (QBCore.Shared.Items[itemList.Fries].weight * 1)) > maxWeight then
            if (totalWeight + (QBCore.Shared.Items[itemList.Burger].weight * 1)) > maxWeight then
                SendNotification("Not enough space in inventory", "error")
            end
        end
    elseif QBCore.Shared.Items[itemList.Drink].unique and (tonumber(slots) < tonumber(1)) then
        if QBCore.Shared.Items[itemList.Fries].unique and (tonumber(slots) < tonumber(1)) then
            if QBCore.Shared.Items[itemList.Burger].unique and (tonumber(slots) < tonumber(1)) then
                SendNotification("Not enough space in inventory", "error")
            end
        end
    else
        if billtype == 'cash' then
            if (balance < price) then
                SendNotification("You don't have enough cash!", "error")
                return
            end

            Player.Functions.RemoveMoney("cash", price, "Burgershot Purchase")
        elseif billtype == 'bank' then
            if (balance < price) then
                SendNotification("You don't have enough cash!", "error")
                return
            end

            Player.Functions.RemoveMoney("bank", price, "Burgershot Purchase")
            if Config.ResourceSettings['Renewed'] then
                local cid = Player.PlayerData.citizenid
                local title = "Car Sale"
                local name = ("%s %s"):format(Player.PlayerData.charinfo.firstname, Player.PlayerData.charinfo.lastname)
                local txt = "Purchased " .. itemName .. ' for $' .. price .. ' at Burgershot'
                local issuer = "Ahron Ward @ Burger Shot"
                local reciver = name
                local type = "withdraw"
                exports['Renewed-Banking']:handleTransaction(cid, title, price, txt, issuer, reciver, type)
            end
        end

        Player.Functions.AddItem(itemList.Drink, 1)
        Player.Functions.AddItem(itemList.Burger, 1)
        Player.Functions.AddItem(itemList.Fries, 1)
        TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items[itemList.Drink], 'add')
        TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items[itemList.Burger], 'add')
        TriggerClientEvent('inventory:client:ItemBox', src,  QBCore.Shared.Items[itemList.Fries], 'add')
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

function SendNotification(text, type)
    local src = source
    if Config.QBCoreSettings['Notify'] == 'ps' then
        TriggerClientEvent("ps-ui:client:notify", src, text, type)
    elseif Config.QBCoreSettings['Notify'] == 'qb' then
        TriggerClientEvent("QBCore:Notify", src, text, type)
    else
        TriggerClientEvent("QBCore:Notify", src, text, type)
    end
end

-- [[ Threads ]] --
