-- [[ QBCore ]] --
local QBCore = exports['qb-core']:GetCoreObject()

-- [[ Variables ]] --
local pedSpawned = false
local PedCreated = {}

local ZoneSpawned = false 
local ZoneCreated = {}

local BlipSpawned = false
local SpawnedBlips = {}

-- [[ Resource Metadata ]] --
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        DeleteAllPeds()
        DeleteZones()
        RemoveBlips()
    end
end)

-- [[ Net Events ]] --
RegisterNetEvent('LENT-BurgerShot:Client:SelectionMenu', function()
    local SelectionMenu = {}

    SelectionMenu[#SelectionMenu + 1] = {
        isMenuHeader = true,
        header = Config.ResourceSettings['Language']['SelectionHeader'],
        txt = Config.ResourceSettings['Language']['SelectionText'],
        icon = Config.ResourceSettings['SelectionIcon'],
    }

    for k, _ in pairs(Config.ProductList) do
        SelectionMenu[#SelectionMenu + 1] = {
            header = Config.ProductList[k].Name,
            params = {
                event = 'LENT-BurgerShot:Client:OpenMenu',
                args = {
                    SelectedOption = Config.ProductList[k].Tag,
                },
            },
        }
    end

    exports['qb-menu']:openMenu(SelectionMenu)
end)

RegisterNetEvent('LENT-BurgerShot:Client:OpenMenu', function(data)
    local SelectedOption = data.SelectedOption
    
    local MenuList = {}

    MenuList[#MenuList + 1] = {
        isMenuHeader = true,
        header = Config.ResourceSettings['Language']['Header'],
        txt = Config.ResourceSettings['Language']['Text'],
        icon = Config.ResourceSettings['MenuIcon'],
        
    }

    for k, _ in pairs(Config.ProductList[SelectedOption]['Products']) do
        MenuList[#MenuList + 1] = {
            header = Config.ProductList[SelectedOption]['Products'][k].ItemName,
            txt = 'The price of this product is $' .. Config.ProductList[SelectedOption]['Products'][k].Price .. ' Dollars',
            icon = Config.ProductList[SelectedOption]['Products'][k].Item,
            params = {
                event = 'LENT-BurgerShot:Client:SendPurchaseData',
                args = {
                    itemName = Config.ProductList[SelectedOption]['Products'][k].ItemName,
                    item = Config.ProductList[SelectedOption]['Products'][k].Item,
                    price = Config.ProductList[SelectedOption]['Products'][k].Price,
                },
            },
        }
    end

    exports['qb-menu']:openMenu(MenuList)
end)

RegisterNetEvent('LENT-BurgerShot:Client:SendPurchaseData', function(data)
    local item = data.item
    local price = data.price
    local itemName = data.itemName

    local BurgerShotInput = exports['qb-input']:ShowInput({
        header = itemName,
        submitText = 'Purchase',
        inputs = {
            {
                text = "Amount",
                name = "burgershotamount", 
                type = "number", 
                isRequired = true, 
            },
            {
                text = "Bill Type",
                name = "burgershotbilltype",
                type = "radio",
                options = {
                    { value = "cash", text = "Cash" },
                    { value = "bank", text = "Bank" },
                },
            },
        }
    })

    if BurgerShotInput then
        local amount = BurgerShotInput.burgershotamount
        local billtype = BurgerShotInput.burgershotbilltype
        TriggerServerEvent('LENT-BurgerShot:Server:GiveItem', item, itemName, price, amount, billtype)
    end
end)

-- [[ Functions ]] --
function DeleteAllPeds() 
    if pedSpawned then
        for _, v in pairs(PedCreated) do
            DeletePed(v)
        end
    end
end

function DeleteZones()
    if ZoneSpawned then
        for k, v in pairs(ZoneCreated) do
            exports['qb-target']:RemoveZone(k)
            exports['qb-target']:RemoveZone(v["name"])
        end
    end
end

function RemoveBlips()
    for i, BlipCreated in pairs(SpawnedBlips) do
        RemoveBlip(BlipCreated)
    end
end

-- [[ Threads ]] --
CreateThread(function()
    for k, v in pairs(Config.PedsList) do
        if pedSpawned then 
            return 
        end
    
        for k, v in pairs(Config.PedsList) do
            if not PedCreated[k] then 
                PedCreated[k] = {} 
            end
    
            local current = v["Ped"]
            current = type(current) == 'string' and joaat(current) or current
            RequestModel(current)
    
            while not HasModelLoaded(current) do
                Wait(0)
            end
    
            -- The coords + heading of the Ped
            PedCreated[k] = CreatePed(0, current, v["Coords"].x, v["Coords"].y, v["Coords"].z-1, v["Coords"].w, false, false)
            
            -- Start the scneario in a basic loop
            TaskStartScenarioInPlace(PedCreated[k], v["scenario"], true)
            FreezeEntityPosition(PedCreated[k], true)
            SetEntityInvincible(PedCreated[k], true)
            SetBlockingOfNonTemporaryEvents(PedCreated[k], true)
            
            exports['qb-target']:AddTargetEntity(PedCreated[k], {
                options = {
                    {
                        type = 'client',
                        event = 'LENT-BurgerShot:Client:SelectionMenu',
                        icon = v["icon"],
                        label = v["text"],
                    },
                },
                distance = 2.0
            })
    
            -- Clothing for MP Characters
            if v["MPClothing"] then
                SetPedComponentVariation(PedCreated[k], 2, v["hair"], 0, 0)
                SetPedComponentVariation(PedCreated[k], 3, v["hands"], v["HA_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 8, v["undershirts"], v["U_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 11, v["tops"], v["T_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 9, v["kevlar"], v["K_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 10, v["decal"], v["D_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 7, v["accs"], v["A_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 5, v["bags"], v["B_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 4, v["pants"], v["P_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 6, v["shoes"], v["S_Texture"], 0)
                SetPedComponentVariation(PedCreated[k], 1, v["mask"], v["mask_Texture"], 0)
                SetPedPropIndex(PedCreated[k], 0, v['hat'], v['hat_TEXTURE'], true)
                SetPedPropIndex(PedCreated[k], 1, v['glasses'], v['glasses_TEXTURE'], true)
                SetPedHeadBlendData(PedCreated[k], v["mother"], v["father"], 0,0, 0, 0, 0, v["mix"], 0, false)
                SetPedHairColor(PedCreated[k], v["HAIR_Texture"], v["HAIR_HIGHLIGHT"])
                SetPedHeadOverlay(PedCreated[k], 4, v["makeup"], v["makeup_OPACITY"])
                SetPedHeadOverlayColor(PedCreated[k], 4, 1, v["makeup_COLOR"], 0)
                SetPedHeadOverlay(PedCreated[k], 8, v["lipstick"], v["lipstick_OPACITY"])
                SetPedHeadOverlayColor(PedCreated[k], 8, 1, v["lipstick_COLOR"], 0)
                SetPedHeadOverlay(PedCreated[k], 2, v["eyebrows"], v["eyebrows_OPACITY"])
                SetPedHeadOverlayColor(PedCreated[k], 2, 1, v["eyebrows_COLOR"], 0)
                SetPedHeadOverlay(PedCreated[k], 1, v["beard"], v["beard_OPACITY"])
                SetPedHeadOverlayColor(PedCreated[k], 1, 1, v["beard_COLOR"], 0)
                SetPedEyeColor(PedCreated[k], v['eye_COLOR'])
            end
        end
    
        pedSpawned = true
    end
end)

CreateThread(function()
    for k, v in pairs(Config.ZoneList) do
        if ZoneSpawned then
            return
        end

        for k, v in pairs(Config.ZoneList) do
            if not ZoneCreated[k] then
                ZoneCreated[k] = {}
            end

            ZoneCreated[k] = exports['qb-target']:AddBoxZone(v["Name"], v["Coords"], v["Height"], v["Width"], { 
                name = v["Name"],
                heading = v["Heading"],
                debugPoly = v["Debug"],
                minZ = v["MinZ"],
                maxZ = v["MaxZ"],
            }, { 
                options = { 
                    {
                        type = 'client',
                        event = 'LENT-BurgerShot:Client:SelectionMenu',
                        icon = v["Icon"],
                        label = v["Label"], 
                    },
                },
                distance = 2.0
            })
        end

        ZoneSpawned = true
    end
end)

CreateThread(function()
    if not BlipSpawned then
        for blip, _ in pairs(Config.Blips) do
            local BlipCreated = AddBlipForCoord(Config.Blips[blip]["Coords"]["x"], Config.Blips[blip]["Coords"]["y"], Config.Blips[blip]["Coords"]["z"])
            SetBlipSprite(BlipCreated, Config.Blips[blip]["BlipId"])
            SetBlipDisplay(BlipCreated, 2)
            SetBlipScale(BlipCreated, 0.8)
            SetBlipColour(BlipCreated, Config.Blips[blip]["BlipColor"])
            SetBlipAlpha(BlipCreated, 256)
            SetBlipAsShortRange(BlipCreated, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(Config.Blips[blip]["BlipName"])
            EndTextCommandSetBlipName(BlipCreated)
            table.insert(SpawnedBlips, BlipCreated)
        end
    end
end)