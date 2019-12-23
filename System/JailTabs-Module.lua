return function()
    local TabsLib = loadstring(game:HttpGet("https://pastebin.com/raw/F4647K32",true))()

    local K = game:GetService("Players").LocalPlayer
    local O = K.Character.HumanoidRootPart
    local N = K.Character.Humanoid
    local W = game:GetService("RunService").Stepped
    local Mouse = K:GetMouse()
    script.Name = "JailTabs"

    K.CharacterAdded:Connect(function(CCI)
        O = CCI:WaitForChild("HumanoidRootPart")
        N = CCI:WaitForChild("Humanoid")
    end)

    function Notify(MessageText,Time)
        if game.CoreGui:FindFirstChild("Notification") then
            local NotificationOld = game.CoreGui:FindFirstChild("Notification")
            local Close = NotificationOld:WaitForChild("Close")
            local Loading = NotificationOld:WaitForChild("NotificationLoading")
            local Closing = NotificationOld:WaitForChild("NotificationClosing")
            if Loading.Value then
                game.CoreGui:FindFirstChild("Notification"):Remove()
            elseif Closing.Value then
                repeat wait() until not game.CoreGui:FindFirstChild("Notification")
            else
                Close:Fire()
                repeat wait() until not game.CoreGui:FindFirstChild("Notification")
            end
        end
        local Notification = Instance.new("ScreenGui",game.CoreGui)
        Notification.Name = "Notification"
        local NotificationClosing = Instance.new("BoolValue",Notification)
        NotificationClosing.Name = "NotificationClosing"
        local NotificationLoading = Instance.new("BoolValue",Notification)
        NotificationLoading.Name = "NotificationLoading"
        NotificationLoading.Value = true
        local Main = Instance.new("Frame", Notification)
        Main.Name = "MainFrame"
        Main.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
        Main.BorderSizePixel = 0
        Main.Position = UDim2.new(1, 5, 0, 15)
        Main.Size = UDim2.new(0, 330, 0, 100)
        local Close = Instance.new("BindableEvent",Notification)
        Close.Name = "Close"
        Close.Event:Connect(function()
            if NotificationClosing.Value == false and NotificationLoading.Value == false then
                NotificationClosing.Value = true
                if Notification.Parent ~= nil then
                    Main:TweenPosition(UDim2.new(1, 5, 0, 15), "Out", "Sine", 0.5)
                    wait(0.5)
                    if Notification.Parent ~= nil then
                        Notification:Remove()
                    end
                end
            end
        end)
        local Title = Instance.new("TextLabel", Main)
        Title.Name = "Title"
        Title.BackgroundColor3 = Color3.new(0, 0, 0)
        Title.BackgroundTransparency = 0.89999997615814
        Title.Size = UDim2.new(1, 0, 0, 30)
        Title.Font = Enum.Font.SourceSansSemibold
        Title.Text = "JailTabs"
        Title.TextColor3 = Color3.new(1, 1, 1)
        Title.BorderSizePixel = 0
        Title.TextSize = 17
        local Message = Instance.new("TextLabel", Main)
        Message.Name = "Message"
        Message.BackgroundColor3 = Color3.new(0, 0, 0)
        Message.BackgroundTransparency = 1
        Message.Position = UDim2.new(0, 0, 0, 30)
        Message.Size = UDim2.new(1, 0, 1, -30)
        Message.Font = Enum.Font.SourceSans
        Message.Text = MessageText
        Message.TextColor3 = Color3.new(1, 1, 1)
        Message.BorderSizePixel = 0
        Message.TextSize = 16
        local SoundEffect = Instance.new("Sound",Notification)
        SoundEffect.SoundId = "rbxassetid://578970639"
        SoundEffect.Volume = 10
        spawn(function()
            wait(0.1)
            Main:TweenPosition(UDim2.new(1, -335, 0, 15), "Out", "Sine", 0.5)
            SoundEffect:Play()
            wait(0.5)
            if Notification.Parent ~= nil then
                NotificationLoading.Value = false
                wait(Time or 5)
                if Notification.Parent ~= nil then
                    NotificationLoading.Value = false
                    Close:Fire()
                end
            end
        end)
    end

    TabsLib.options.underlinecolor = "rainbow"
    local Guns = TabsLib:CreateWindow("Guns")
    Guns:Button("Infinite Ammo", function()
        local Tables = {}
        for _,oT in pairs((getreg or debug.getregistry)()) do
            if typeof(oT) == "table" then
                table.insert(Tables,oT)
            end
        end
        for _,o in pairs(Tables) do
            pcall(function()
                if o.Pistol ~= nil then
                    local Gun = o.Pistol
                    Gun.MagSize = math.huge
                    Gun.FireAuto = true
                    Gun.FireFreq = 5000
                    Gun.BulletSpread = 0
                    Gun.BulletSpeed = 5000
                end
                if o.Shotgun ~= nil then
                    local Gun = o.Shotgun
                    Gun.MagSize = math.huge
                    Gun.FireAuto = true
                    Gun.FireFreq = 5000
                    Gun.BulletSpread = 0
                    Gun.BulletSpeed = 5000
                end
                if o.Rifle ~= nil then
                    local Gun = o.Rifle
                    Gun.MagSize = math.huge
                    Gun.FireAuto = true
                    Gun.FireFreq = 5000
                    Gun.BulletSpread = 0
                    Gun.BulletSpeed = 5000
                end
                if o.AK47 ~= nil then
                    local Gun = o.AK47
                    Gun.MagSize = math.huge
                    Gun.FireAuto = true
                    Gun.FireFreq = 5000
                    Gun.BulletSpread = 0
                    Gun.BulletSpeed = 5000
                end
                if o.Uzi ~= nil then
                    local Gun = o.Uzi
                    Gun.MagSize = math.huge
                    Gun.FireAuto = true
                    Gun.FireFreq = 5000
                    Gun.BulletSpread = 0
                    Gun.BulletSpeed = 5000
                end
            end)
        end
        Notify("Got Infinite Ammo",5)
    end)

    local Pistol = false
    Guns:Button("Get Pistol", function()
        Pistol = true
        local Old_Data = {}
        local hit = game:GetService('Players').LocalPlayer.Character.Head.Position + Vector3.new(0,2,0)
        local a = Instance.new('Part', workspace)
        a.Anchored = true
        a.Position = hit
        a.Size = Vector3.new(2,2,2)
        a.CanCollide = false
        pcall(function()
            for i, v in pairs(game:GetService('Workspace').Givers:GetChildren()) do
                if v.Name == 'Station' then
                    for a, b in pairs(v:GetChildren()) do
                        if b:IsA('StringValue') and b.Value == 'Pistol' then
                            Old_Data.CFrame = v.CFrame
                            Old_Data.Size = v.Size
                            v.Size = Vector3.new(3,3,3)
                            v.CFrame = CFrame.new(hit)
                            Notify("Got Pistol",5)
                            wait(7.5)
                            v.Size = Old_Data.Size
                            v.CFrame = Old_Data.CFrame
                            break
                        end
                    end
                end
            end
        end)
        a:Remove()
        Pistol = false
    end)
    local Shotgun = false
    Guns:Button("Get Shotgun", function()
        Shotgun = true
        local Old_Data = {}
        local hit = game:GetService('Players').LocalPlayer.Character.Head.Position + Vector3.new(0,2,0)
        local a = Instance.new('Part', workspace)
        a.Anchored = true
        a.Position = hit
        a.Size = Vector3.new(2,2,2)
        a.CanCollide = false
        pcall(function()
            for i, v in pairs(game:GetService('Workspace').Givers:GetChildren()) do
                if v.Name == 'Station' then
                    for a, b in pairs(v:GetChildren()) do
                        if b:IsA('StringValue') and b.Value == 'Shotgun' then
                            Old_Data.CFrame = v.CFrame
                            Old_Data.Size = v.Size
                            v.Size = Vector3.new(3,3,3)
                            v.CFrame = CFrame.new(hit)
                            Notify("Got Shotgun",5)
                            wait(7.5)
                            v.Size = Old_Data.Size
                            v.CFrame = Old_Data.CFrame
                            break
                        end
                    end
                end
            end
        end)
        a:Remove()
        Shotgun = false
    end)
    local SwatRifle = false
    Guns:Button("Get Swat Rifle", function()
        SwatRifle = true
        local Old_Data = {}
        local hit = game:GetService('Players').LocalPlayer.Character.Head.Position + Vector3.new(0,2,0)
        local a = Instance.new('Part', workspace)
        a.Anchored = true
        a.Position = hit
        a.Size = Vector3.new(2,2,2)
        a.CanCollide = false
        pcall(function()
            for i, v in pairs(game:GetService('Workspace').Givers:GetChildren()) do
                if v.Name == 'Station' then
                    for a, b in pairs(v:GetChildren()) do
                        if b:IsA('StringValue') and b.Value == 'RifleSWAT' then
                            Old_Data.CFrame = v.CFrame
                            Old_Data.Size = v.Size
                            v.Size = Vector3.new(3,3,3)
                            v.CFrame = CFrame.new(hit)
                            Notify("Got Swat Rifle",5)
                            wait(7.5)
                            v.Size = Old_Data.Size
                            v.CFrame = Old_Data.CFrame
                            break
                        end
                    end
                end
            end
        end)
        a:Remove()
        SwatRifle = false
    end)

    local FlySpeed = 50
    function GetVehicleMain()
        local Name = game:GetService("Players").LocalPlayer.Name
        for _,Vehicles in pairs(workspace.Vehicles:GetChildren()) do
            if Vehicles:FindFirstChild("Seat") and Vehicles:FindFirstChild("Engine") then
                if Vehicles.Seat.PlayerName.Value == Name then
                    return Vehicles.Engine, false
                end
            elseif Vehicles:FindFirstChild("Seat") and Vehicles:FindFirstChild("Model") then
                if Vehicles.Seat.PlayerName.Value == Name then
                    if Vehicles.Model:FindFirstChild("Body") then
                        return Vehicles.Model.Body, true
                    end
                end
            end
        end	
    end
    function FlyPart(Part,IsPlane)
        local Storage = Instance.new("Folder")
        Storage.Name = "Storage"
        for _,Object in pairs(Part:GetChildren()) do
            if Object:IsA("BodyGyro") then
                Object.Parent = Storage
            end
        end
        local FlyPosition = Instance.new("BodyPosition",Part)
        FlyPosition.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        FlyPosition.Name = "Position"
        local FlyRotate = Instance.new("BodyGyro",Part)
        FlyRotate.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
        FlyRotate.Name = "Rotate"
        workspace.CurrentCamera.CameraSubject = Part
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local Plus = 0
        local MT = Mouse.KeyDown:Connect(function(key)
            if key == "w" then
                if IsPlane then
                    Plus = FlySpeed
                else
                    Plus = tonumber("-"..tostring(FlySpeed))
                end
            elseif key == "s" then
                if IsPlane then
                    Plus = tonumber("-"..tostring(FlySpeed))
                else
                    Plus = FlySpeed
                end
            end
        end)
        Mouse.KeyUp:Connect(function(key)
            if key == "w" then
                Plus = 0
            elseif key == "s" then
                Plus = 0
            end
        end)
        local Data = {}
        Data.IsRunning = true
        Data.Part = Part
        Data.Storage = Storage
        Data.MT = MT
        coroutine.resume(coroutine.create(function()
            repeat
                local CamC = workspace.CurrentCamera.CFrame
                local PPart = Part.Position
                local Mag = (PPart - CamC.p).Magnitude
                FlyPosition.Position = (CamC*CFrame.new(0,0,tonumber("-" .. tostring(Mag))+Plus)).p + Vector3.new(0,0.2225,0)
                FlyRotate.CFrame = CamC
                wait()
            until Data.IsRunning == false or workspace.CurrentCamera.CameraSubject ~= Part
            FlyPosition:Remove()
            FlyRotate:Remove()
            for _,BG in pairs(Data.Storage:GetChildren()) do
                BG.Parent = Data.Part
            end
            Data.MT:Disconnect()
            Data.Storage:Remove()
        end))
        return Data
    end

    _G.TPC = false

    local Movement = TabsLib:CreateWindow("Movement")
    Movement:Toggle("Speed", {flag = "SpeedHacks"})
    Movement:Slider("Current Speed", {flag = "SpeedCR", min = 20, max = 100},function() end)
    Movement:Toggle("Gravity", {flag = "Gravity"})
    Movement:Slider("Current Gravity", {flag = "GravityCR", min = 25, max = 99},function() end)
    Movement:Toggle("NoClip", {flag = "NoClip"})
    Movement:Toggle("Infinite Jump", {flag = "InfJump"})
    Movement:Button("Vehicle Flight", function()
        if GetVehicleMain() ~= nil then
            Notify("Vehicle Flight Enabled",5)
            local P,IsPlane = GetVehicleMain()
            local FlyObject = FlyPart(P,IsPlane)
            if IsPlane then
                repeat wait() until P.Parent.Parent.Seat.PlayerName.Value ~= game:GetService("Players").LocalPlayer.Name
            else
                repeat wait() until P.Parent.Seat.PlayerName.Value ~= game:GetService("Players").LocalPlayer.Name
            end
            wait(0.1)
            workspace.CurrentCamera.CameraSubject = N
            Notify("Vehicle Flight Disabled",5)
        else
            Notify("Vehicle Not Founded",5)
        end
    end)
    Movement:Slider("Flight Speed", {flag = "SpeedCCR", min = 50, max = 200},function() end)
    W:Connect(function()
        FlySpeed = Movement.flags.SpeedCCR
    end)
    Movement:Button("Infinite Nitro", function()
        if K.PlayerGui.MainGui:FindFirstChild("Nitro") then
            Notify("Got Infinite Nitro",5)
            K.PlayerGui.MainGui.Nitro.Name = "N-i-t-r-o"
            K.PlayerGui.ProductGui.Nitro.Visible = false
            K.PlayerGui.MainGui.Nitro.Visible = false
            for _,GuiObject in pairs(K.PlayerGui.ProductGui.Nitro:GetChildren()) do
                GuiObject.Visible = false
            end
        else
            Notify("You Have Infinite Nitro",5)
        end
    end)

    game:GetService("RunService").RenderStepped:Connect(function()
        if Movement.flags.SpeedHacks then
            if N ~= nil then
                N.WalkSpeed = Movement.flags.SpeedCR
            end
        end
    end)
    W:Connect(function()
        if _G.TPC then
            workspace.Gravity = 0
        elseif Movement.flags.Gravity then
            workspace.Gravity = Movement.flags.GravityCR
        else
            workspace.Gravity = 196.2
        end
    end)
    W:Connect(function()
        if Movement.flags.NoClip then
            if K.Character ~= nil then
                for _,Part in pairs(K.Character:GetDescendants()) do 
                    if Part:IsA("BasePart") then
                        Part.CanCollide = false
                    end
                end
            end
        end
    end)

    Mouse.KeyDown:Connect(function(key)
        if key == " " and Movement.flags.InfJump and N ~= nil then
            N:ChangeState('Jumping')
            wait()
            N:ChangeState('Seated')
        end
    end)

    local Places = {}
    Places.Cage = CFrame.new(-292,27,296)
    Places.Sell = CFrame.new(1768,51,-1792)
    Places.Jewl = CFrame.new(110,118,1305)
    Places.Jewlrob = CFrame.new(125,18,1315)
    Places.Bank = CFrame.new(30,18,790)
    Places.Museum = CFrame.new(1077,135,1233)
    Places.Jetpack = CFrame.new(1367,170,2581)
    Places.Yard = CFrame.new(-1220,18,-1760)
    Places.CrimBase = CFrame.new(-229,18,1596)
    Places.VolcanoBaseTop = CFrame.new(1561,50,-1755)
    Places.VolcanoBaseBottom = CFrame.new(1715,18,-1691)
    Places.PowerPlant = CFrame.new(704,37,2356)
    Places.Helicopter1 = CFrame.new(-1144,57,-1572)
    Places.Helicopter2 = CFrame.new(721,71,1122)
    Places.ControlTower = CFrame.new(94,18,1122)

    coroutine.resume(coroutine.create(function()
        while wait() do
            local BankAdded = false
            if workspace.Banks:FindFirstChildOfClass("Model") then
                local BankMain = workspace.Banks:FindFirstChildOfClass("Model")
                if BankMain:FindFirstChild("Layout") then
                    local BankLayout = BankMain.Layout
                    if BankLayout:FindFirstChildOfClass("Model") then
                        local BankLayoutMain = BankLayout:FindFirstChildOfClass("Model")
                        if BankLayoutMain:FindFirstChild("Money") then
                            Places.BankV = BankLayoutMain.Money.CFrame
                            BankAdded = true
                        end
                    end
                end
            end
            if BankAdded == false then
                Places.BankV = nil
            end
        end
    end))

    local TeleportBypass = {
        Version=1,
        Env={OKStat=Enum.PlaybackState.Playing,Step=game:GetService("RunService").Stepped,Running=false}
    }
    function TeleportBypass:Fire(NewPosition,StudPerSecond)
        if not TeleportBypass.Env.Running then
            if game:GetService("Players").LocalPlayer.Character ~= nil then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    TeleportBypass.Env.Running = true
                    workspace.Camera.CameraType = Enum.CameraType.Scriptable
                    local HumanoidRootPart = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
                    TeleportBypass.TeleportClipBypass = TeleportBypass.Env.Step:Connect(function()
                        Humanoid.PlatformStand = true
                        for _,Part in pairs(Humanoid.Parent:GetDescendants()) do 
                            if Part:IsA("BasePart") then
                                Part.CanCollide = false
                            end
                        end
                    end)
                    _G.TPC = true
                    -- Y
                    local XC = CFrame.new(HumanoidRootPart.CFrame.X,NewPosition.Y,HumanoidRootPart.CFrame.Z)
                    local DFC = game:GetService("Players").LocalPlayer:DistanceFromCharacter(XC.p)
                    local gotoCFrame = game.TweenService:Create(HumanoidRootPart,TweenInfo.new(DFC/StudPerSecond,0,0,0,false,0),{CFrame = XC})
                    gotoCFrame:Play()
                    repeat wait() until gotoCFrame.PlaybackState ~= TeleportBypass.Env.OKStat or HumanoidRootPart == nil or Humanoid.Health == 0
                    -- X
                    local XC = CFrame.new(NewPosition.X,HumanoidRootPart.CFrame.Y,HumanoidRootPart.CFrame.Z)
                    local DFC = game:GetService("Players").LocalPlayer:DistanceFromCharacter(XC.p)
                    local gotoCFrame = game.TweenService:Create(HumanoidRootPart,TweenInfo.new(DFC/StudPerSecond,0,0,0,false,0),{CFrame = XC})
                    gotoCFrame:Play()
                    repeat wait() until gotoCFrame.PlaybackState ~= TeleportBypass.Env.OKStat or HumanoidRootPart == nil or Humanoid.Health == 0
                    -- Z
                    local XC = CFrame.new(HumanoidRootPart.CFrame.X,HumanoidRootPart.CFrame.Y,NewPosition.Z)
                    local DFC = game:GetService("Players").LocalPlayer:DistanceFromCharacter(XC.p)
                    local gotoCFrame = game.TweenService:Create(HumanoidRootPart,TweenInfo.new(DFC/StudPerSecond,0,0,0,false,0),{CFrame = XC})
                    gotoCFrame:Play()
                    repeat wait() until gotoCFrame.PlaybackState ~= TeleportBypass.Env.OKStat or HumanoidRootPart == nil or Humanoid.Health == 0
                    TeleportBypass.TeleportClipBypass:Disconnect()
                    TeleportBypass.TeleportClipBypass = nil
                    _G.TPC = false
                    workspace.Camera.CameraType = Enum.CameraType.Custom
                    Humanoid.PlatformStand = false
                    TeleportBypass.Env.Running = false
                end
            end
        end
    end

    local Teleport = TabsLib:CreateWindow("Teleport")
    Teleport:Button("Jewelry Store Top", function()
        Notify("Teleporting to Jewelry Store Top",5)
        TeleportBypass:Fire(Places.Jewl,94)
    end)
    Teleport:Button("Jewelry Store Bottom", function()
        Notify("Teleporting to Jewelry Store Bottom",5)
        TeleportBypass:Fire(Places.Jewlrob,94)
    end)
    Teleport:Button("Museum", function()
        Notify("Teleporting to Museum",5)
        TeleportBypass:Fire(Places.Museum,94)
    end)
    Teleport:Button("Bank", function()
        Notify("Teleporting to Bank",5)
        TeleportBypass:Fire(Places.Bank,94)
    end)
    Teleport:Button("Bank Vault", function()
        Notify("Teleporting to Bank Vault",5)
        TeleportBypass:Fire(Places.BankV,94)
    end)
    Teleport:Button("Power Plant", function()
        Notify("Teleporting to Power Plant",5)
        TeleportBypass:Fire(Places.PowerPlant,94)
    end)
    Teleport:Button("Jetpack", function()
        Notify("Teleporting to Jetpack",5)
        TeleportBypass:Fire(Places.Jetpack,94)
    end)
    Teleport:Button("Volcano Base Top", function()
        Notify("Teleporting to Volcano Base Top",5)
        TeleportBypass:Fire(Places.VolcanoBaseTop,94)
    end)
    Teleport:Button("Volcano Base Bottom", function()
        Notify("Teleporting to Volcano Base Bottom",5)
        TeleportBypass:Fire(Places.VolcanoBaseBottom,94)
    end)
    Teleport:Button("Criminal Base", function()
        Notify("Teleporting to Criminal Base",5)
        TeleportBypass:Fire(Places.CrimBase,94)
    end)
    Teleport:Button("Prison Yard", function()
        Notify("Teleporting to Prison Yard",5)
        TeleportBypass:Fire(Places.Yard,94)
    end)
    Teleport:Button("Helicopter One", function()
        Notify("Teleporting to Helicopter One",5)
        TeleportBypass:Fire(Places.Helicopter1,94)
    end)
    Teleport:Button("Helicopter Two", function()
        Notify("Teleporting to Helicopter Two",5)
        TeleportBypass:Fire(Places.Helicopter2,94)
    end)
    Teleport:Button("Sell All", function()
        Notify("Teleporting to Sell All",5)
        TeleportBypass:Fire(Places.Sell,94)
    end)
    Teleport:Button("Control Tower", function()
        Notify("Teleporting to Control Tower",5)
        TeleportBypass:Fire(Places.ControlTower,94)
    end)
    Teleport:Button("Cage", function()
        Notify("Teleporting to Cage",5)
        TeleportBypass:Fire(Places.Cage,94)
    end)
    function FindPlayer(FindUser)
        local findUser = string.lower(FindUser)
        local inputsize = string.len(findUser)
        for i, Player in pairs(game:GetService("Players"):GetChildren()) do
            local NameLow = string.lower(Player.Name)
            if NameLow:sub(1, inputsize) == findUser:sub(1, inputsize) then
                return Player,true
            end
        end
        return nil,false
    end
    local R_Target, TargetBox = Teleport:SearchBox("Target", {}, function() end)
    Teleport:Button("Teleport To Target",function()
        local Player, InGame = FindPlayer(TargetBox.Text)
        if InGame then
            if Player.Character ~= nil and Player.Character:FindFirstChild("HumanoidRootPart") then
                Notify("Teleporting to "..Player.Name,5)
                TeleportBypass:Fire(Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0),94)
            end
        else
            Notify("Player Not Founded",5)
        end
    end)

    local Other = TabsLib:CreateWindow("Other")
    Other:Button("Remove Doors & Lasers", function()
        for _,CurrentObject in pairs(workspace:GetDescendants()) do
            if CurrentObject:IsA("BasePart") then
                local CurrentObject_Data = {}
                CurrentObject_Data.IsRemoved = false
                CurrentObject_Data.BC = CurrentObject.BrickColor
                CurrentObject_Data.BC_List = {BrickColor.new("Persimmon"),BrickColor.new("Dusty Rose"),BrickColor.new("Terra Cotta")}
                if CurrentObject.Material == Enum.Material.Neon and CurrentObject.Name ~= "Building" then
                    for _,Color in pairs(CurrentObject_Data.BC_List) do
                        if CurrentObject_Data.BC == Color and CurrentObject_Data.IsRemoved == false then
                            CurrentObject_Data.IsRemoved = true
                            CurrentObject:Remove()
                        end
                    end
                end
                if CurrentObject_Data.IsRemoved == false and CurrentObject.Name == "SewerHatch" then
                    CurrentObject_Data.IsRemoved = true
                    CurrentObject:Remove()
                end
            elseif CurrentObject:IsA("Model") then
                local CurrentObject_Data = {}
                CurrentObject_Data.IsRemoved = false
                if CurrentObject.Name == "SlideDoor" or CurrentObject.Name == "SwingDoor" or CurrentObject.Name == "Door" then
                    if workspace:FindFirstChild("Plane") and not CurrentObject:IsDescendantOf(workspace.Plane) then
                        -- Pass
                    else
                        CurrentObject_Data.IsRemoved = true
                        CurrentObject:Remove()
                    end
                end
            end
        end
        Notify("Removed Doors & Lasers")
    end)
    local ESPScreen = Instance.new("ScreenGui",game.CoreGui)
    ESPScreen.Name = game:GetService("HttpService"):GenerateGUID(false)
    local Tags = {}
    Other:Toggle("ESP", {flag = "ESP"})
    W:Connect(function()
        for _,NameTag_Current in pairs(Tags) do
            NameTag_Current.Enabled = Other.flags.ESP
        end
    end)
    for _,NewPlayer in pairs(game:GetService("Players"):GetPlayers()) do
        coroutine.resume(coroutine.create(function()
            if NewPlayer.Character ~= nil then
                if NewPlayer.Character:FindFirstChild("Head") then
                    local CHead = NewPlayer.Character.Head
                    local NameTag = Instance.new("BillboardGui",ESPScreen)
                    table.insert(Tags,NameTag)
                    NameTag.Adornee = CHead
                    NameTag.Size = UDim2.new(0,700,0,40)
                    NameTag.AlwaysOnTop = true
                    NameTag.Enabled = Other.flags.ESP
                    NameTag.StudsOffset = Vector3.new(0,2,0)
                    local NameTagText = Instance.new("TextLabel",NameTag)
                    NameTagText.Size = UDim2.new(1,0,1,0)
                    NameTagText.TextScaled = true
                    NameTag.Name = NewPlayer.Name
                    NameTagText.Text = NewPlayer.Name
                    NameTagText.Font = Enum.Font.ArialBold
                    NameTagText.BackgroundTransparency = 1
                    NameTagText.TextStrokeTransparency = 0
                    NameTagText.TextColor3 = Color3.new(NewPlayer.TeamColor.r,NewPlayer.TeamColor.g,NewPlayer.TeamColor.b)
                    repeat
                        NameTagText.TextColor3 = Color3.new(NewPlayer.TeamColor.r,NewPlayer.TeamColor.g,NewPlayer.TeamColor.b)
                        wait()
                    until NameTag.Adornee == nil
                    NameTag:Remove()
                end
            end
        end))
        NewPlayer.CharacterAdded:Connect(function(Character)
            wait(1.25)
            local CHead = Character.Head
            local NameTag = Instance.new("BillboardGui",ESPScreen)
            table.insert(Tags,NameTag)
            NameTag.Adornee = CHead
            NameTag.Size = UDim2.new(0,700,0,40)
            NameTag.AlwaysOnTop = true
            NameTag.Enabled = Other.flags.ESP
            NameTag.StudsOffset = Vector3.new(0,2,0)
            local NameTagText = Instance.new("TextLabel",NameTag)
            NameTagText.Size = UDim2.new(1,0,1,0)
            NameTagText.TextScaled = true
            NameTag.Name = NewPlayer.Name
            NameTagText.Text = NewPlayer.Name
            NameTagText.Font = Enum.Font.ArialBold
            NameTagText.BackgroundTransparency = 1
            NameTagText.TextStrokeTransparency = 0
            NameTagText.TextColor3 = Color3.new(NewPlayer.TeamColor.r,NewPlayer.TeamColor.g,NewPlayer.TeamColor.b)
            repeat
                NameTagText.TextColor3 = Color3.new(NewPlayer.TeamColor.r,NewPlayer.TeamColor.g,NewPlayer.TeamColor.b)
                wait()
            until NameTag.Adornee == nil
            NameTag:Remove()
        end)
    end
    game:GetService("Players").PlayerAdded:Connect(function(NewPlayer)
        NewPlayer.CharacterAdded:Connect(function(Character)
            wait(1.25)
            local CHead = Character.Head
            local NameTag = Instance.new("BillboardGui",ESPScreen)
            table.insert(Tags,NameTag)
            NameTag.Adornee = CHead
            NameTag.Size = UDim2.new(0,700,0,40)
            NameTag.AlwaysOnTop = true
            NameTag.Enabled = Other.flags.ESP
            NameTag.StudsOffset = Vector3.new(0,2,0)
            local NameTagText = Instance.new("TextLabel",NameTag)
            NameTagText.Size = UDim2.new(1,0,1,0)
            NameTagText.TextScaled = true
            NameTag.Name = NewPlayer.Name
            NameTagText.Text = NewPlayer.Name
            NameTagText.Font = Enum.Font.ArialBold
            NameTagText.BackgroundTransparency = 1
            NameTagText.TextStrokeTransparency = 0
            NameTagText.TextColor3 = Color3.new(NewPlayer.TeamColor.r,NewPlayer.TeamColor.g,NewPlayer.TeamColor.b)
            repeat
                NameTagText.TextColor3 = Color3.new(NewPlayer.TeamColor.r,NewPlayer.TeamColor.g,NewPlayer.TeamColor.b)
                wait()
            until NameTag.Adornee == nil
            NameTag:Remove()
        end)
    end)
    Other:Toggle("Inf Donuts", {flag = "InfDonuts"})
    W:Connect(function()
        if Other.flags.InfDonuts and O ~= nil then
            game:GetService('Workspace').TouchTrigger.Donut.Position = O.Position
        else
            game:GetService('Workspace').TouchTrigger.Donut.Position = Vector3.new(264,19.7678413,-1770.5)
        end
    end)
    Other:Toggle("Auto Arrest & Eject", {flag = "AutoAE"})
    local ActionButton = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CircleAction
    local VIM = game:GetService('VirtualInputManager')
    coroutine.resume(coroutine.create(function()
        while wait() do
            if ActionButton.Visible and Other.flags.AutoAE then
                if ActionButton.Help.Text == "Eject" or ActionButton.Help.Text == "Arrest" then
                    if ActionButton.Hold.Visible then
                        VIM:SendKeyEvent(true, "E", false, game)
                        repeat wait() until ActionButton.Visible == false or ActionButton.OuterFull.Visible == true or Other.flags.AutoAE == false
                        VIM:SendKeyEvent(false, "E", false, game)
                    else
                        VIM:SendKeyEvent(true, "E", false, game)
                        wait()
                        VIM:SendKeyEvent(false, "E", false, game)
                    end
                end
            end
        end
    end))
    Notify("JailTabs Has Loaded Successfully",5)
end
