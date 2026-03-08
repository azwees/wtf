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
-- Локальная таблица-замена для Util
local FakeCache = {
    Speed = 16,
    Jump = 50,
    SpeedEnabled = true, -- Флаги включения функций
    JumpEnabled = true
}

local OldNewIndex;
OldNewIndex = hookmetamethod(game, "__newindex", newcclosure(function(self, Key, Value, ...)
    if not checkcaller() and self:IsA("Humanoid") then
        if Key == "WalkSpeed" then
            FakeCache.Speed = Value -- Запоминаем, что игра ХОЧЕТ установить
            if FakeCache.SpeedEnabled then
                -- Устанавливаем наше значение из слайдера вместо игрового
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
            return FakeCache.Speed -- Врем игре, что скорость стандартная
        elseif Key == "JumpPower" then
            return FakeCache.Jump
        end
    end
    return OldIndex(self, Key, ...)
end))

-- Твой старый байпас неймколла
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
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

-- Глобальная переменная для состояния (чтобы функции её видели)
local ESP_Enabled = false 

local ESPToggle = Tabs.Playerss:AddToggle("ESPToggle", {
    Title = "Player ESP + Names", 
    Default = false
})

-- Синхронизируем значение при переключении
ESPToggle:OnChanged(function()
    ESP_Enabled = ESPToggle.Value
end)

local function CreateESP(player)
    if player == Players.LocalPlayer then return end

    local function ApplyESP(character)
        -- Ждем загрузки необходимых частей
        local head = character:WaitForChild("Head", 10)
        local hum = character:WaitForChild("Humanoid", 10)
        if not head or not hum then return end

        -- Удаляем дубликаты
        if character:FindFirstChild("ESP_NameTag") then character.ESP_NameTag:Destroy() end
        if character:FindFirstChild("ESP_Highlight") then character.ESP_Highlight:Destroy() end

        -- 1. Подсветка (Highlight)
        local highlight = Instance.new("Highlight")
        highlight.Name = "ESP_Highlight"
        highlight.FillColor = Color3.fromRGB(255, 0, 0)
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.FillTransparency = 0.5
        highlight.Enabled = ESP_Enabled
        highlight.Parent = character

        -- 2. Интерфейс (BillboardGui)
        local bill = Instance.new("BillboardGui")
        bill.Name = "ESP_NameTag"
        bill.AlwaysOnTop = true
        bill.Size = UDim2.new(0, 200, 0, 50)
        bill.Adornee = head
        bill.ExtentsOffset = Vector3.new(0, 3, 0)
        bill.Enabled = ESP_Enabled
        bill.Parent = character

        local nameLabel = Instance.new("TextLabel", bill)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
        nameLabel.Text = player.Name
        nameLabel.TextColor3 = Color3.new(1, 1, 1)
        nameLabel.TextStrokeTransparency = 0 
        nameLabel.TextSize = 14
        nameLabel.Font = Enum.Font.GothamBold

        local healthLabel = Instance.new("TextLabel", bill)
        healthLabel.BackgroundTransparency = 1
        healthLabel.Position = UDim2.new(0, 0, 0.5, 0)
        healthLabel.Size = UDim2.new(1, 0, 0.5, 0)
        healthLabel.TextSize = 13
        healthLabel.Font = Enum.Font.GothamBold
        healthLabel.TextStrokeTransparency = 0

        local function UpdateHealth()
            if not hum or not hum.Parent then return end
            local health = math.floor(hum.Health)
            local maxHealth = math.floor(hum.MaxHealth)
            healthLabel.Text = string.format("HP: %d / %d", health, maxHealth)
            
            local pct = math.clamp(health / maxHealth, 0, 1)
            healthLabel.TextColor3 = Color3.fromHSV(pct * 0.3, 1, 1)
        end

        UpdateHealth()
        local healthConn = hum.HealthChanged:Connect(UpdateHealth)
        
        character.AncestryChanged:Connect(function(_, parent)
            if not parent then healthConn:Disconnect() end
        end)
    end

    player.CharacterAdded:Connect(ApplyESP)
    if player.Character then task.spawn(ApplyESP, player.Character) end
end

-- Инициализация существующих игроков
for _, p in pairs(Players:GetPlayers()) do CreateESP(p) end
Players.PlayerAdded:Connect(CreateESP)

-- Цикл обновления состояния (RenderStepped)
RunService.RenderStepped:Connect(function()
    for _, p in pairs(Players:GetPlayers()) do
        if p.Character then
            local hl = p.Character:FindFirstChild("ESP_Highlight")
            local tag = p.Character:FindFirstChild("ESP_NameTag")
            if hl then hl.Enabled = ESP_Enabled end
            if tag then tag.Enabled = ESP_Enabled end
        end
    end
end)

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
