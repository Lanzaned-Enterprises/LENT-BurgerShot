Config = {}

Config.QBCoreSettings = {
    ['Notify'] = 'ps', -- qb, ps
    ['Phone'] = 'qb', -- qb, gks, qs, npwd
    ['MaxSlots'] = 41, -- Should match inventory config!
    ['MaxInventoryWeight'] = 240000, -- Should match inventory config!
}

Config.ResourceSettings = {
    ['Renewed'] = true,
    ['Language'] = {
        ['SelectionHeader'] = "Burger Shot!",
        ['SelectionText'] = "It's bleedin' tasty!",
        ['Header'] = "Burger Shot!",
        ['Text'] = "It's bleedin' tasty!",
    },
    ['SelectionIcon'] = "fa-solid fa-burger",
    ['MenuIcon'] = "fa-solid fa-burger"
}

Config.Blips = {
    ['BurgershotSandyShores'] = {
        ['Coords'] = vector4(1577.4, 3745.87, 34.43, 116.92),
        ['BlipId'] = 106,
        ['BlipColor'] = 6,
        ['BlipName'] = 'Burger Shot'
    },
    ['BurgershotLosSantos'] = {
        ['Coords'] = vector4(-1179.23, -885.01, 13.83, 315.85),
        ['BlipId'] = 106,
        ['BlipColor'] = 6,
        ['BlipName'] = 'Burger Shot'
    },
}

Config.PedsList = {
    ['BurgerShotSandyShores'] = {
        ['Coords'] = vector4(1589.1, 3753.57, 34.43, 119.01),
        ['Ped'] = 'mp_f_freemode_01',

        ["icon"] = "fa-solid fa-clipboard", ["text"] = "Order",

        ['MPClothing'] = true,
        ["mother"] = 45,        ["father"] = 45,                ["mix"] = 1.0,
    
        ["hair"] = 4,           ["HAIR_Texture"] = 0,           ["HAIR_HIGHLIGHT"] = 0,
        ["hat"] = -1,           ["hat_TEXTURE"] = 0,
        ["mask"] = -1,           ["mask_Texture"] = 0,
        ["glasses"] = -1,       ["glasses_TEXTURE"] = 0,
        
        ["hands"] = 14,            ["HA_Texture"] = 0,
        ["undershirts"] = 14,     ["U_Texture"] = 0,
        ["tops"] = 580,            ["T_Texture"] = 0,
        ["kevlar"] = -1,           ["K_Texture"] = 0,
        ["decal"] = -1,           ["D_Texture"] = 0,
        ["accs"] = -1,            ["A_Texture"] = 0,
        ["bags"] = -1,              ["B_Texture"] = 0,
        ["pants"] = 30,           ["P_Texture"] = 0,
        ["shoes"] = 25,            ["S_Texture"] = 0,

        ["eye_COLOR"] = 1,
        ["makeup"] = -1,        ["makeup_OPACITY"] = 0.0,       ["makeup_COLOR"] = -1, -- leave opacity at 1.0
        ["lipstick"] = -1,      ["lipstick_OPACITY"] = 0.0,     ["lipstick_COLOR"] = -1, -- leave opacity at 1.0
        ["eyebrows"] = 12,      ["eyebrows_OPACITY"] = 1.0,     ["eyebrows_COLOR"] = -1, -- leave opacity at 1.0
        ["beard"] = -1,         ["beard_OPACITY"] = 0.0,        ["beard_COLOR"] = -1, -- leave opacity at 1.0
    },
    ['BurgershotVespucciCanals_1'] = {
        ['Coords'] = vector4(-1196.27, -893.67, 13.89, 347.93),
        ['Ped'] = 'mp_f_freemode_01',

        ["icon"] = "fa-solid fa-clipboard", ["text"] = "Order",

        ['MPClothing'] = true,
        ["mother"] = 45,        ["father"] = 45,                ["mix"] = 1.0,
    
        ["hair"] = 4,           ["HAIR_Texture"] = 0,           ["HAIR_HIGHLIGHT"] = 0,
        ["hat"] = -1,           ["hat_TEXTURE"] = 0,
        ["mask"] = -1,           ["mask_Texture"] = 0,
        ["glasses"] = -1,       ["glasses_TEXTURE"] = 0,
        
        ["hands"] = 14,            ["HA_Texture"] = 0,
        ["undershirts"] = 14,     ["U_Texture"] = 0,
        ["tops"] = 580,            ["T_Texture"] = 0,
        ["kevlar"] = -1,           ["K_Texture"] = 0,
        ["decal"] = -1,           ["D_Texture"] = 0,
        ["accs"] = -1,            ["A_Texture"] = 0,
        ["bags"] = -1,              ["B_Texture"] = 0,
        ["pants"] = 30,           ["P_Texture"] = 0,
        ["shoes"] = 25,            ["S_Texture"] = 0,

        ["eye_COLOR"] = 1,
        ["makeup"] = -1,        ["makeup_OPACITY"] = 0.0,       ["makeup_COLOR"] = -1, -- leave opacity at 1.0
        ["lipstick"] = -1,      ["lipstick_OPACITY"] = 0.0,     ["lipstick_COLOR"] = -1, -- leave opacity at 1.0
        ["eyebrows"] = 12,      ["eyebrows_OPACITY"] = 1.0,     ["eyebrows_COLOR"] = -1, -- leave opacity at 1.0
        ["beard"] = -1,         ["beard_OPACITY"] = 0.0,        ["beard_COLOR"] = -1, -- leave opacity at 1.0
    },
}

Config.ZoneList = {
    ['BurgerShotCityMachine'] = {
        ['Name'] = 'Machine1',
        ['Coords'] = vector3(-1185.12, -893.45, 13.89),
        ['Height'] = 0.35, ['Width'] = 1.0,
        ['Heading'] = 35.0, ['Debug'] = false,
        ['MinZ'] = 12.89,
        ['MaxZ'] = 15.09,
        ['Icon'] = 'fa-solid fa-burger',
        ['Label'] = 'Open Purchase Screen',
    },
    ['BurgerShotCityMachine2'] = {
        ['Name'] = 'Machine2',
        ['Coords'] = vector3(-1182.27, -891.48, 13.89),
        ['Height'] = 0.45, ['Width'] = 1.0,
        ['Heading'] = 34.0, ['Debug'] = false,
        ['MinZ'] = 11.09,
        ['MaxZ'] = 15.09,
        ['Icon'] = 'fa-solid fa-burger',
        ['Label'] = 'Open Purchase Screen',
    },
    ['BurgerShotCityMachine3'] = {
        ['Name'] = 'Machine3',
        ['Coords'] = vector3(-1186.62, -885.24, 13.89),
        ['Height'] = 0.2, ['Width'] = 1.0,
        ['Heading'] = 35.0, ['Debug'] = false,
        ['MinZ'] = 11.09,
        ['MaxZ'] = 15.09,
        ['Icon'] = 'fa-solid fa-burger',
        ['Label'] = 'Open Purchase Screen',
    },
    ['BurgerShotCityMachine4'] = {
        ['Name'] = 'Machine4',
        ['Coords'] = vector3(-1189.35, -887.06, 13.89),
        ['Height'] = 0.2, ['Width'] = 1.0,
        ['Heading'] = 34.0, ['Debug'] = false,
        ['MinZ'] = 11.29,
        ['MaxZ'] = 15.29,
        ['Icon'] = 'fa-solid fa-burger',
        ['Label'] = 'Open Purchase Screen',
    },
}

Config.ProductList = {
    ['ColdDrinks'] = {
        ['Name'] = "Cold Drinks",
        ['Tag'] = 'ColdDrinks',
        ['Products'] = {
            -- Coka Cola
            ['CokeCherry'] = {
                ['ItemName'] = 'Cherry Coke',
                ['Item'] = 'coke-cherry',
                ['Price'] = 7,
            },
            ['CokeCinnamon'] = {
                ['ItemName'] = 'Cinnamon Flavoured Coke',
                ['Item'] = 'coke-cinnamon',
                ['Price'] = 7,
            },
            ['CokeCoffee'] = {
                ['ItemName'] = 'Coffee Flavoured Coke',
                ['Item'] = 'coke-coffee',
                ['Price'] = 7,
            },
            ['CokeDiet'] = {
                ['ItemName'] = 'Diet Coke',
                ['Item'] = 'coke-diet',
                ['Price'] = 7,
            },
            ['CokeMango'] = {
                ['ItemName'] = 'Mango Flavoured Coke',
                ['Item'] = 'coke-mango',
                ['Price'] = 7,
            },
            ['CokePeach'] = {
                ['ItemName'] = 'Peach Flavoured Coke',
                ['Item'] = 'coke-peach',
                ['Price'] = 7,
            },
            -- Dr. Pepper
            ['DrPepperCherry'] = {
                ['ItemName'] = 'Cherry Flavoured Dr. Pepper',
                ['Item'] = 'drpepper-cherry',
                ['Price'] = 7,
            },
            ['DrPepperCola'] = {
                ['ItemName'] = 'Cola Flavoured Dr. Pepper',
                ['Item'] = 'drpepper-cola',
                ['Price'] = 7,
            },
            ['DrPepperVanilla'] = {
                ['ItemName'] = 'Vanilla Flavoured Dr. Pepper',
                ['Item'] = 'drpepper-vanilla',
                ['Price'] = 7,
            },
            -- Fanta
            ['FantaGrape'] = {
                ['ItemName'] = 'Grape Flavoured Fanta',
                ['Item'] = 'fanta-grape',
                ['Price'] = 7,
            },
            ['FantaOrange'] = {
                ['ItemName'] = 'Orange Flavoured Fanta',
                ['Item'] = 'fanta-orange',
                ['Price'] = 7,
            },
            ['FantaPeach'] = {
                ['ItemName'] = 'Peach Flavoured Fanta',
                ['Item'] = 'fanta-peach',
                ['Price'] = 7,
            },
            ['FantaPineapple'] = {
                ['ItemName'] = 'Pineapple Flavoured Fanta',
                ['Item'] = 'fanta-pineapple',
                ['Price'] = 7,
            },
            ['FantaStrawberry'] = {
                ['ItemName'] = 'Strawberry Flavoured Fanta',
                ['Item'] = 'fanta-strawberry',
                ['Price'] = 7,
            },
        }
    },
    ['HotDrinks'] = {
        ['Name'] = 'Hot Drinks',
        ['Tag'] = 'HotDrinks',
        ['Products'] = {
            ['NormalCoffee'] = {
                ['ItemName'] = 'Coffee',
                ['Item'] = 'coffee',
                ['Price'] = 5,
            },
        }
    },
    ['Burgers'] = {
        ['Name'] = 'Burgers',
        ['Tag'] = 'Burgers',
        ['Products'] = {
            ['BaconBurger'] = {
                ['ItemName'] = 'Burger With Bacon',
                ['Item'] = 'cb_bacon_burger',
                ['Price'] = 12,
            },
            ['CheeseBurger'] = {
                ['ItemName'] = 'Burger With Cheese',
                ['Item'] = 'cb_cheeseburger',
                ['Price'] = 12,
            },

            ['BleederBurger'] = {
                ['ItemName'] = 'Bleeder',
                ['Item'] = 'burger-bleeder',
                ['Price'] = 12,
            },
            ['MoneyShotBurger'] = {
                ['ItemName'] = 'Moneyshot',
                ['Item'] = 'burger-moneyshot',
                ['Price'] = 12,
            },
            ['TorpedoBurger'] = {
                ['ItemName'] = 'Torpedo',
                ['Item'] = 'burger-torpedo',
                ['Price'] = 12,
            },
            ['HeartstopperBurger'] = {
                ['ItemName'] = 'Heartstopper',
                ['Item'] = 'burger-heartstopper',
                ['Price'] = 24,
            },
            ['MeatFreeBurger'] = {
                ['ItemName'] = 'Vegan Burger',
                ['Item'] = 'burger-meatfree',
                ['Price'] = 6,
            },
        }
    },
    ['Combos'] = {
        ['Name'] = 'Combo Deals',
        ['Tag'] = 'Combos',
        ['Products'] = {
            ['HeartstopperMenu'] = {
                ['ProductName'] = "Heartstopper Menu",
                ['ItemList'] = {
                    ['Drink'] = 'burger-softdrink',
                    ['Burger'] = 'burger-heartstopper',
                    ['Fries'] = 'burger-fries',
                },
                ['Price'] = 32,
            },
        }
    },
}