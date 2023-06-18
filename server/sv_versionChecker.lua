--[[ Version Checker ]] --
local version = "110"

local DISCORD_WEBHOOK = ""
local DISCORD_NAME = "LENT - Burger Shot!"
local DISCORD_IMAGE = "https://cdn.discordapp.com/attachments/1026175982509506650/1026176123928842270/Lanzaned.png"

AddEventHandler("onResourceStart", function(resource)
    if resource == GetCurrentResourceName() then
        checkResourceVersion()
    end
end)

function checkUpdateEmbed(color, name, message, footer)
    local content = {
        {
            ["color"] = color,
            ["title"] = " " .. name .. " ",
            ["description"] = message,
            ["footer"] = {
                ["text"] = " " .. footer .. " ",
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 
    'POST', json.encode({
        username = DISCORD_NAME, 
        embeds = content, 
        avatar_url = DISCORD_IMAGE
    }), { ['Content-Type'] = 'application/json '})
end

function checkResourceVersion()
    PerformHttpRequest("https://raw.githubusercontent.com/Lanzaned-Enterprises/LENT-BurgerShot/main/version.txt", function(err, text, headers)
        if (version > text) then -- Using Dev Branch
            print(" ")
            print("---------- LANZANED BURGERSHOT ----------")
            print("LENT-BurgerShot is using a development branch! Please update to stable ASAP!")
            print("Your Version: " .. version .. " Current Stable Version: " .. text)
            print("https://github.com/Lanzaned-Enterprises/LENT-BurgerShot")
            print("-----------------------------------------")
            print(" ")
            checkUpdateEmbed(5242880, "Burger Shot Update Checker", "LENT-BurgerShot is using a development branch! Please update to stable ASAP!\nYour Version: " .. version .. " Current Stable Version: " .. text .. "\nhttps://github.com/Lanzaned-Enterprises/LENT-BurgerShot", "Script created by: https://discord.lanzaned.com")
        elseif (text < version) then -- Not updated
            print(" ")
            print("---------- LANZANED BURGERSHOT ----------")
            print("LENT-BurgerShot is not up to date! Please update!")
            print("Curent Version: " .. version .. " Latest Version: " .. text)
            print("https://github.com/Lanzaned-Enterprises/LENT-BurgerShot")
            print("-----------------------------------------")
            print(" ")
            checkUpdateEmbed(5242880, "Burger Shot Update Checker", "LENT-BurgerShot is not up to date! Please update!\nCurent Version: " .. version .. " Latest Version: " .. text .. "\nhttps://github.com/Lanzaned-Enterprises/LENT-BurgerShot", "Script created by: https://discord.lanzaned.com")
        else -- resource is fine
            print(" ")
            print("---------- LANZANED BURGERSHOT ----------")
            print("LENT-BurgerShot is up to date and ready to go!")
            print("Running on Version: " .. version)
            print("https://github.com/Lanzaned-Enterprises/LENT-BurgerShot")
            print("-----------------------------------------")
            print(" ")
            checkUpdateEmbed(20480, "Burger Shot Update Checker", "LENT-BurgerShot is up to date and ready to go!\nRunning on Version: " .. version .. "\nhttps://github.com/Lanzaned-Enterprises/LENT-BurgerShot", "Script created by: https://discord.lanzaned.com")
        end 
    end, "GET", "", {})
end