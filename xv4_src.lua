getgenv().Info = {
    Integer = {
        --// WalkSpeed
        ["DefaultWalkSpeed"] = 16;
        ["HookedWalkSpeed"] = 50;

        --// JumpPower
        ["DefaultJumpPower"] = 50;
        ["HookedJumpPower"] = 100;

        --// Fly
        ["FlySpeed"] = 1;

        --// Infinite Dash
        ["InfiniteDashDelay"] = 0.5;
        ["InfiniteDashPower"] = 50;
        ["InfiniteDashTick"] = tick();

        --// Anti Time-Stop
        ["AntiTimeStopDelay"] = 0.8;

        --// Auto SBR
        ["Stage1TPDelay"] = 1;
        ["Stage2TPDelay"] = 1;
        ["Stage3TPDelay"] = 1;
        ["Stage4TPDelay"] = 1;
        ["LastStageTPDelay"] = 1;
        ["AllStageHideDelay"] = 0;
        ["WinHideDelay"] = 3;

        --// Item Farm
        ["ItemCollectionDelay"] = 0.5;
    };
    String = {
        ["Webhook"] = "";
    };
    State = {
        ["WalkSpeed"] = false;
        ["JumpPower"] = false;
        ["FlyToggle"] = false;
        ["AutoSprint"] = false;
        ["AntiVampBurn"] = false;
        ["AntiRockTrap"] = false;
        ["AntiTS"] = false;
        ["ControlStand"] = false;
        ["InfiniteDash"] = false;
        ["StandFarming"] = false;
        ["ShinyFarming"] = false;
        ["PityFarming"] = false;
        ["RibFarming"] = false;
        ["RibShinyFarming"] = false;
        ["LuckyStandFarming"] = false;
        ["ItemFarming"] = false;
        ["ItemNotify"] = false;
        ["ItemESP"] = false;
        ["NPCFarming"] = false;
        ["Invisibility"] = false;
        ["NoClipping"] = false;
        ["Yielding"] = false;
    };
    Table = {
        ["AllItems"] = {
            "Diamond";
            "Gold Coin";
            "Mysterious Arrow";
            "Pure Rokakaka";
            "Rokakaka";
            "Stone Mask";
            "Rib Cage of The Saint's Corpse";
            "Steel Ball";
            "Ancient Scroll";
            "Dio's Diary";
            "Caesar's Headband";
            "Christmas Present";
            "Quinton's Glove";
            "Lucky Arrow";
            "Lucky Stone Mask";
        };
        ["AllArrowStands"] = {
            "Aerosmith";
            "Anubis";
            "Beach Boy";
            "Crazy Diamond";
            "Cream";
            "Gold Experience";
            "Hermit Purple";
            "Hierophant Green";
            "Killer Queen";
            "King Crimson";
            "Magician's Red";
            "Mr. President";
            "Purple Haze";
            "Red Hot Chili Pepper";
            "Silver Chariot";
            "Six Pistols";
            "Star Platinum";
            "Sticky Fingers";
            "Stone Free";
            "The Hand";
            "The World";
            "White Album";
            "Whitesnake";
        };
        ["AllRibStands"] = {
            "D4C";
            "Soft & Wet";
            "Scary Monsters";
            "The World Alternate Universe";
            "Tusk ACT 1";
        };
        ["AllShinys"] = {
            "Action-Figure Platinum";
            "Actually Red Hot Chili Pepper";
            "Aerosmith Over Heaven";
            "All-Starsnake";
            "Anti-Umbral";
            "Asuna";
            "Biblically Accurate Experience";
            "Blade Of The Exile";
            "Bloodthirster";
            "Casull";
            "Charmy Green";
            "Chromo";
            "Comic Venom";
            "Cornsnake";
            "Cracked World";
            "Crazy Idol";
            "Crazy Overseer";
            "Crazy Ruby";
            "Creeper Queen";
            "Crimson Mist";
            "D4She";
            "Dead Experience";
            "Deimos Queen";
            "Deimos Snake";
            "Devil4c";
            "Eldritch Hierophant";
            "Elizabeth Liones";
            "Elucidator & Dark Repulser";
            "Emperor OVA";
            "Emperor";
            "Female The Hand";
            "Frozone";
            "Ghost World";
            "Glock-18 Fade";
            "Glock-18";
            "Gold Platinum";
            "Gold & Wet";
            "Golden Frieza";
            "Headhunter";
            "Heaven Spirit";
            "Holly's Sickness";
            "Jack-O-Platinum";
            "Jade Peace";
            "Jaguar Platinum";
            "Jester Crimson";
            "Kanshou & Bakuya";
            "Kikoku";
            "Killer Reveal";
            "King of The End";
            "Linked Sword";
            "Luffy Gear 4";
            "Magellan";
            "Magician's Red: Over Heaven";
            "Manga Crimson";
            "Megumin";
            "Mintsnake";
            "Misaka Mikoto";
            "Mr. Joestar";
            "Ms. Aerosmith";
            "Neo World";
            "Neon Ascension";
            "Nerf Jolt";
            "Nocturne";
            "Nonosama Bo";
            "ODM Gear";
            "Old President";
            "OVA Silver Chariot";
            "Pinky Fingers";
            "Pumpkin Patch";
            "Queen Crimson";
            "Rock Unleashed";
            "Sakura";
            "Sasageyo";
            "Shadow Killer Queen";
            "Shadow The World";
            "Sorcerer's Ember";
            "Spider-Man";
            "Star Platinum OVA";
            "Star Striped Eagle";
            "Star Waifu";
            "Stone Platinum";
            "Tentacle Black";
            "Tentacle Purple";
            "Tentacle Yellow";
            "The Other Hand";
            "The Waifu v2";
            "The Waifu: Alternate Universe";
            "The World 2";
            "The World OVA";
            "The World Ultimate";
            "The World: Greatest High";
            "Toy Sticky Fingers";
            "Tsunade";
            "Tyrant Crimson";
            "Uber Spy";
            "Undead Flare";
            "Undead Hand";
            "Vanilla Ice Cream";
            "Venom";
            "Vexus Crimson";
            "Vinegar Crimson";
            "Virus Vessel";
            "Whisper";
        };
        ["SelectedStands"] = {};
        ["SelectedRibStands"] = {};
        ["SelectedShinys"] = {};
        ["SelectedItems"] = {};
        ["AllTeleports"] = {
            ["Newbie Giorno"] = CFrame.new(1, 0, -697);
            ["Train Station Side 1"] = CFrame.new(-214, 0, 18);
            ["Train Station Side 2"] = CFrame.new(-265, -30, -447);
            ["Pizza Place"] = CFrame.new(113, 6, 71);
            ["The Arcade"] = CFrame.new(255, 5, -239);
            ["The Cafe"] = CFrame.new(-544, -25, -174);
            ["Diavolo"] = CFrame.new(1126, 116, -129);
            ["Dio P3"] = CFrame.new(-44, 0, -973);
            ["Jotaro P3"] = CFrame.new(182, -25, 578);
            ["Jotaro P6"] = CFrame.new(784, -42, 144);
            ["Tallest Peak"] = CFrame.new(-237, 284, 305);
            ["Hamon Merchant"] = CFrame.new(421, 8, -287);
            ["Boxing Merchant"] = CFrame.new(281, 0, 101);
            ["Pluck Merchant"] = CFrame.new(125, -27, 438);
            ["Heaven Dimension"] = CFrame.new(8553, -479, 8154);
            ["Arrowsmith"] = CFrame.new(-667, 16, -299);
            ["Cosmetics Merchants"] = CFrame.new(512, 2, 22);
            ["Leaky Eye Luca"] = CFrame.new(-382, 0, -711);
            ["Chad"] = CFrame.new(-121, -24, 524);
            ["Brad the Bat Merchant"] = CFrame.new(-14, -0, -286);
            ["Dracula"] = CFrame.new(-420, -34, -75);
            ["Kars"] = CFrame.new(264, -33, 112);
            ["Homeless Man Jill"] = CFrame.new(-142, -31, -577);
            ["Vampire Room"] = CFrame.new(391, -31, -166);
            ["Enrico Pucci"] = CFrame.new(917, 34, -17);
            ["Safe Spot"] = CFrame.new(-452, -20, 206);
        };
        ["CachedBodyParts"] = {};
        ["ItemQueue"] = {};
        ["SelectedNPCs"] = {};
        ["AllNPCs"] = {
            "Alpha Thug";
            "Bucciarati";
            "Corrupt Police";
            "Diavolo";
            "Dio";
            "Fugo";
            "Ghiaccio";
            "Heaven Ascension Dio";
            "Jotaro Kujo";
            "Jotaro";
            "Leaky Eye Luca";
            "Pesci";
            "Security Guard";
            "Thug";
            "Vampire";
            "Zombie Henchman";
        };
    };
    Keybinds = {
        ["ToggleUI"] = Enum.KeyCode.RightShift;
        ["ToggleFly"] = Enum.KeyCode.RightControl;
        ["Invisibility"] = Enum.KeyCode.L;
    };
}

--// Services // lazy to do services metatable rn
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local CoreGui = game:GetService("CoreGui")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MarketplaceService = game:GetService("MarketplaceService")
local PhysicsService = game:GetService("PhysicsService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local CollectionService = game:GetService("CollectionService")
local Debris = game:GetService("Debris")

--// Variables
local TaskSpawn = task.spawn
local Player = Players.LocalPlayer
local PlayerGui = Player.PlayerGui
local Character = Player.Character or Player.CharacterAdded:Wait()

Player.CharacterAdded:Connect(function(NewChar)
    Character = NewChar

    table.clear(
        Info.Table["CachedBodyParts"]
    )
end)

--// Functions
local Xenon = {}

Xenon.IsSBR = function()
    if game.PlaceId == 4643697430 then
        return true
    end
    
    return false
end

Xenon.GetHorse = function()
    local Name = Player.Name

    if workspace:FindFirstChild(Name .."'s Horse") ~= nil then
        return workspace:FindFirstChild(Name .."'s Horse")
    end

    return nil
end

Xenon.GetHRP = function()
	if Character:FindFirstChild("HumanoidRootPart") == nil then
		repeat
            task.wait()
        until Character:FindFirstChild("HumanoidRootPart") ~= nil
    end
	
    return Character:FindFirstChild("HumanoidRootPart")
end

Xenon.GetCFrame = function()
	return Xenon:GetHRP().CFrame
end

Xenon.GetHumanoid = function()
	if Character:FindFirstChild("Humanoid") == nil then
		repeat
            task.wait()
        until Character:FindFirstChild("Humanoid") ~= nil
    end
	
    return Character:FindFirstChild("Humanoid")
end

Xenon.GetRemoteEvent = function(self)
	if Character:FindFirstChild("RemoteEvent") == nil then
		repeat
            task.wait()
        until Character:FindFirstChild("RemoteEvent") ~= nil
    end

	return Character:FindFirstChild("RemoteEvent")
end

Xenon.GetRemoteFunction = function()
	if Character:FindFirstChild("RemoteFunction") == nil then
		repeat
            task.wait()
        until Character:FindFirstChild("RemoteFunction") ~= nil
    end
	
    return Character:FindFirstChild("RemoteFunction")
end

Xenon.IsStandSummoned = function()
	if Character:FindFirstChild("SummonedStand").Value == true then
		return true
    end
	
    return false
end

Xenon.SummonStand = function()
    if Character:FindFirstChild("SummonedStand").Value == false then
        repeat
            Xenon:GetRemoteFunction():InvokeServer("ToggleStand", "Toggle")

            task.wait()
        until Character:FindFirstChild("SummonedStand").Value == true
    end
end

Xenon.GetStand = function()
	Xenon:SummonStand()

    return Character:FindFirstChild("StandMorph")
end

Xenon.Teleport = function(self, CFrame)
	if Info.State["ControlStand"] == true then
		Xenon:GetStand():PivotTo(CFrame)

        return
	end

    Character:PivotTo(CFrame)
end

Xenon.Fly = function()
    local Keys_Pressed = {
        ["W"] = 0;
        ["A"] = 0;
        ["S"] = 0;
        ["D"] = 0;
    }

    local Key_Info = {
        ["W"] = {
            ["Operator"] = "+";
            ["Direction"] = "LookVector";
        };
        ["A"] = {
            ["Operator"] = "-";
            ["Direction"] = "RightVector";
        };
        ["S"] = {
            ["Operator"] = "-";
            ["Direction"] = "LookVector";
        };
        ["D"] = {
            ["Operator"] = "+";
            ["Direction"] = "RightVector";
        };
    }

    local function GetKeyFromEnum(enum)
        return enum.KeyCode.Name
    end
    
    local function GetMass(Model)
        local Mass = 0
        for _, Part in Model:GetDescendants() do
            if Part:IsA("BasePart") then
                Mass = Mass + Part:GetMass()
            end
        end

        return Mass
    end
    
    local function Math(Operator, A, B)
        if Operator == "-" then
            return A-B
        elseif Operator == "+" then
            return A+B
        end
    end

    UserInputService.InputBegan:Connect(function(Key, Typing)
        if Typing then return end
        
        local Key_String = GetKeyFromEnum(Key)
        if Keys_Pressed[Key_String] then
            Keys_Pressed[Key_String] = 1
        end
    end)
    
    UserInputService.InputEnded:Connect(function(Key, Typing)
        if Typing then return end
        
        local Key_String = GetKeyFromEnum(Key)
        if Keys_Pressed[Key_String] then
            Keys_Pressed[Key_String] = 0
        end
    end)

    RunService:BindToRenderStep("Fly", 0, function()
        Xenon.GetHumanoid().WalkSpeed = 0
        Xenon.GetHumanoid().JumpPower = 0

        Xenon.GetHRP().CFrame = CFrame.new(
            Xenon.GetHRP().Position,
            Xenon.GetHRP().Position + workspace.CurrentCamera.CFrame.LookVector
        )

        local CharacterMass = GetMass(Character)
        local Velocity = Vector3.new(
            0,
            CharacterMass/workspace.Gravity,
            0
        )

        for Integer, Value in Keys_Pressed do
            if Value == 0 then continue end

            Velocity = Math(Key_Info[Integer].Operator, Velocity, Xenon.GetHRP().CFrame[Key_Info[Integer].Direction] * Info.Integer["FlySpeed"] * CharacterMass)
        end
        
        Xenon.GetHRP().Velocity = Velocity
    end)
end

Xenon.AntiRockTrap = function(self, Child)
    if Child.Name == "Rocks" then    
        for _, Rock in workspace.IgnoreInstances.Rocks:GetChildren() do
            if string.find(Rock.Name, "Rock") then
                Rock.Size = Vector3.new(0,0,0)
                Character.UpperTorso.Anchored = false
            end
        end
    end
end

Xenon.AntiTimeStop = function(self, Child)
    local OldCFrame = nil

    if Child.Name == "TimeStopping" then
        if Player:DistanceFromCharacter(workspace.Living[tostring(Child.Parent)].PrimaryPart.Position) < 25 then
            OldCFrame = Xenon:GetCFrame()
            task.wait(0.1)

            Xenon:Teleport(CFrame.new(800,1000,500))

            task.wait(1)

            Xenon:Teleport(OldCFrame)
        else
            return
        end
    end
end

Xenon.CloneAnimation = function(self, Animation)
    local NewAnimation = Xenon:GetStand().AnimationController:LoadAnimation(Animation.Animation)
    NewAnimation.Priority = Enum.AnimationPriority.Action
    NewAnimation.TimePosition = Animation.TimePosition
    NewAnimation.Looped = Animation.Looped
    NewAnimation:Play()
end

Xenon.PlayerToStandAnimation = function()
    Xenon:GetHumanoid().AnimationPlayed:Connect(function(Animation)
        Xenon.CloneAnimation(Animation)

        Animation.Stopped:Connect(function()
            for _, Anim in Xenon:GetStand().AnimationController:GetPlayingAnimationTracks() do
                if Anim.Animation == Anim.Animation then
                    Anim:Stop()
                end
            end
		end)
    end)
end

Xenon.SendWebhook = function(self, webhook, msg, title)
    local WebhookCheck = (identifyexecutor and identifyexecutor() or "Unsupported exploit")
    local URL = webhook
    local Data;
    Data = {
        ["embeds"] = {
            {
                ["title"] = title,
                ["description"] = msg,
                ["type"] = "rich",
                ["color"] = tonumber(0x7269ff),
            }
        }
    }

    local NewData = game:GetService("HttpService"):JSONEncode(Data)
    local Headers = {
        ["Content-Type"] = "application/json"
    }

    local request = http_request or request or HttpPost or syn.request or http.request
    request({Url = URL, Body = NewData, Method = "POST", Headers = Headers})
end

Xenon.UseMove = function(self, Move)
    Move = Move

    if Move == string.lower("m1") or Move == string.lower("m2") then
        Xenon:GetRemoteFunction():InvokeServer(
            "Attack",
            Move
        )
    end

    if typeof(Move) == "Enum" then
        Xenon:GetRemoteEvent():FireServer(
            "InputBegan", {
                ["Input"] = Move
            }
        )
    end
end

Xenon.GetStroke = function()
    StrokeDir = 180
    local Anim = "6926086304"
        
    if (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A)) then
        StrokeDir = 90
        Anim = "6926086567"
    end
        
    if (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D)) and StrokeDir == 180 then
        StrokeDir = -90
        Anim = "6926086883"
    end
        
    if (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W)) and StrokeDir == 180 then
        StrokeDir = 0
        Anim = "6926086032"
    end
        
    return StrokeDir, Anim
end


--// too lazy for drawing lib esp on these, wont ever be dtc anyway
Xenon.OutlinePlayer = function(self, Chars)
    local Highlight = Instance.new("Highlight", CoreGui.ESP)
    
    Highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    Highlight.Adornee = Chars
    Highlight.FillColor = Color3.fromRGB(255, 255, 255)
    Highlight.FillTransparency = 1
    Highlight.FillTransparency = 1
end

Xenon.LabelPlayer = function(self, Chars)
    local BGui = Instance.new("BillboardGui", CoreGui.ESP)
    local Frame = Instance.new("Frame", BGui)
    local TextLabel = Instance.new("TextLabel", Frame)
    
    BGui.Adornee = Chars:WaitForChild("Head")
    BGui.StudsOffset = Vector3.new(0, 3, 0)
    BGui.AlwaysOnTop = true
    
    BGui.Size = UDim2.new(4, 0, 0.5, 0)
    Frame.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    
    Frame.BackgroundTransparency = 1
    TextLabel.BackgroundTransparency = 1
    
    TextLabel.Text = Chars.Name
    TextLabel.Font = Enum.Font.Ubuntu
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = false
end

Xenon.Sell = function(self, Item)
    print(`Item Sell: Selling {Item}`)
    Xenon:GetHumanoid():EquipTool(Player.Backpack:FindFirstChild(Item))
    Xenon:GetRemoteEvent():FireServer("EndDialogue", {
        NPC = "Merchant",
        Option = "Option1",
        Dialogue = "Dialogue5"
    })
end

Xenon.YieldUntilBackpackLoaded = function()
    local Backpack = Player.Backpack
    local BackpackCount = #Backpack:GetChildren()
    local StartCheck = tick()

    while true do 
        task.wait()

        if tick() - StartCheck >= 0.1 and BackpackCount == #Backpack:GetChildren() then
            break
        elseif BackpackCount ~= #Backpack:GetChildren() then
            BackpackCount = #Backpack:GetChildren();
            StartCheck = tick()
        end
    end

    return
end

Xenon.CountItem = function(self, Item)
    Xenon:YieldUntilBackpackLoaded()

    local Backpack = Player.Backpack
    local Count = 0
    for _, CheckedItem in Backpack:GetChildren() do
        if CheckedItem.Name == Item then
            Count = Count + 1
        end
    end

    if Character and Character:FindFirstChildWhichIsA("Tool") and Character:FindFirstChildWhichIsA("Tool").Name == Item then
        Count += 1
    end

    return Count
end

Xenon.Has2X = function()
    if MarketplaceService:UserOwnsGamePassAsync(Player.UserId, 14597778) then
        return true
    end

    return false
end

Xenon.IsMax = function(self, Item) 
    local MaxItems = {
        ["Diamond"] = 30;
        ["Gold Coin"] = 45;
        ["Mysterious Arrow"] = 25;
        ["Pure Rokakaka"] = 10;
        ["Rokakaka"] = 25;
        ["Stone Mask"] = 10;
        ["Rib Cage of The Saint's Corpse"] = 10;
        ["Steel Ball"] = 10;
        ["Ancient Scroll"] = 10;
        ["Dio's Diary"] = 10;
        ["Caesar's Headband"] = 10;
        ["Christmas Present"] = 40;
        ["Quinton's Glove"] = 10;
        ["Lucky Arrow"] = 10;
        ["Lucky Stone Mask"] = 10;
    }

    if Xenon:Has2X() then
        for ItemName, ItemMax in MaxItems do
            MaxItems[ItemName] = ItemMax * 2
        end
    end

    return Xenon:CountItem(Item) >= MaxItems[Item]
end

Xenon.NoClip = function(self, State)
    if State == true then
        for _, Part in Character:GetChildren() do
            if Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart") and Part.CanCollide == true then
                Part.CanCollide = false
            end
        end
    else
        for _, Part in Character:GetChildren() do
            if Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart") and Part.CanCollide == false then
                Part.CanCollide = true
            end
        end
    end
end

Xenon.GetDistance = function(self, Part)
    return math.round(math.abs((Xenon:GetHRP().Position-Part.Position).Magnitude))
end

Xenon.IdentifyItem = function(self, Item)
    repeat task.wait() until Item:FindFirstChild("ProximityPrompt")
    for _, Instance in Item:GetChildren() do
        if Instance:IsA("ProximityPrompt") and Instance.MaxActivationDistance > 0 then
            return Instance.ObjectText
        end
    end

    return "Invalid Item"
end

Xenon.AddToQueue = function(self, Item)
    --print(self, Item, "skibidi")
    local IdentifiedItem = Xenon:IdentifyItem(Item)

    if IdentifiedItem ~= "Invalid Item" then
        repeat task.wait() until Item:FindFirstChild("ProximityPrompt")

        local ItemData = {
            ["CFrame"] = Item.PrimaryPart.CFrame;
            ["Prompt"] = Item.ProximityPrompt;
            ["ItemName"] = IdentifiedItem;
            ["ItemModel"] = Item;
        }

        Item.Name = IdentifiedItem 
        
        local ESPPart = Instance.new("Part", workspace)
        ESPPart.Name = IdentifiedItem
        ESPPart.CFrame = ItemData.CFrame
        ESPPart.Anchored = true
        ESPPart.CanCollide = false
        ESPPart.Transparency = 1

        local Billboard = Instance.new("BillboardGui", ESPPart)
        Billboard.AlwaysOnTop = true
        Billboard.Size = UDim2.new(8, 0, 2, 0)
        Billboard.StudsOffset = Vector3.new(0, 2, 0)
        Billboard.ClipsDescendants = false
        Billboard.Name = "XenonESP"
        Billboard.Enabled = false

        local ESPLabel = Instance.new("TextLabel", Billboard)
        ESPLabel.Size = UDim2.new(0, 100, 0, 100)
        ESPLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        ESPLabel.BackgroundTransparency = 1
        ESPLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        ESPLabel.Text = IdentifiedItem
        ESPLabel.TextColor3 = Color3.new(1, 1, 1)
        ESPLabel.TextStrokeTransparency = 0

        if Info.State["ItemNotify"] == true and table.find(Info.Table["SelectedItems"], IdentifiedItem) then
            --[[Library:Notification("Item Spawned", ("A new item has spawned: " .. IdentifiedItem), 4, {
                    [1] = {
                        Text = "Teleport";
                        Callback = function()
                            local Character = Xenon:GetCharacter()
                            if Character then
                                    local HRP = Character:FindFirstChild("HumanoidRootPart")
                                    if HRP then
                                        HRP.CFrame = ItemData.CFrame
                                    end
                            end
                        end
                    };
                    [2] = {
                        Text = "Collect";
                        Callback = function()
                            Xenon:Collect(Item)  
                        end
                    };
            })]]
        end

        if IdentifiedItem == "Lucky Arrow" then
            local NewSound = Instance.new("Sound")
            NewSound.Parent = ReplicatedStorage
            NewSound.SoundId = "rbxassetid://6753175234"
            NewSound.Volume = 10
            NewSound:Play()
            NewSound.Ended:Wait()
            NewSound:Destroy()
        end
        
        TaskSpawn(function()
            local Straight, Gay = pcall(function()
            while task.wait(0.1) do
                if Item.Parent == workspace.Item_Spawns.Items and Item.PrimaryPart then
                    if table.find(Info.Table["SelectedItems"], IdentifiedItem) and Info.State["ItemESP"] == true then
                        Billboard.Enabled = true
                    else
                        Billboard.Enabled = false
                    end
                else
                    ESPPart:Destroy()
                    break
                end
            end
            end) print(`{Straight} {Gay}`)
            return
        end)
        table.insert(Info.Table["ItemQueue"], ItemData)
    end
end

Xenon.Click = function(self, Button, Manual)
    for _, Connection in getconnections(Button.MouseButton1Click) do
        if Manual then
            Connection.Function()
        else
            Connection:Fire()
        end
    end
end

Xenon.UseRoka = function()
    local AmountOfRoka = Xenon:CountItem("Rokakaka")

    if not Player.Backpack:FindFirstChild("Rokakaka") then
        Xenon:FarmItems({"Rokakaka"})
    end

    if not Character:FindFirstChild("Rokakaka") then
        Xenon:GetHumanoid():EquipTool(Player.Backpack:FindFirstChild("Rokakaka"))
    end
    
    repeat
        VirtualInputManager:SendMouseButtonEvent(0,8,0, true, nil, 1)
        task.wait(0.01)
    until Player.PlayerGui:FindFirstChild("DialogueGui")
    
    if Player.PlayerGui:FindFirstChild("DialogueGui") then
        repeat
            VirtualInputManager:SendMouseButtonEvent(0,8,0, true, nil, 1)
            task.wait(0.01)
        until Player.PlayerGui:FindFirstChild("DialogueGui").Frame.Options:FindFirstChild("Option1")
        
        local Eat = Player.PlayerGui:FindFirstChild("DialogueGui").Frame.Options:FindFirstChild("Option1")
        repeat task.wait() until Eat.Visible
            
        local Dial = Player.PlayerGui:FindFirstChild("DialogueGui").Frame
            
        Xenon:Click(Eat.TextButton, true)
            
        repeat task.wait() until not Dial.Parent
    end	
    --Library:Notification("Roka Count", "Rokas left: "..AmountOfRoka-1, 3)
    --Player.CharacterAdded:Wait()
end

Xenon.UseArrow = function()
    local AmountOfArrow = Xenon:CountItem("Mysterious Arrow")

    if not Player.Backpack:FindFirstChild("Mysterious Arrow") then
        Xenon:FarmItems({"Mysterious Arrow"})
    end

    if not Player.Character:FindFirstChild("Mysterious Arrow") then
        Xenon:GetHumanoid():EquipTool(Player.Backpack:FindFirstChild("Mysterious Arrow"))
    end

    repeat
        VirtualInputManager:SendMouseButtonEvent(0,8,0, true, nil, 1)
        task.wait(0.01)
    until Player.PlayerGui:FindFirstChild("DialogueGui")

    if Player.PlayerGui:FindFirstChild("DialogueGui") then
        repeat
            VirtualInputManager:SendMouseButtonEvent(0,8,0, true, nil, 1)
            task.wait(0.01)
        until Player.PlayerGui:FindFirstChild("DialogueGui").Frame.Options:FindFirstChild("Option1")

        local Eat = Player.PlayerGui:FindFirstChild("DialogueGui").Frame.Options:FindFirstChild("Option1")
        repeat task.wait() until Eat.Visible
            
        local Dial = Player.PlayerGui:FindFirstChild("DialogueGui").Frame
            
        Xenon:Click(Eat.TextButton, true)
            
        repeat task.wait() until not Dial.Parent
    end
    --Xenon:GetPity()
    --Library:Notification("Arrow Count", "Arrows left: "..AmountOfArrow-1, 3)
end

Xenon.GetPity = function()
    local Pity = `{Player.PlayerStats.PityCount.Value} ({(Player.PlayerStats.PityCount.Value*0.04)+1}%)`
    --self:SetString("Pity", Pity)
    return Pity
end

Xenon.UseRib = function()
    local AmountOfRib = Xenon:CountItem("Rib Cage of The Saint's Corpse")
    if AmountOfRib == 0 then
        Xenon:FarmItems({"Rib Cage of The Saint's Corpse"})
    end
    
    local Arguments = {
        [1] = "EndDialogue",
        [2] = {
            ["NPC"] = "Rib Cage of The Saint's Corpse",
            ["Option"] = "Option1",
            ["Dialogue"] = "Dialogue2"
        }
    }
    
    Xenon:GetRemoteEvent():FireServer(unpack(Arguments))
    --Library:Notification("Rib Count", "Ribs left: "..AmountOfRib-1, 3)
end

Xenon.LearnSkills = function(self, Skills)
    for _, Skill in Skills do
        local Arguments = {	
            [1] = "LearnSkill",
            [2] = {
                ["Skill"] = Skill,
                ["SkillTreeType"] = "Character",
            }
        }

        Xenon:GetRemoteFunction():InvokeServer(unpack(Arguments))
    end
end

Xenon.Stats = function()
    local Skills = {
        "Worthiness I"
    }

    if Info.State["RibFarming"] == true or Info.State["RibShinyFarming"] == true then
        table.insert(Skills, #Skills+1, "Worthiness V")
    end

    Xenon:LearnSkills(Skills)
end 

Xenon.HasStand = function()
    if Player.PlayerStats.Stand.Value == "None" then
        return false
    end

    return Player.PlayerStats.Stand.Value
end

Xenon.HasShiny = function()
    local PotentialShiny = Xenon:GetRemoteFunction():InvokeServer("ReturnStandSkin", "Stand")

    if Xenon:HasStand() and PotentialShiny ~= "None" then
        if Player.PlayerGui.HUD.Main.Frames.Stands.ScrollingFrame.Equipped:FindFirstChild("Shiny") == nil then
            return false
        else
            if Info.State["ShinyFarming"] == true or Info.State["RibShinyFarming"] == true or Info.State["LuckyStandFarming"] == true then
                SendWebhook(Info.String["Webhook"], `This shiny has not been listed, report to Vez ASAP {PotentialShiny}`, ":warning: **WARNING!** :warning:")
		--// Temporary coregui noitification bs becuz the upcoming ui is unfinished so no ui notif
                for i = 1, 999 do
                    StarterGui:SetCore("SendNotification", {
                        Title = "WARNING", -- Required
                        Text = `This shiny has not been listed, report to Vez ASAP {PotentialShiny}`, -- Required
                    })

                    task.wait(1)

                    if Info.State["ShinyFarming"] == false and Info.State["RibShinyFarming"] == false and Info.State["LuckyStandFarming"] == false then
                        break
                    end
                end
            end
        end

        if string.find(
                Player.PlayerGui.HUD.Main.Frames.Stands.ScrollingFrame.Equipped:FindFirstChild("TextLabel").Text,
                PotentialShiny
            )
        then 
            return PotentialShiny
        end
    end

    return false
end

Xenon.Collect = function(self, Item)
    Info.Integer["OldPosition"] = Xenon:GetHRP().CFrame

    if #Info.Table["CachedBodyParts"] == 0 then
        for _, Part in Character:GetDescendants() do
            if (Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart")) and Part.CanCollide == true then
                table.insert(Info.Table["CachedBodyParts"], Part)
                Part.CanCollide = false  
            end
        end
    else
        for _, Part in Info.Table["CachedBodyParts"] do
            Part.CanCollide = true
        end
    end

    local StartTime = tick()
    if Item and Item:FindFirstChild("ProximityPrompt") then

        Info.Integer["OldPosition"] = Xenon:GetHRP().CFrame
        repeat 
            task.wait()
            Xenon:GetHRP().CFrame = ItemPart.CFrame - Vector3.new(0, 12, 0)
        until tick() - StartTime >= Info.Integer["ItemCollectionDelay"]

        repeat
            task.wait()

            TaskSpawn(function()
                if Item and ItemPart.Parent == workspace.Item_Spawns.Items then 
                    Xenon:GetHRP().CFrame = (ItemPart.CFrame - Vector3.new(0, 12, 0))
                end
            end)

            local ItemPrompt;
            for _, Prompt in Item:GetChildren() do
                if Prompt:IsA("ProximityPrompt") and Prompt.MaxActivationDistance ~= 0 then
                    ItemPrompt = Prompt
                end
            end
            fireproximityprompt(ItemPrompt)
        until ItemPart.Parent ~= workspace.Item_Spawns.Items or tick()-PickupStart >= 3

        Xenon:GetHRP().CFrame = Info.Integer["OldPosition"]
    end

    if #Info.Table["CachedBodyParts"] ~= 0 then
        for _, Part in Info.Table["CachedBodyParts"] do
            Part.CanCollide = true
        end
    end
end

Xenon.FarmItems = function(self, List)
    table.foreach(List, print)
    table.foreach(Info.Table["ItemQueue"], print)
    for Prompt, Item in Info.Table["ItemQueue"] do
        local ItemName = Item.ItemName
        local ItemPrompt = Prompt
        if table.find(List, ItemName) and not Xenon:IsMax(ItemName) then
            Info.Integer["OldPosition"] = Xenon:GetHRP().CFrame

            if #Info.Table["CachedBodyParts"] == 0 then
                for _, Part in Character:GetDescendants() do
                    if (Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart")) and Part.CanCollide == true then
                        table.insert(Info.Table["CachedBodyParts"], Part)
                        Part.CanCollide = false  
                    end
                end
            else
                for _, Part in Info.Table["CachedBodyParts"] do
                    Part.CanCollide = true
                end
            end
        
            local StartTime = tick()
            if Item and Item:FindFirstChild("ProximityPrompt") then
        
                Info.Integer["OldPosition"] = Xenon:GetHRP().CFrame
                repeat 
                    task.wait()
                    Xenon:GetHRP().CFrame = ItemPart.CFrame - Vector3.new(0, 12, 0)
                until tick() - StartTime >= Info.Integer["ItemCollectionDelay"]
        
                repeat
                    task.wait()
        
                    TaskSpawn(function()
                        if Item and ItemPart.Parent == workspace.Item_Spawns.Items then 
                            Xenon:GetHRP().CFrame = (ItemPart.CFrame - Vector3.new(0, 12, 0))
                        end
                    end)
        
                    fireproximityprompt(ItemPrompt)
                until ItemPart.Parent ~= workspace.Item_Spawns.Items or tick()-PickupStart >= 3
        
                Xenon:GetHRP().CFrame = Info.Integer["OldPosition"]
            end
        
            if #Info.Table["CachedBodyParts"] ~= 0 then
                for _, Part in Info.Table["CachedBodyParts"] do
                    Part.CanCollide = true
                end
            end
        end
    end
end

Xenon.SearchPlayer = function(self, Name)
    local ClosestMatch = nil
    local ClosestLetters = 0
    for i, Player in Players:GetPlayers() do
        local matched_letters = 0
        for i = 1, #Name do
            if string.sub(Name:lower(), 1, i) == string.sub(Player.Name:lower(), 1, i) then
                matched_letters = i
            end
        end
        if matched_letters > ClosestLetters then
            ClosestLetters = matched_letters
            ClosestMatch = Player
        end
    end
    return ClosestMatch
end

Xenon.Kill = function(self, Enemy)
    local EnemyHRP = Enemy:FindFirstChild("HumanoidRootPart")
    local EnemyHumanoid = Enemy:FindFirstChildWhichIsA("Humanoid")
    local EnemyHealth = Enemy:FindFirstChild("Health")
    local FocusCam;

    if Enemy and EnemyHRP and EnemyHumanoid and EnemyHealth and EnemyHealth.Value > 0 then
        while Enemy and EnemyHealth and EnemyHealth.Value > 0 and EnemyHRP and EnemyHumanoid do
            if Info.State["NPCFarming"] == false then 
                break
            end

            EnemyHRP = Enemy:FindFirstChild("HumanoidRootPart")
            EnemyHumanoid = Enemy:FindFirstChildWhichIsA("Humanoid")
            EnemyHealth = Enemy:FindFirstChild("Health")
            if not Enemy or not EnemyHRP or not EnemyHumanoid or not EnemyHealth or EnemyHealth.Value <= 0 then
                task.wait(0.01)
                break
            end

            if Character:FindFirstChild("FocusCam") == nil then
                FocusCam = Instance.new("ObjectValue", Character)
                FocusCam.Name = "FocusCam"
                FocusCam.Value = EnemyHRP
            else
                local FocusCam = Character:FindFirstChild("FocusCam")
                FocusCam.Value = EnemyHRP
            end

            if Xenon:HasStand() ~= false then
                Xenon:GetStand().PrimaryPart.CFrame = (EnemyHRP.CFrame - EnemyHRP.CFrame.LookVector * 1.1) + (EnemyHRP.Velocity * 0.2)
                Character.PrimaryPart.CFrame = Xenon:GetStand().PrimaryPart.CFrame + Xenon:GetStand().PrimaryPart.CFrame.LookVector * math.random(-3,-2) + Vector3.new(0,-35,0) 
            else
                Character.PrimaryPart.CFrame = EnemyHRP.CFrame - EnemyHRP.CFrame.LookVector * 2.3
            end

            TaskSpawn(function()
                Xenon:UseMove("m1")
            end)

            task.wait()
        end

        if Info.State["NPCFarming"] == true then
            Xenon:Teleport(Info.Table["AllTeleports"]["Safe Spot"])
        end

        FocusCam:Destroy()
    end
end

Xenon.PlayAnimation = function(self, HumanoidCharacter, AnimationID, AnimationSpeed, Time)
    HumanoidCharacter = Character
	local CreatedAnimation = Instance.new("Animation")
	CreatedAnimation.AnimationId = AnimationID
	local HumanoidEx = HumanoidCharacter:FindFirstChild("Humanoid")
	
	if not HumanoidEx then
	    repeat task.wait() until HumanoidCharacter:FindFirstChild("Humanoid")
	    HumanoidEx = HumanoidCharacter:FindFirstChild("Humanoid")
	end
	
	local AnimatorEx = HumanoidEx:FindFirstChild("Animator") or HumanoidEx:WaitForChild("Animator", 3)
    local AnimationTrack = AnimatorEx:LoadAnimation(CreatedAnimation)

	AnimationTrack:Play()
	AnimationTrack:AdjustSpeed(AnimationSpeed)
	AnimationTrack.Priority= Enum.AnimationPriority.Action4
	AnimationTrack.TimePosition = Time
	return AnimationTrack
end

local UndergroundAnimation, Highlight
Xenon.Invisibile = function()
    local HUD = Player.PlayerGui:FindFirstChild("HUD")
    if HUD then
        HUD.Parent = StarterGui
    else
        local S1, F1 = pcall(function()
            StarterGui:FindFirstChild("HUD").Parent = Player.PlayerGui
            HUD = Player.PlayerGui:FindFirstChild("HUD")
        end)
        
        print(S1, F1)
    end

    UndergroundAnimation = Xenon:PlayAnimation(Character, "rbxassetid://7189062263", 0, 5)
    Player.Character = nil

    UndergroundAnimation:Stop()
    Player.Character = Character
    
    local Survived, Died = pcall(function()
        HUD.Parent = Player.PlayerGui
    end)
    
    print(Survived, Died)
    
    Highlight = Instance.new("Highlight")
    Highlight.Parent = Character
    Highlight.Enabled = true
    for _, Part in Character:GetChildren() do
        if Part:IsA("BasePart") then
            Part.Material = Enum.Material.ForceField
        end
    end
end

Xenon.Uninvisible = function()
    Xenon:PlayAnimation(Character, "rbxassetid://7189062263", 0, 5):Stop()
    Highlight:Destroy()
    for _, Part in Character:GetChildren() do
        if Part:IsA("BasePart") then
            Part.Material = Enum.Material.SmoothPlastic
        end
    end
end

Xenon.MakeInvisible = function(self, RealCharacter)
    for _, Part in RealCharacter:GetDescendants() do
        if Part:IsA("BasePart") or Part:IsA("Decal") then
            Part.Transparency = 1
            if Part:IsA("BasePart") then
                Part.CanCollide = false
            end
        elseif Part:IsA("ParticleEmitter") or Part:IsA("Trail") or Part:IsA("BillboardGui") or Part:IsA("SurfaceGui") then
            Part.Enabled = false
        end
    end
end

--// Rejoin on kick
local Prompt = game:GetService("CoreGui"):FindFirstChild("promptOverlay", true)
Prompt.ChildAdded:Connect(function(Child)
    if typeof(Child) == "Instance" and Child.Name == "ErrorPrompt" and Child.ClassName == "Frame" then
        local Error = Child:FindFirstChild("ErrorMessage", true)
        repeat task.wait() until Error.Text ~= "Label"
        if Error.Text:find("kick") or Error.Text:find("conn") or Error.Text:find("rejoin") then
            task.wait(0.65)
            if Error.Text:find("bruh") then
                Error.Text = "Increase item collection delay, YBA kicked you for trying to farm too fast."
            end
            task.wait(1)
            TeleportService:Teleport(2809202155, Player)
        end
    end
end)

--// Ignore this
if game.PlaceId ~= 2809202155 then
    local Folder = Instance.new("Folder", workspace)
    Folder.Name = "Item_Spawns"
    local Folder2 = Instance.new("Folder", Folder)
    Folder2.Name = "Items"
end

--// No-Clip Bypass (stupid, i know)
local MapFolder = Instance.new("Folder", workspace)

for _, Part in workspace.Map:GetChildren() do
    TaskSpawn(function()
        Part.Parent = MapFolder
    end)
end

--// Anti-AFK
Player.Idled:Connect(function()
    VirtualUser:ClickButton2(Vector2.new())
end)

--// Mod Detection
Players.PlayerAdded:Connect(function(Plr)
    if Plr:IsInGroup(3194064) then
		Player:Kick(`Xenon - Spotted a mod ({Plr.Name}), rejoining..`)
    end
end)

TaskSpawn(function()
    pcall(function()
        for _, Plr in Players:GetPlayers() do
            if Plr:IsInGroup(3194064) then
                Player:Kick(`Xenon - Spotted a mod ({Plr.Name}), rejoining..`)
            end
        end
    end)
end)

--// Hooks & Loading Screen
if Xenon:GetHRP() and Xenon:IsSBR() == false then
    local OldIndexItem;
    OldIndexItem = hookfunction(getrawmetatable(Xenon:GetHRP().Position).__index, function(self, key)
        if getcallingscript().Name == "ItemSpawn" and key:lower() == "magnitude" then
            return 0
        end
        return OldIndexItem(self, key)
    end)

    TaskSpawn(function()
        for _, Item in workspace.Item_Spawns.Items:GetChildren() do
            Xenon:AddToQueue(Item)
            print(`[Item Queue]: Added {Item.Name} to the item queue`)
        end
    end)
            
    workspace.Item_Spawns.Items.ChildAdded:Connect(function(Child)
        Xenon:AddToQueue(Child)
    end)
end

local OldNewIndex;
OldNewIndex = hookmetamethod(game, "__newindex", newcclosure(function(self, Key, Value, ...)
    if Key == "WalkSpeed" then
        Info.Integer["DefaultWalkSpeed"] = Value

        if Info.State["WalkSpeed"] == true then
            return OldNewIndex(self, Key, Info.Integer["HookedWalkSpeed"], ...)
        end
    end

    if Key == "JumpPower" then
        Info.Integer["DefaultJumpPower"] = Value

        if Info.State["JumpPower"] == true then
            return OldNewIndex(self, Key, Info.Integer["HookedJumpPower"], ...)
        end
    end

    return OldNewIndex(self, Key, Value, ...)
end))

local OldIndex;
OldIndex = hookmetamethod(game, "__index", newcclosure(function(self, Key, ...)
    if Key == "WalkSpeed" then
        return Info.Integer["DefaultWalkSpeed"]
    end

    if Key == "JumpPower" then
        return Info.Integer["DefaultJumpPower"]
    end

    if Info.State["AntiVampBurn"] == true and Key == "ClockTime" then
        return 0
    end

    return OldIndex(self, Key, ...)
end))

if PrintHooked == nil then
    local OriginalPrint
    OriginalPrint = hookfunction(print, function(...)
        if checkcaller() then
            return OriginalPrint(`Xenon V4 Debug\n{...}`)
        end
        return OriginalPrint(...)
    end)

    getgenv().PrintHooked = true

    TaskSpawn(function()
        if not CoreGui:FindFirstChild("DevConsoleMaster") then
            repeat task.wait() until CoreGui:FindFirstChild("DevConsoleMaster")
        end
        
        CoreGui:FindFirstChild("DevConsoleMaster", 5).DescendantAdded:Connect(function(Descendant)
            if Descendant.Name == "msg" and string.find(Descendant.Text, "Xenon") then
                Descendant.TextColor3 = Color3.fromRGB(133, 232, 133)
            end
        end)
    end)
end

if not CollectionService:HasTag(Player, "PressedPlay") then
    Xenon:GetRemoteEvent():FireServer("PressedPlay")
end

if not Xenon:IsSBR() then
    print("Loading HUD")

    if not PlayerGui:FindFirstChild("HUD") then
        local HUD = ReplicatedStorage.Objects.HUD:Clone()
        HUD.Parent = PlayerGui
    end

    pcall(function()
        PlayerGui:FindFirstChild("LoadingScreen1"):Destroy()
    end)   

    task.wait(.5)

    pcall(function()
        PlayerGui:FindFirstChild("LoadingScreen"):Destroy()
    end)

    print("Skipped Loading Screen")

    pcall(function()
        workspace.LoadingScreen.Song:Destroy()
    end)

    for _, Effect in Lighting:GetChildren() do
        if Effect.Name == "DepthOfField" then
            Effect.Enabled = false
        end
    end

    Lighting.ChildAdded:Connect(function(Child)
        if Child:IsA("Blur") then
            Child:Destroy()
        end
    end)

    print("Passed Loading Screen Checks")
elseif Xenon:IsSBR() then
    PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
    PlayerGui.Chat.Frame.ChatChannelParentFrame.Position = UDim2.new(0, 0, 0, -156)
    PlayerGui.Chat.Frame.Position = UDim2.new(0, 0, 1, 95)
    print("Fixed chat for SBR")
end

local OldNamecallTP;
OldNamecallTP = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
    local Arguments = {...}
    local Method =  getnamecallmethod()
        
    if Method == "InvokeServer" and Arguments[1] == "idklolbrah2de" then
        return "  ___XP DE KEY"
    end
        
    return OldNamecallTP(self, ...)
end))

local FunctionLibrary = require(ReplicatedStorage:WaitForChild('Modules').FunctionLibrary)
local Old = FunctionLibrary.pcall

FunctionLibrary.pcall = function(...)
    local f = ...

    if type(f) == 'function' and #getupvalues(f) == 11 then 
        return
    end
    
    return Old(...)
end

print("Passed all hooks!")

--// Library
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/SbuuZiTS"))()

local UI = Library.UI("Xenon V4 - ALPHA")
local Credits = UI:Tab("Credits & Info", 6026568227)
local PlayerTab = UI:Tab("Player", 6023426915)
local Stands = UI:Tab("Stands", 6034744057)
local Teleports = UI:Tab("Teleports", 6031265970)
local Autofarm = UI:Tab("Autofarm", 6031360365)
local Misc = UI:Tab("Misc", 6022668951)

local CreditsContainer = Credits:Container("Credits")
local CharacterContainer = PlayerTab:Container("Character Modifications")
local InfiniteDashContainer = PlayerTab:Container("Infinite Dash")
local ExtraContainer = PlayerTab:Container("Extra")
local TeleportsContainer = Teleports:Container("Teleports")
local ItemfarmContainer = Autofarm:Container("Item Farm")
local ItemsContainer = Autofarm:Container("Choose Items")
local AutofarmContainer = Autofarm:Container("NPC Farm")
local NPCContainer = Autofarm:Container("Select NPCs")
local StandfarmContainer = Autofarm:Container("Stand Farm")
local StandContainer = Autofarm:Container("Choose Stand")
local RibStandContainer = Autofarm:Container("Choose Rib Stand")
local ShinyContainer = Autofarm:Container("Choose Shiny")

UI:SetToggleKey(Info.Keybinds["ToggleUI"])

--// Ignore this
TaskSpawn(function()
    task.wait(1)
    CoreGui.TUI2.BottomMenu.Position = UDim2.new(99, 0, 99, 0)
    CoreGui.TUI2.Widgets.Widget.Position = UDim2.new(99, 0, 99, 0)
    CoreGui.TUI2.Widgets.Bookmarks.Position = UDim2.new(99, 0, 99, 0)
    CoreGui.TUI2.Widgets.Music.Position = UDim2.new(99, 0, 99, 0)
end)

CreditsContainer:Label("Developer: _vez0")
CreditsContainer:Label("Ex-Developer (Main): enxquity (V1-V3)")
CreditsContainer:Label("UI: enxquity")
CreditsContainer:Label("Bypasses: enxquity & sens6222")

CharacterContainer:Toggle("Speed", false, function(State)
    Info.State["WalkSpeed"] = State

    if Info.State["WalkSpeed"] then
		Humanoid.WalkSpeed = Info.Integer["HookedWalkSpeed"]
    else
		Humanoid.WalkSpeed = Info.Integer["DefaultWalkSpeed"]
	end
end)

CharacterContainer:Slider("Speed Strength", 16, 500, Info.Integer["HookedWalkSpeed"], function(Value)
    Info.Integer["HookedWalkSpeed"] = Value

    if Xenon:IsStandSummoned() == true then
		Xenon:GetStand().AnimationController.WalkSpeed = Value
	end
end)

CharacterContainer:Toggle("Jump", false, function(State)
    Info.State["JumpPower"] = State

    if Info.State["JumpPower"] then
		Humanoid.WalkSpeed = Info.Integer["HookedJumpPower"]
    else
		Humanoid.WalkSpeed = Info.Integer["DefaultJumpPower"]
	end
end)

CharacterContainer:Slider("Jump Strength", 16, 500, Info.Integer["HookedJumpPower"], function(Value)
    Info.Integer["HookedJumpPower"] = Value

    if Xenon:IsStandSummoned() == true then
        Xenon:GetStand().AnimationController.JumpPower = Value
	end
end)

CharacterContainer:Toggle("Fly", false, function(State)
    Info.State["FlyToggle"] = State

    if Info.State["FlyToggle"] then
        Xenon:Fly()
    else
        RunService:UnbindFromRenderStep("Fly")
        
        if Info.State["WalkSpeed"] == true then
            Xenon:GetHumanoid().WalkSpeed = Info.Integer["HookedWalkSpeed"]
        else
            Xenon:GetHumanoid().WalkSpeed = Info.Integer["DefaultWalkSpeed"]
        end
    end
end)

CharacterContainer:Slider("Fly Strength", 16, 500, Info.Integer["FlySpeed"], function(Value)
    Info.Integer["FlySpeed"] = Value
end)

CharacterContainer:Toggle("Invisibility", false, function(State)
    if State then
        local IsInvisibile
        Info.State["Invisibility"] = UserInputService.InputBegan:Connect(function(Input, GameProccessed)
            if GameProccessed then return end
            if Input.KeyCode ~= Info.Keybinds["Invisibility"] then return end
        
            if IsInvisibile then
                Xenon:Uninvisible()
            else
                Xenon:Invisibile()
            end
        
            IsInvisibile = not IsInvisibile
        end)
    else
        if Info.State["Invisibility"] then
            Info.State["Invisibility"]:Disconnect()
            Xenon:Uninvisible()
        end
    end
end)

CharacterContainer:Toggle("Control Stand (Pilot)", false, function(State)
    Info.State["ControlStand"] = State

    local CameraValue = nil
    local TempStorage = TempStorage or nil
    
    if TempStorage == nil then
        TempStorage = Instance.new("Folder")
    end
    
    local S, F = pcall(function()
        if Info.State["ControlStand"] == true then
			if Character:FindFirstChild("FocusCam") == nil then
                CameraValue = Instance.new("ObjectValue", Character)
                CameraValue.Name = "FocusCam"
                CameraValue.Value = Xenon:GetStand().AnimationController
            end

            Xenon:GetStand().PrimaryPart.StandAttach:FindFirstChild("AlignPosition").Enabled = false

            TaskSpawn(function()
                for _, Part in Xenon:GetStand():GetChildren() do
                    if Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart") then
                        Part.CollisionGroupId = 1
                    end
                end
            end)

            TaskSpawn(function()
                for _, Part in Character:GetChildren() do
                    if Part:IsA("BasePart") or Part:IsA("UnionOperation") then
                        Part.CollisionGroupId = 2
                    end
                end
            end)

            TaskSpawn(function()
                for _, Location in workspace.Locations:GetChildren() do
                    if Location.Name == "Naples' Sewers" then
                        Location.Parent = TempStorage
                    end
                end
            end)
            --Xenon:PlayerToStandAnimation()

            while Info.State["ControlStand"] == true do
				TaskSpawn(function()
					if Xenon:GetHumanoid().Jump then
                        Xenon:GetStand().AnimationController.Jump = true
                    end
				end)

                TaskSpawn(function()
                    Xenon:GetStand().AnimationController:Move(
                        workspace.CurrentCamera.CFrame:VectorToObjectSpace(Xenon:GetHumanoid().MoveDirection),
                        true
                    )
                end)
                
                Xenon:GetHRP().CFrame = Xenon:GetStand().PrimaryPart.CFrame + Vector3.new(
                    0,
                    -30,
                    0
                )

                TaskSpawn(function()
                    Xenon:GetHRP().Velocity = Vector3.new(0, 0, 0)
                end)
                task.wait()
            end
        else
            if Character:FindFirstChild("FocusCam") then
				Character:FindFirstChild("FocusCam"):Destroy()
			end

            Xenon:GetStand().PrimaryPart.StandAttach:FindFirstChild("AlignPosition").Enabled = true

            for _, Part in Character:GetChildren() do
                TaskSpawn(function()
                    if Part:IsA("BasePart") or Part:IsA("UnionOperation") then
                        Part.CollisionGroupId = 10
                    end
                end)
            end

            Xenon:GetHRP().Velocity = Vector3.new(0, 0, 0)
            Xenon:GetHRP().CFrame = Xenon:GetStand().PrimaryPart.CFrame

            for _, Part in Xenon:GetStand():GetChildren() do
                TaskSpawn(function()
                    if Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart") then
                        Part.CollisionGroupId = 2
                    end
                end)
            end

            TempStorage["Naples' Sewers"].Parent = workspace.Locations
        end
    end)
    print("Control Stand - Success:", S, "/ Error:", F)
end)

CharacterContainer:Toggle("No-Clip", false, function(State)
    Info.State["NoClipping"] = State

    while Info.State["NoClipping"] == true do
        if #Info.Table["CachedBodyParts"] == 0 then
            for _, Part in Character:GetDescendants() do
                if (Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart")) and Part.CanCollide == true then
                    table.insert(Info.Table["CachedBodyParts"], Part)
                    Part.CanCollide = false  
                end
            end
        else
            for _, Part in Info.Table["CachedBodyParts"] do
                Part.CanCollide = false
            end
        end

        task.wait()
    end

    if #Info.Table["CachedBodyParts"] ~= 0 then
        for _, Part in Info.Table["CachedBodyParts"] do
            Part.CanCollide = true
        end
    else
        for _, Part in Character:GetDescendants() do
            if (Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart")) and Part.CanCollide == true then
                table.insert(Info.Table["CachedBodyParts"], Part)
                Part.CanCollide = true  
            end
        end
    end
end)

for Place, CFrame in Info.Table["AllTeleports"] do
    TeleportsContainer:Button(Place, function()
		local S, F = pcall(function()
            Xenon:Teleport(CFrame)
        end)

        print("Teleport - Success:", S, "/ Error:", F)
    end)
end

CharacterContainer:Toggle("Auto Sprint", false, function(State)
    Info.State["AutoSprint"] = true

    while Info.State["AutoSprint"] == true do
        if Xenon:GetRemoteFunction():InvokeServer("ReturnSprint").IsSprinting == true then continue end
        
        Xenon:GetRemoteFunction():InvokeServer("ToggleSprinting")
        task.wait()
    end
end)


InfiniteDashContainer:Toggle("Infinite Dash", false, function(State)
    Info.State["Infinite Dash"] = State
    if getgenv().InfiniteDash then
		getgenv().InfiniteDash:Disconnect()
	end

    local DashAnims = Instance.new("Folder", workspace)
    if Info.State["Infinite Dash"] == true then
        getgenv().InfiniteDash = UserInputService.InputBegan:Connect(function(Input, GameProcessed)
            if GameProcessed then return end

            if Input.KeyCode == Enum.KeyCode[Player.PlayerStats.DashKey.Value] and (tick()-Info.Integer["InfiniteDashTick"]) >= Info.Integer["InfiniteDashDelay"] then
                Info.Integer["InfiniteDashTick"] = tick()

                local Dir, Anim_ = Xenon:GetStroke()
                local Anim = Instance.new("Animation", DashAnims)
                Anim.Name = "YBA_AntiCheat_Bypass_REAL"
                Anim.AnimationId = `rbxassetid://{Anim_}`
                local Anim2 = Xenon:GetHumanoid():LoadAnimation(Anim)
                Anim2:Play()
                GAYPENIS = Instance.new("BodyVelocity", Xenon:GetHRP())
                GAYPENIS.Velocity = (
                    Xenon:GetHRP().CFrame * CFrame.Angles(
                        0,
                        math.rad(Dir),
                        0)
                    ).LookVector * Info.Integer["InfiniteDashPower"]
                GAYPENIS.MaxForce = Vector3.new(55555,1000,55555)
                Debris:AddItem(GAYPENIS, 0.25)
            end
        end)
    end
end)

InfiniteDashContainer:Slider("Dash Power", 10, 1000, 50, function(Value)
    Info.Integer["InfiniteDashPower"] = Value
end)

InfiniteDashContainer:Slider("Dash Delay", 0, 3.5, 1, function(Value)
    Info.Integer["InfiniteDashDelay"] = Value
end)

ExtraContainer:Toggle("Anti Vamp Burn", false, function(State)
    Info.State["AntiVampBurn"] = State

    Xenon:GetRemoteEvent():FireServer("VampireBurnOff")
end, "Turns on anti vamp burn")

ExtraContainer:Toggle("Anti Rock Trap", false, function(State)
    Info.State["AntiRockTrap"] = State
    getgenv().AntiRTLoop = nil

    if Info.State["AntiRockTrap"] == true then
        AntiRTLoop = workspace.IgnoreInstances.ChildAdded:Connect(Xenon:AntiRockTrap(Child))
    end
end, "Turns on anti rock trap")

ExtraContainer:Toggle("Anti-Timestop", false, function(State)
    Info.State["AntiTimeStop"] = State
    getgenv().AntiTSLoop = nil

	if Info.State["AntiTimeStop"] then
		AntiTSLoop = workspace.Living.DescendantAdded:Connect(Xenon:AntiTimeStop(Child))
	end
end, "Turns on Anti-Timestop")

ItemfarmContainer:Toggle("Item ESP", Info.State["ItemESP"], function(State)
    Info.State["ItemESP"] = State
end)

ItemfarmContainer:Toggle("Item Farm", Info.State["ItemFarming"], function(State)
    Info.State["ItemFarming"] = State
    
    if State == true then
        Info.Integer["OldPosition"] = Xenon:GetHRP().CFrame

        if #Info.Table["CachedBodyParts"] == 0 then
            for _, Part in Character:GetDescendants() do
                if (Part:IsA("BasePart") or Part:IsA("UnionOperation") or Part:IsA("MeshPart")) and Part.CanCollide == true then
                    table.insert(Info.Table["CachedBodyParts"], Part)
                    Part.CanCollide = false  
                end
            end
        else
            for _, Part in Info.Table["CachedBodyParts"] do
                Part.CanCollide = true
            end
        end
    end

    local IFSuccess, IFError = pcall(function()
        while Info.State["ItemFarming"] == true do task.wait()
            for Prompt, Item in Info.Table["ItemQueue"] do
                if Info.State["ItemFarming"] == false then
                    Xenon:Teleport(Info.Table["AllTeleports"]["Safe Spot"])
                    break
                end

                if
                    Info.State["StandFarming"] == true or
                    Info.State["ShinyFarming"] == true or
                    Info.State["PityFarming"] == true or
                    Info.State["RibFarming"] == true
                then
                    repeat
                        task.wait()
                    until (
                        Info.State["ItemFarming"] == false or 
                        (
                            Info.State["StandFarming"] == false and
                            Info.State["ShinyFarming"] == false and
                            Info.State["PityFarming"] == false and
                            Info.State["RibFarming"] == false
                        )
                    )
                end

                local PickupStart = tick()
                local Character = Character
                local ItemName = Item.ItemName
                local ItemPrompt = Item.Prompt

                if not table.find(Info.Table["SelectedItems"], ItemName) then
                    continue
                end

                local StartTime = tick()
                if Item.ItemModel.Parent ~= nil and table.find(Info.Table["SelectedItems"], ItemName) then
                    if Xenon:IsMax(ItemName) == true then
                        Xenon:Sell(ItemName)
                    end

                    repeat 
                        task.wait()
                        Xenon:GetHRP().CFrame = Item.ItemModel.PrimaryPart.CFrame - Vector3.new(0, 12, 0)
                    until tick() - StartTime >= Info.Integer["ItemCollectionDelay"]

                    repeat
                        task.wait()

                        TaskSpawn(function()
                            if Item.ItemModel and Item.ItemModel.Parent == workspace.Item_Spawns.Items then 
                                Xenon:GetHRP().CFrame = (Item.ItemModel.PrimaryPart.CFrame - Vector3.new(0, 12, 0))
                            end
                        end)

                        fireproximityprompt(ItemPrompt)
                    until Item.ItemModel.Parent ~= workspace.Item_Spawns.Items or tick()-PickupStart >= 3

                    Xenon:Teleport(Info.Table["AllTeleports"]["Safe Spot"])
                end
            end
        end
    end)

    if IFError then
        print(`Item Farm: Success: {IFSuccess}, Error: {IFError}`)
    end

    if #Info.Table["CachedBodyParts"] ~= 0 then
        for _, Part in Info.Table["CachedBodyParts"] do
            Part.CanCollide = true
        end
    end

    Xenon:GetHRP().CFrame = Info.Integer["OldPosition"]
end)

ItemfarmContainer:Slider("Item Collection Delay", 2, 10, 5, function(Value)
    Info.Integer["ItemCollectionDelay"] = (Value/10)
end)

TaskSpawn(function()
    for _, Item in Info.Table["AllItems"] do
        ItemsContainer:Toggle(Item, (table.find(Info.Table["SelectedItems"], Item) ~= nil and true or false), function()
            if table.find(Info.Table["SelectedItems"], Item) == nil then
                table.insert(Info.Table["SelectedItems"], Item)
            else
                table.remove(Info.Table["SelectedItems"], table.find(Info.Table["SelectedItems"], Item))
            end
        end)
        
        task.wait()
    end
end)

AutofarmContainer:Toggle("Farm NPCs", Info.State["NPCFarming"], function(State)
    Info.State["NPCFarming"] = State

    local OldPos = Xenon:GetHRP().CFrame

    while Info.State["NPCFarming"] == true do
        for _, NPC in workspace.Living:GetChildren() do
            if table.find(Info.Table["SelectedNPCs"], NPC.Name) then
                local NPCSuccess, NPCError = pcall(function()
                    Xenon:Kill(NPC)
                end)
                
                if NPCError then
                    print(`[Xenon] Kill function experienced an error; but was handled by Xenon - {NPCError}`)
                end
            end
        end

        task.wait()
    end

    task.wait(0.3)

    Xenon:Teleport(OldPos)
end)

TaskSpawn(function()
    for _, NPC in Info.Table["AllNPCs"] do
        NPCContainer:Toggle(NPC, (table.find(Info.Table["SelectedNPCs"], NPC) ~= nil and true or false), function()
            if table.find(Info.Table["SelectedNPCs"], NPC) == nil then
                table.insert(Info.Table["SelectedNPCs"], NPC)
            else
                table.remove(Info.Table["SelectedNPCs"], table.find(Info.Table["SelectedNPCs"], NPC))
            end
        end)

        task.wait()
    end
end)

StandfarmContainer:Toggle("Stand Farm", Info.State["StandFarming"], function(State)
    Info.State["StandFarming"] = State

    local OldPosition;
    
    if State == true then
        OldPosition = Xenon:GetHRP().CFrame
    end

    task.wait(0.5)

    while Info.State["StandFarming"] do
        TaskSpawn(function()
            Xenon:Teleport(Info.Table["AllTeleports"]["Safe Spot"])
        end)

        if Xenon:HasShiny() ~= false then
            repeat
                task.wait()
            until (
                Xenon:HasShiny() == false or
                Info.State["StandFarming"] == false or
                table.find(
                    Info.Table["SelectedShinys"],
                    Xenon:HasShiny()
                ) == nil
            )
        end

        if Xenon:HasStand() == false then
            Xenon:Stats()
            Xenon:UseArrow()
            
            repeat
                task.wait()
            until Xenon:HasStand() ~= false

            if table.find(
                Info.Table["SelectedStands"], Xenon:HasStand()
            ) then
                Xenon:SendWebhook(Info.String["Webhook"], `{Player.Name} obtained the following stand from an arrow: **{Xenon:HasStand()}**!`, "Obtained a wanted stand!")

                repeat
                    task.wait()
                until (
                    Xenon:HasStand() == false or
                    Info.State["StandFarming"] == false or
                    table.find(
                        Info.Table["SelectedStands"],
                        Xenon:HasStand()
                    ) == nil
                )
            end
        end

        if Xenon:HasStand() and table.find(
            Info.Table["SelectedStands"],
            Xenon:HasStand()
        ) == nil then
            Xenon:UseRoka()
            Player.CharacterAdded:Wait()
        end

        if Xenon:CountItem("Rokakaka") == 0 or Xenon:CountItem("Mysterious Arrow") == 0 then
            Xenon:FarmItems({
                "Mysterious Arrow";
                "Rokakaka";
                "Lucky Arrow";
                "Lucky Stone Mask";
            })
        end

        task.wait()
    end

    Xenon:Teleport(OldPosition)
end)

StandfarmContainer:Toggle("Rib Stand Farm", Info.State["RibFarming"], function(State)
    Info.State["RibFarming"] = State

    local OldPosition;
    
    if State == true then
        OldPosition = Xenon:GetHRP().CFrame
    end

    task.wait(0.5)

    while Info.State["RibFarming"] == true do
        TaskSpawn(function()
            Xenon:Teleport(Info.Table["AllTeleports"]["Safe Spot"])
        end)

        if Xenon:CountItem("Rib Cage of The Saint's Corpse") == 0 then
            repeat
                task.wait()
            until (
                workspace.Item_Spawns.Items:FindFirstChild("Rib Cage of The Saint's Corpse") ~= nil or
                not Info.State["RibFarming"] == true
            )

            Xenon:FarmItems({
                "Rib Cage of The Saint's Corpse"
            })
        end
        
        if Xenon:HasShiny() ~= false then
            print("Has Rib Shiny")
            repeat
                task.wait()
            until (
                Xenon:HasShiny() == false or
                Info.State["RibFarming"] == false or
                table.find(
                    Info.Table["SelectedShinys"],
                    Xenon:HasShiny()
                ) == nil
            )
        end

        --if Xenon:HasStand() == false then
            print("Does not have Rib Stand")

            if Player.CharacterSkillTree["Worthiness V"].Value == false then
                Xenon:Stats()
                print("Done Rib Stats")
            end

            if Xenon:IsStandSummoned() == false then
                repeat
                    task.wait()
                    Xenon:GetRemoteFunction():InvokeServer("ToggleStand", "Toggle")
                until Xenon:IsStandSummoned() == true

                if table.find(
                    Info.Table["SelectedRibStands"],
                    Xenon:HasStand()
                ) == nil then
                    print(`Rib items: {Xenon:CountItem("Rib Cage of The Saint's Corpse")}`)
                    Xenon:UseRib()
                    print(`{table.unpack(Info.Table["SelectedRibStands"])}, {Xenon:HasStand()}`)
                    table.foreach(Info.Table["SelectedRibStands"], print)
                    print("Using Rib")
                    
                    print("Waiting for Rib Stand")
                end

                repeat
                    task.wait()
                until Xenon:HasStand() ~= false and Xenon:IsStandSummoned() == true
                print("Got Rib Stand--")
            end

            if Xenon:IsStandSummoned() == true then
                print("Rib Stand is summoned")
                if table.find(
                    Info.Table["SelectedRibStands"], Xenon:HasStand()
                ) then
                    print("Has Rib Stand")
                    Xenon:SendWebhook(Info.String["Webhook"], `{Player.Name} obtained the following stand from a Ribcage: **{Xenon:HasStand()}**!`, "Obtained a wanted stand!")
    
                    repeat
                        task.wait()
                    until (
                        Info.State["RibFarming"] == false or
                        table.find(
                            Info.Table["SelectedRibStands"],
                            Xenon:HasStand()
                        ) == nil
                    )
                end

                repeat
                    task.wait()
                    Xenon:GetRemoteFunction():InvokeServer("ToggleStand", "Toggle")
                until Xenon:IsStandSummoned() == false
                print("Rib Stand is no longer summoned")
            end
        --end

        task.wait()
    end

    Xenon:Teleport(OldPosition)
end)

StandfarmContainer:Toggle("Shiny Farm (unfinished", Info.State["ShinyFarming"], function(State)
end)

TaskSpawn(function()
    for _, Stand in Info.Table["AllArrowStands"] do
        StandContainer:Toggle(Stand, (table.find(Info.Table["SelectedStands"], Stand) ~= nil and true or false), function()
            if table.find(Info.Table["SelectedStands"], Stand) == nil then
                table.insert(Info.Table["SelectedStands"], Stand)
            else
                table.remove(Info.Table["SelectedStands"], table.find(Info.Table["SelectedStands"], Stand))
            end
        end)

        task.wait()
    end
end)

TaskSpawn(function()
    for _, Stand in Info.Table["AllRibStands"] do
        RibStandContainer:Toggle(Stand, (table.find(Info.Table["SelectedRibStands"], Stand) ~= nil and true or false), function()
            if table.find(Info.Table["SelectedRibStands"], Stand) == nil then
                table.insert(Info.Table["SelectedRibStands"], Stand)
            else
                table.remove(Info.Table["SelectedRibStands"], table.find(Info.Table["SelectedRibStands"], Stand))
            end
        end)

        task.wait()
    end
end)

TaskSpawn(function()
    for _, Stand in Info.Table["AllShinys"] do
        RibStandContainer:Toggle(Stand, (table.find(Info.Table["SelectedShinys"], Stand) ~= nil and true or false), function()
            if table.find(Info.Table["SelectedShinys"], Stand) == nil then
                table.insert(Info.Table["SelectedShinys"], Stand)
            else
                table.remove(Info.Table["SelectedShinys"], table.find(Info.Table["SelectedRibStands"], Stand))
            end
        end)

        task.wait()
    end
end)
--[[ jus saving these for when auto stw
if Backpack:FindFirstChild("DIO’s Headband") then end
if Backpack:FindFirstChild("Stand Virus Capsule") then end
]]