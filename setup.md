# LENT-BurgerShot Setup
**qb-core**
*qb-core/shared/items.lua*
```lua
    ['cb_bacon_burger'] 		= {['name'] = 'cb_bacon_burger', 	  	['label'] = 'Bacon Cheeseburger', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_bacon_burger.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Bacon Cheeseburger'},
    ['cb_cheeseburger'] 		= {['name'] = 'cb_cheeseburger', 	  	['label'] = 'Cheeseburger', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_cheeseburger.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Cheeseburger'},


    ["burger-bleeder"] 				 = {["name"] = "burger-bleeder", 			 	["label"] = "Bleeder", 					["weight"] = 250, 		["type"] = "item", 		["image"] = "bs_the-bleeder.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-moneyshot"] 			 = {["name"] = "burger-moneyshot", 			 	["label"] = "Moneyshot", 				["weight"] = 300, 		["type"] = "item", 		["image"] = "bs_money-shot.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-torpedo"] 				 = {["name"] = "burger-torpedo", 			 	["label"] = "Torpedo", 					["weight"] = 310, 		["type"] = "item", 		["image"] = "bs_torpedo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-heartstopper"] 		 = {["name"] = "burger-heartstopper", 			["label"] = "Heartstopper", 			["weight"] = 2500, 		["type"] = "item", 		["image"] = "bs_the-heart-stopper.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-meatfree"] 		 	 = {["name"] = "burger-meatfree", 				["label"] = "MeatFree", 			["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_meat-free.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-fries"] 				 = {["name"] = "burger-fries", 			 	  	["label"] = "Fries", 				["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_fries.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
    ["burger-softdrink"] 			 = {["name"] = "burger-softdrink", 				["label"] = "Soft Drink", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_softdrink.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ice Cold Drink."},
	["burger-mshake"] 			     = {["name"] = "burger-mshake", 				["label"] = "Milkshake", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_milkshake.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hand-scooped for you!"},

    ['coke-cherry'] 				 		 = {['name'] = 'coke-cherry', 			  	  		['label'] = 'Coke-Cherry', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Coke-Cherry.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['coke-cinnamon'] 				 		 = {['name'] = 'coke-cinnamon', 			  	  		['label'] = 'Coke-Cinnamon', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Coke-Cinnamon.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['coke-coffee'] 				 		 = {['name'] = 'coke-coffee', 			  	  		['label'] = 'Coke-Coffee', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Coke-Coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['coke-diet'] 				 		 = {['name'] = 'coke-diet', 			  	  		['label'] = 'Coke-Diet', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Coke-Diet.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['coke-mango'] 				 		 = {['name'] = 'coke-mango', 			  	  		['label'] = 'Coke-Mango', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Coke-Mango.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['coke-peach'] 				 		 = {['name'] = 'coke-peach', 			  	  		['label'] = 'Coke-Peach', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Coke-Peach.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
    
    ['drpepper-cherry'] 				 		 = {['name'] = 'drpepper-cherry', 			  	  		['label'] = 'DrPepper-Cherry', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'DrPepper-Cherry.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['drpepper-cola'] 				 		 = {['name'] = 'drpepper-cola', 			  	  		['label'] = 'DrPepper-Cola', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'DrPepper-Cola.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['drpepper-vanilla'] 				 		 = {['name'] = 'drpepper-vanilla', 			  	  		['label'] = 'DrPepper-Vanilla', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'DrPepper-Vanilla.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
    
    ['fanta-grape'] 				 		 = {['name'] = 'fanta-grape', 			  	  		['label'] = 'Fanta-Grape', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Fanta-Grape.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['fanta-orange'] 				 		 = {['name'] = 'fanta-orange', 			  	  		['label'] = 'Fanta-Orange', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Fanta-Orange.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['fanta-peach'] 				 		 = {['name'] = 'fanta-peach', 			  	  		['label'] = 'Fanta-Peach', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Fanta-Peach.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['fanta-pineapple'] 				 		 = {['name'] = 'fanta-pineapple', 			  	  		['label'] = 'Fanta-Pineapple', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Fanta-Pineapple.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},
	['fanta-strawberry'] 				 		 = {['name'] = 'fanta-strawberry', 			  	  		['label'] = 'Fanta-Strawberry', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'Fanta-Strawberry.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Yummy So Nice!'},

```
**qb-smallresources**
*qb-smallresources/config.lua*
```lua
-- ConsumablesEat
    ["burger-bleeder"] = math.random(35, 54),
    ["burger-moneyshot"] = math.random(35, 54),
    ["burger-torpedo"] = math.random(35, 54),
    ["burger-heartstopper"] = math.random(35, 54),
    ["burger-meatfree"] = math.random(35, 54),
    ["burger-fries"] = math.random(35, 54),

    ['cb_bacon_burger'] = math.random(35, 54),
    ['cb_cheeseburger'] = math.random(35, 54),
    ['cheese_fries'] = math.random(35, 54),
    ['chicken_strips'] = math.random(35, 54),
    ['basket_fries'] = math.random(35, 54),
-- ConsumablesDrink
    ["burger-softdrink"] = math.random(40, 50),
    ["burger-mshake"] = math.random(40, 50),

    ["coke-cherry"] = math.random(40, 50),
    ["coke-cinnamon"] = math.random(40, 50),
    ["coke-coffee"] = math.random(40, 50),
    ["coke-diet"] = math.random(40, 50),
    ["coke-mango"] = math.random(40, 50),
    ["coke-peach"] = math.random(40, 50),
    
    ["drpepper-cherry"] = math.random(40, 50),
    ["drpepper-cola"] = math.random(40, 50),
    ["drpepper-vanilla"] = math.random(40, 50),
    
    ["fanta-grape"] = math.random(40, 50),
    ["fanta-orange"] = math.random(40, 50),
    ["fanta-peach"] = math.random(40, 50),
    ["fanta-pineapple"] = math.random(40, 50),
    ["fanta-strawberry"] = math.random(40, 50),
```
*qb-smallresources/server/consumables.lua*
```lua
-- Drinks
QBCore.Functions.CreateUseableItem("burger-softdrink", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-mshake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

-- Burgers
QBCore.Functions.CreateUseableItem("burger-bleeder", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-moneyshot", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-torpedo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-heartstopper", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-meatfree", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burger-fries", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cb_bacon_burger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("cb_cheeseburger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

-- Cold Drinks
QBCore.Functions.CreateUseableItem("coke-cherry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("coke-cinnamon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("coke-coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("coke-diet", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("coke-mango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("coke-peach", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("drpepper-cherry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("drpepper-cola", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("drpepper-vanilla", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


QBCore.Functions.CreateUseableItem("fanta-grape", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fanta-orange", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fanta-peach", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fanta-pineapple", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fanta-strawberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)
```