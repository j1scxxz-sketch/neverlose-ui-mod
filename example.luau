local NeverLose = loadstring(game:HttpGet("https://raw.githubusercontent.com/4lpaca-pin/NeverLose/refs/heads/main/source.luau"))()

local Window = NeverLose:CreateWindow({
    Logo = NeverLose.GlobalLogo,
    Name = "Neverlose",
    Content = "Counter-Strike 2",
    Size = NeverLose.Scales.Default,
    ConfigFolder = "NeverLoseConfigs",
    Enable3DRenderer = false,
    Keybind = "Insert"
})

Window:SetAccount({
    Profile = nil,
    Username = "User",
    Expires = "Never"
})

-- Notification
local Notification = NeverLose:CreateNotification()
Notification.new({ Title = "Loaded", Content = "UI Ready", Duration = 5 })

-- Tab
local Tab = Window:AddTab({ Icon = "crosshairs", Name = "Rage" })
local Section = Tab:AddSection({ Name = "MAIN" })

-- Toggle
local L1 = Section:AddLabel("Enabled", false)
L1:ToolTip("Toggle the feature")
L1:AddToggle({ Default = false, Flag = "Toggle1", Callback = print })

-- Slider (SAFE - no Type, no Size, no Nums)
local L2 = Section:AddLabel("FOV", false)
L2:AddSlider({ Default = 90, Min = 0, Max = 180, Rounding = 0, Flag = "FOV", Callback = print })

-- Dropdown
local L3 = Section:AddLabel("Mode", false)
L3:AddDropdown({ Default = "Auto", Values = {"Auto", "Semi", "Burst"}, Multi = false, Flag = "Mode", Callback = print })

-- Color Picker
local L4 = Section:AddLabel("Color", false)
L4:AddColorPicker({ Default = Color3.fromRGB(255, 0, 0), Flag = "Color1", Callback = print })

-- Keybind
local L5 = Section:AddLabel("Key", false)
L5:AddKeybind({ Default = "K", Flag = "Key1", Callback = function() print("Pressed!") end })

-- Text Input
local L6 = Section:AddLabel("Input", false)
L6:AddTextInput({ Default = "", Placeholder = "Type here...", Flag = "Text1", Callback = print })

-- Option submenu
local Opt = L1:AddOption(1)
Opt:AddLabel("Sub Setting"):AddToggle({ Default = false, Flag = "Sub1", Callback = print })

-- Watermark
local WM = Window:Watermark()
local Block = WM:AddBlock("chart-four-vertical-bars", "0MS")
Block:SetText("15MS")
Block:SetVisible(true)

-- User Settings
Window.UserSettings:AddLabel("Auto Save"):AddToggle({ Default = true, Flag = "AutoSave", Callback = print })

print("UI Loaded! Press INSERT")
