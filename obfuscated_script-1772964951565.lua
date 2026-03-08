--[[ FAST TRAVEL ]]
--[[
    110 LOCALS
    101 BYPASSES
    111 UI
    112 wth script on top



]]

--open source ok ok

--(110 for ctrl+f3) locals----------------------------------
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local ESP_Enabled = false
local RunService = game:GetService("RunService")
local NoClipEnabled = false
-----------------------------------------------------------

--(101) bypases maybe--------------------------------------
local FakeCache = {
    Speed = 16,
    Jump = 50,
    SpeedEnabled = true, 
    JumpEnabled = true
}

local OldNewIndex;
OldNewIndex = hookmetamethod(game, "__newindex", newcclosure(function(self, Key, Value, ...)
    if not checkcaller() and self:IsA("Humanoid") then
        if Key == "WalkSpeed" then
            FakeCache.Speed = Value 
            if FakeCache.SpeedEnabled then
                return OldNewIndex(self, Key, FakeCache.Speed, ...) 
            end
        elseif Key == "JumpPower" then
            FakeCache.Jump = Value
            if FakeCache.JumpEnabled then
                return OldNewIndex(self, Key, FakeCache.Jump, ...)
            end
        end
    end
    return OldNewIndex(self, Key, Value, ...)
end))

local OldIndex;
OldIndex = hookmetamethod(game, "__index", newcclosure(function(self, Key, ...)
    if not checkcaller() and self:IsA("Humanoid") then
        if Key == "WalkSpeed" then
            return FakeCache.Speed 
        elseif Key == "JumpPower" then
            return FakeCache.Jump
        end
    end
    return OldIndex(self, Key, ...)
end))

local OldNamecallTP;
OldNamecallTP = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
    local Arguments = {...}
    local Method = getnamecallmethod()
    if Method == "InvokeServer" and Arguments[1] == "idklolbrah2de" then
        return "  ___XP DE KEY"
    end
    return OldNamecallTP(self, ...)
end))

-----------------------------------------------------------


-----------------------------------------------------------

--(111 for crtl+f3) ui--------------------------------------
local lib = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = lib:CreateWindow({
    Title = "WTH SCRIPT " .. "v0.0.0.1 private",
    SubTitle = "by azwees",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "award" }),
    Playerss = Window:AddTab({ Title = "Players", Icon = "skull" }),
    Autofarm = Window:AddTab({ Title = "AutoFarm", Icon = "gem"}),
    TeleportTab = Window:AddTab({ Title = "Teleport", Icon = "map-pin"}),
    Misc = Window:AddTab({ Title = "Misc", Icon = "bug"}),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
}

-- xyz coordinats 
local NPCTeleports = {
    ["Dio 35+"] = Vector3.new(314.56, -25.75, 484.61),
    ["Dopio"] = Vector3.new(-40.39, -0.64, -990.96),
    ["Dracula"] = Vector3.new(-420.39, -34.01, -75.45),
    ["Enya the Hag"] = Vector3.new(183.67, 40.05, -773.37),
    ["Newbie Giorno"] = Vector3.new(1.76, 0.42, -697.69),
    ["Gyro"] = Vector3.new(119.65, 6.49, 112.99),
    ["Jotaro (Heaven accesion dio)"] = Vector3.new(8553.12, -479.58, 8154.49),
    ["LisaLisa"] = Vector3.new(426.49, 7.93, -283.88),
    ["Prestige Master"] = Vector3.new(-454.22, 0.83, 27.13),
    ["Pucci"] = Vector3.new(907.26, 34.14, -16.83)
}
----------------------------------------------------------------------


local SelectedNPC = nil 
local NPCNames = {}
for name, _ in pairs(NPCTeleports) do table.insert(NPCNames, name) end
table.sort(NPCNames)

local TeleportDropdown = Tabs.TeleportTab:AddDropdown("NPCDropdown", {
    Title = "Select NPC",
    Values = NPCNames,
    Multi = false,
    Default = nil,
})

TeleportDropdown:OnChanged(function(Value)
    SelectedNPC = Value 
end)

Tabs.TeleportTab:AddButton({
    Title = "Teleport Now",
    Description = "Переместиться к выбранному персонажу",
    Callback = function()
        if not SelectedNPC then
            lib:Notify({
                Title = "Error",
                Content = "Сначала выбери NPC из списка!",
                Duration = 3
            })
            return
        end

        local coords = NPCTeleports[SelectedNPC]
        local player = game.Players.LocalPlayer
        local character = player.Character
        
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = CFrame.new(coords + Vector3.new(0, 3, 0))
            
            lib:Notify({
                Title = "Success",
                Content = "Прибыли к: " .. SelectedNPC,
                Duration = 2
            })
        end
    end
})



local NoClipToggle = Tabs.Playerss:AddToggle("NoClipToggle", {
    Title = "Noclip",
    Default = false,
    Description = "Позволяет проходить сквозь стены"
})
local NoClipConnection
NoClipConnection = RunService.Stepped:Connect(function()
    if NoClipEnabled and player.Character then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    end
end)

NoClipToggle:OnChanged(function()
    NoClipEnabled = NoClipToggle.Value
    if not NoClipEnabled and player.Character then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end)

_G.ESPToggle = Tabs.Playerss:AddToggle("ESPToggle", {
    Title = "Player ESP Box (!!!VERY LAG!!!)", 
    Default = false
})

_G.ESP_SessionID = tick()
local CurrentSession = _G.ESP_SessionID

if _G.ESP_Objects then
    for _, obj in pairs(_G.ESP_Objects) do pcall(function() obj:Remove() end) end
end
_G.ESP_Objects = {}

_G.ESP_Settings = _G.ESP_Settings or {
    Enabled = false,
    BoxColor = Color3.fromRGB(255, 255, 255),
    TextColor = Color3.fromRGB(255, 255, 255)
}

task.spawn(function()
    while not _G.ESPToggle do task.wait(1) end
    _G.ESPToggle:OnChanged(function()
        _G.ESP_Settings.Enabled = _G.ESPToggle.Value
        print("ESP Enabled: " .. tostring(_G.ESP_Settings.Enabled)) 
    end)
end)

local function CreateESP(player)
    if player == game.Players.LocalPlayer then return end

    local Box = Drawing.new("Square")
    local Name = Drawing.new("Text")
    local HealthBarOutline = Drawing.new("Square")
    local HealthBar = Drawing.new("Square")
    
    table.insert(_G.ESP_Objects, Box)
    table.insert(_G.ESP_Objects, Name)
    table.insert(_G.ESP_Objects, HealthBarOutline)
    table.insert(_G.ESP_Objects, HealthBar)

    local function Update()
        local Connection
        Connection = game:GetService("RunService").RenderStepped:Connect(function()

            if _G.ESP_SessionID ~= CurrentSession then
                Box:Remove(); Name:Remove(); HealthBar:Remove(); HealthBarOutline:Remove()
                Connection:Disconnect()
                return
            end

            local Cam = workspace.CurrentCamera
            local Char = player.Character
            
            if _G.ESP_Settings.Enabled and Char and Char:FindFirstChild("HumanoidRootPart") and Char:FindFirstChild("Humanoid") then
                local Root = Char.HumanoidRootPart
                local Hum = Char.Humanoid
                
                if Hum.Health <= 0 then
                    Box.Visible, Name.Visible, HealthBar.Visible, HealthBarOutline.Visible = false, false, false, false
                    return 
                end

                local Pos, OnScreen = Cam:WorldToViewportPoint(Root.Position)

                if OnScreen then
                    local Distance = (Cam.CFrame.p - Root.Position).Magnitude
                    local Height = (1 / Distance) * (Cam.ViewportSize.Y) * 4 
                    local Width = Height / 1.6
                    
                    local BoxPos = Vector2.new(Pos.X - Width / 2, Pos.Y - Height / 2)

                    Box.Size = Vector2.new(Width, Height)
                    Box.Position = BoxPos
                    Box.Color = _G.ESP_Settings.BoxColor
                    Box.Thickness = 1
                    Box.Transparency = 1
                    Box.Visible = true

                    local hp = Hum.Health
                    local hpColor = (hp < 25 and Color3.new(1,0,0)) or (hp < 50 and Color3.new(1,0.6,0)) or Color3.new(0,1,0)

                    Name.Position = Vector2.new(Pos.X, BoxPos.Y - 20)
                    Name.Text = string.format("%s [%d HP]", player.Name, math.floor(hp))
                    Name.Color = hpColor
                    Name.Size = 16
                    Name.Center = true
                    Name.Outline = true
                    Name.Visible = true

                    local hpPercent = math.clamp(hp / Hum.MaxHealth, 0, 1)
                    
                    HealthBarOutline.Size = Vector2.new(4, Height)
                    HealthBarOutline.Position = Vector2.new(BoxPos.X - 6, BoxPos.Y)
                    HealthBarOutline.Color = Color3.new(0,0,0)
                    HealthBarOutline.Filled = true
                    HealthBarOutline.Visible = true

                    HealthBar.Size = Vector2.new(2, Height * hpPercent)
                    HealthBar.Position = Vector2.new(BoxPos.X - 5, BoxPos.Y + (Height - (Height * hpPercent)))
                    HealthBar.Color = hpColor
                    HealthBar.Filled = true
                    HealthBar.Visible = true
                else
                    Box.Visible, Name.Visible, HealthBar.Visible, HealthBarOutline.Visible = false, false, false, false
                end
            else
                Box.Visible, Name.Visible, HealthBar.Visible, HealthBarOutline.Visible = false, false, false, false
                
                if not player.Parent then
                    Box:Remove(); Name:Remove(); HealthBar:Remove(); HealthBarOutline:Remove()
                    Connection:Disconnect()
                end
            end
        end)
    end
    coroutine.wrap(Update)()
end

for _, p in pairs(game.Players:GetPlayers()) do CreateESP(p) end
game.Players.PlayerAdded:Connect(CreateESP)


Tabs.Main:AddParagraph({
    Title = "Developer: azwees (discord: twilight_sync)",
    Content = "umm ok? \nhi"
})

Tabs.Main:AddButton({
     Title = "Button",
     Description = "Very important button",
     Callback = function()
         Window:Dialog({
             Title = "this a trap",
             Content = "chose",
              Buttons = {
                   {
                       Title = "LEAVE",
                       Callback = function()
                          player:Kick("cry about it in my dm @azwees" .. " " .. "[" .. player.Name .. "]")
                     end
                 },
                  {
                       Title = "DELETE MAP",
                       Callback = function()
                           local mus = workspace
                           mus:Destroy()
                     end
                  }
               }
         })
     end
})
local SpeedValue = 16
local SpeedEnabled = false

Tabs.Playerss:AddToggle("SpeedToggle", {
    Title = "CFrame Speed",
    Default = false,
    Callback = function(Value) SpeedEnabled = Value end
})

local SpeedSlider = Tabs.Playerss:AddSlider("SpeedSlider", {
    Title = "Speed Multiplier",
    Min = 16, Max = 500, Default = 16, Rounding = 1,
    Callback = function(Value) 
        SpeedValue = Value 
    end
})
game:GetService("RunService").Heartbeat:Connect(function(delta)
    if SpeedEnabled then
        local char = player.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChild("Humanoid")
        
        if root and hum and hum.MoveDirection.Magnitude > 0 then
            local targetSpeed = SpeedValue - 16
            if targetSpeed < 0 then targetSpeed = 0 end
            
            root.CFrame = root.CFrame + (hum.MoveDirection * targetSpeed * delta)
        end
    end
end)
local InfiniteJumpEnabled = false
local JumpPowerValue = 50

Tabs.Playerss:AddSlider("JumpSlider", {
    Title = "Jump Power",
    Default = 50,
    Min = 50,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        JumpPowerValue = Value
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.JumpPower = Value
            player.Character.Humanoid.UseJumpPower = true 
        end
    end
})

Tabs.Playerss:AddToggle("InfJump", {
    Title = "Infinite Jump",
    Default = false,
    Callback = function(Value)
        InfiniteJumpEnabled = Value
    end
})

game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        local hum = player.Character and player.Character:FindFirstChild("Humanoid")
        if hum then
            hum:ChangeState("Jumping")
        end
    end
end)

Tabs.TeleportTab:AddButton({
    Title = "Teleport to safe spot",
    Description = "guess",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = CFrame.new(-452, -20, 206)
        else
            lib:Notify({
                Title = "Ошибка",
                Content = "Персонаж не найден!",
                Duration = 3
            })
        end
    end
})
local JerkLogic = {
    Enabled = false,
    Speed = 0.7,
    Tool = nil,
    Track = nil
}
local function isR15()
    local char = game.Players.LocalPlayer.Character
    return char and char:FindFirstChild("UpperTorso") ~= nil
end
local JerkToggle = Tabs.Misc:AddToggle("JerkToggle", {
    Title = "Jerk Off Tool", 
    Default = false,
    Description = "Добавляет предмет 'Jerk Off' в инвентарь"
})
Tabs.Misc:AddSlider("JerkSpeed", {
    Title = "Интенсивность",
    Description = "Скорость анимации",
    Default = 0.7,
    Min = 0.1,
    Max = 5,
    Rounding = 1,
    Callback = function(Value)
        JerkLogic.Speed = Value
        if JerkLogic.Track then
            JerkLogic.Track:AdjustSpeed(Value)
        end
    end
})

JerkToggle:OnChanged(function()
    JerkLogic.Enabled = JerkToggle.Value
    local player = game.Players.LocalPlayer
    
    if JerkLogic.Enabled then
        local backpack = player:FindFirstChildOfClass("Backpack")
        if not backpack then return end
        
        local tool = Instance.new("Tool")
        tool.Name = "Jerk Off"
        tool.RequiresHandle = false
        tool.Parent = backpack
        JerkLogic.Tool = tool

        local jorkin = false

        tool.Equipped:Connect(function() jorkin = true end)
        tool.Unequipped:Connect(function() 
            jorkin = false 
            if JerkLogic.Track then JerkLogic.Track:Stop() JerkLogic.Track = nil end
        end)
        task.spawn(function()
            while JerkLogic.Enabled and tool.Parent do
                task.wait(0.05)
                
                if jorkin then
                    local hum = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
                    
                    if hum then
                        if not JerkLogic.Track then
                            local anim = Instance.new("Animation")
                            anim.AnimationId = isR15() and "rbxassetid://698251653" or "rbxassetid://72042024"
                            JerkLogic.Track = hum:LoadAnimation(anim)
                        end

                        JerkLogic.Track:Play()
                        JerkLogic.Track:AdjustSpeed(JerkLogic.Speed)
                        JerkLogic.Track.TimePosition = 0.6
                        
                        task.wait(0.1)
                        
                        if JerkLogic.Track then
                            JerkLogic.Track:Stop()
                            JerkLogic.Track = nil
                        end
                    end
                end
            end
        end)
    else
        if JerkLogic.Tool then JerkLogic.Tool:Destroy() end
        if JerkLogic.Track then JerkLogic.Track:Stop() JerkLogic.Track = nil end
    end
end)


------------------------------------------------------------
-- (112) WTH SCRIPT on top
