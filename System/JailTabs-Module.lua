local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/JailTabsCreator/JailTabs/master/System/Tabs-Library.lua",true))()local b=game:GetService("Players").LocalPlayer;local c=b.Character.HumanoidRootPart;local d=b.Character.Humanoid;local e=game:GetService("RunService").Stepped;local f=b:GetMouse()b.CharacterAdded:Connect(function(g)c=g:WaitForChild("HumanoidRootPart")d=g:WaitForChild("Humanoid")end)function Notify(h,i)if game.CoreGui:FindFirstChild("Notification")then local j=game.CoreGui:FindFirstChild("Notification")local k=j:WaitForChild("Close")local l=j:WaitForChild("NotificationLoading")local m=j:WaitForChild("NotificationClosing")if l.Value then game.CoreGui:FindFirstChild("Notification"):Remove()elseif m.Value then repeat wait()until not game.CoreGui:FindFirstChild("Notification")else k:Fire()repeat wait()until not game.CoreGui:FindFirstChild("Notification")end end;local n=Instance.new("ScreenGui",game.CoreGui)n.Name="Notification"local o=Instance.new("BoolValue",n)o.Name="NotificationClosing"local p=Instance.new("BoolValue",n)p.Name="NotificationLoading"p.Value=true;local q=Instance.new("Frame",n)q.Name="MainFrame"q.BackgroundColor3=Color3.new(0.156863,0.156863,0.156863)q.BorderSizePixel=0;q.Position=UDim2.new(1,5,0,15)q.Size=UDim2.new(0,330,0,100)local k=Instance.new("BindableEvent",n)k.Name="Close"k.Event:Connect(function()if o.Value==false and p.Value==false then o.Value=true;if n.Parent~=nil then q:TweenPosition(UDim2.new(1,5,0,15),"Out","Sine",0.5)wait(0.5)if n.Parent~=nil then n:Remove()end end end end)local r=Instance.new("TextLabel",q)r.Name="Title"r.BackgroundColor3=Color3.new(0,0,0)r.BackgroundTransparency=0.9;r.Size=UDim2.new(1,0,0,30)r.Font=Enum.Font.SourceSansSemibold;r.Text="JailTabs"r.TextColor3=Color3.new(1,1,1)r.BorderSizePixel=0;r.TextSize=17;local s=Instance.new("TextLabel",q)s.Name="Message"s.BackgroundColor3=Color3.new(0,0,0)s.BackgroundTransparency=1;s.Position=UDim2.new(0,0,0,30)s.Size=UDim2.new(1,0,1,-30)s.Font=Enum.Font.SourceSans;s.Text=h;s.TextColor3=Color3.new(1,1,1)s.BorderSizePixel=0;s.TextSize=16;local t=Instance.new("Sound",n)t.SoundId="rbxassetid://578970639"t.Volume=10;spawn(function()wait(0.1)q:TweenPosition(UDim2.new(1,-335,0,15),"Out","Sine",0.5)t:Play()wait(0.5)if n.Parent~=nil then p.Value=false;wait(i or 5)if n.Parent~=nil then p.Value=false;k:Fire()end end end)end;a.options.underlinecolor="rainbow"local u=a:CreateWindow("Guns")u:Button("Infinite Ammo",function()local v={}for w,x in pairs(getreg or debug.getregistry())do if typeof(x)=="table"then table.insert(v,x)end end;for w,y in pairs(v)do pcall(function()if y.Pistol~=nil then local z=y.Pistol;z.MagSize=math.huge;z.FireAuto=true;z.FireFreq=5000;z.BulletSpread=0;z.BulletSpeed=5000 end;if y.Shotgun~=nil then local z=y.Shotgun;z.MagSize=math.huge;z.FireAuto=true;z.FireFreq=5000;z.BulletSpread=0;z.BulletSpeed=5000 end;if y.Rifle~=nil then local z=y.Rifle;z.MagSize=math.huge;z.FireAuto=true;z.FireFreq=5000;z.BulletSpread=0;z.BulletSpeed=5000 end;if y.AK47~=nil then local z=y.AK47;z.MagSize=math.huge;z.FireAuto=true;z.FireFreq=5000;z.BulletSpread=0;z.BulletSpeed=5000 end;if y.Uzi~=nil then local z=y.Uzi;z.MagSize=math.huge;z.FireAuto=true;z.FireFreq=5000;z.BulletSpread=0;z.BulletSpeed=5000 end end)end;Notify("Got Infinite Ammo",5)end)local A=false;u:Button("Get Pistol",function()A=true;local B={}local C=game:GetService('Players').LocalPlayer.Character.Head.Position+Vector3.new(0,2,0)local D=Instance.new('Part',workspace)D.Anchored=true;D.Position=C;D.Size=Vector3.new(2,2,2)D.CanCollide=false;pcall(function()for E,F in pairs(game:GetService('Workspace').Givers:GetChildren())do if F.Name=='Station'then for D,G in pairs(F:GetChildren())do if G:IsA('StringValue')and G.Value=='Pistol'then B.CFrame=F.CFrame;B.Size=F.Size;F.Size=Vector3.new(3,3,3)F.CFrame=CFrame.new(C)Notify("Got Pistol",5)wait(7.5)F.Size=B.Size;F.CFrame=B.CFrame;break end end end end end)D:Remove()A=false end)local H=false;u:Button("Get Shotgun",function()H=true;local B={}local C=game:GetService('Players').LocalPlayer.Character.Head.Position+Vector3.new(0,2,0)local D=Instance.new('Part',workspace)D.Anchored=true;D.Position=C;D.Size=Vector3.new(2,2,2)D.CanCollide=false;pcall(function()for E,F in pairs(game:GetService('Workspace').Givers:GetChildren())do if F.Name=='Station'then for D,G in pairs(F:GetChildren())do if G:IsA('StringValue')and G.Value=='Shotgun'then B.CFrame=F.CFrame;B.Size=F.Size;F.Size=Vector3.new(3,3,3)F.CFrame=CFrame.new(C)Notify("Got Shotgun",5)wait(7.5)F.Size=B.Size;F.CFrame=B.CFrame;break end end end end end)D:Remove()H=false end)local I=false;u:Button("Get Swat Rifle",function()I=true;local B={}local C=game:GetService('Players').LocalPlayer.Character.Head.Position+Vector3.new(0,2,0)local D=Instance.new('Part',workspace)D.Anchored=true;D.Position=C;D.Size=Vector3.new(2,2,2)D.CanCollide=false;pcall(function()for E,F in pairs(game:GetService('Workspace').Givers:GetChildren())do if F.Name=='Station'then for D,G in pairs(F:GetChildren())do if G:IsA('StringValue')and G.Value=='RifleSWAT'then B.CFrame=F.CFrame;B.Size=F.Size;F.Size=Vector3.new(3,3,3)F.CFrame=CFrame.new(C)Notify("Got Swat Rifle",5)wait(7.5)F.Size=B.Size;F.CFrame=B.CFrame;break end end end end end)D:Remove()I=false end)local J=50;function GetVehicleMain()local K=game:GetService("Players").LocalPlayer.Name;for w,L in pairs(workspace.Vehicles:GetChildren())do if L:FindFirstChild("Seat")and L:FindFirstChild("Engine")then if L.Seat.PlayerName.Value==K then return L.Engine,false end elseif L:FindFirstChild("Seat")and L:FindFirstChild("Model")then if L.Seat.PlayerName.Value==K then if L.Model:FindFirstChild("Body")then return L.Model.Body,true end end end end end;function FlyPart(M,N)local O=Instance.new("Folder")O.Name="Storage"for w,P in pairs(M:GetChildren())do if P:IsA("BodyGyro")then P.Parent=O end end;local Q=Instance.new("BodyPosition",M)Q.MaxForce=Vector3.new(math.huge,math.huge,math.huge)Q.Name="Position"local R=Instance.new("BodyGyro",M)R.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)R.Name="Rotate"workspace.CurrentCamera.CameraSubject=M;local f=game:GetService("Players").LocalPlayer:GetMouse()local S=0;local T=f.KeyDown:Connect(function(U)if U=="w"then if N then S=J else S=tonumber("-"..tostring(J))end elseif U=="s"then if N then S=tonumber("-"..tostring(J))else S=J end end end)f.KeyUp:Connect(function(U)if U=="w"then S=0 elseif U=="s"then S=0 end end)local V={}V.IsRunning=true;V.Part=M;V.Storage=O;V.MT=T;coroutine.resume(coroutine.create(function()repeat local W=workspace.CurrentCamera.CFrame;local X=M.Position;local Y=(X-W.p).Magnitude;Q.Position=(W*CFrame.new(0,0,tonumber("-"..tostring(Y))+S)).p+Vector3.new(0,0.2225,0)R.CFrame=W;wait()until V.IsRunning==false or workspace.CurrentCamera.CameraSubject~=M;Q:Remove()R:Remove()for w,Z in pairs(V.Storage:GetChildren())do Z.Parent=V.Part end;V.MT:Disconnect()V.Storage:Remove()end))return V end;_G.TPC=false;local _=a:CreateWindow("Movement")_:Toggle("Speed",{flag="SpeedHacks"})_:Slider("Current Speed",{flag="SpeedCR",min=20,max=100},function()end)_:Toggle("Gravity",{flag="Gravity"})_:Slider("Current Gravity",{flag="GravityCR",min=25,max=99},function()end)_:Toggle("NoClip",{flag="NoClip"})_:Toggle("Infinite Jump",{flag="InfJump"})_:Button("Vehicle Flight",function()if GetVehicleMain()~=nil then Notify("Vehicle Flight Enabled",5)local a0,N=GetVehicleMain()local a1=FlyPart(a0,N)if N then repeat wait()until a0.Parent.Parent.Seat.PlayerName.Value~=game:GetService("Players").LocalPlayer.Name else repeat wait()until a0.Parent.Seat.PlayerName.Value~=game:GetService("Players").LocalPlayer.Name end;wait(0.1)workspace.CurrentCamera.CameraSubject=d;Notify("Vehicle Flight Disabled",5)else Notify("Vehicle Not Founded",5)end end)_:Slider("Flight Speed",{flag="SpeedCCR",min=50,max=200},function()end)e:Connect(function()J=_.flags.SpeedCCR end)_:Button("Infinite Nitro",function()if b.PlayerGui.MainGui:FindFirstChild("Nitro")then Notify("Got Infinite Nitro",5)b.PlayerGui.MainGui.Nitro.Name="N-i-t-r-o"b.PlayerGui.ProductGui.Nitro.Visible=false;b.PlayerGui.MainGui.Nitro.Visible=false;for w,a2 in pairs(b.PlayerGui.ProductGui.Nitro:GetChildren())do a2.Visible=false end else Notify("You Have Infinite Nitro",5)end end)game:GetService("RunService").RenderStepped:Connect(function()if _.flags.SpeedHacks then if d~=nil then d.WalkSpeed=_.flags.SpeedCR end end end)e:Connect(function()if _G.TPC then workspace.Gravity=0 elseif _.flags.Gravity then workspace.Gravity=_.flags.GravityCR else workspace.Gravity=196.2 end end)e:Connect(function()if _.flags.NoClip then if b.Character~=nil then for w,M in pairs(b.Character:GetDescendants())do if M:IsA("BasePart")then M.CanCollide=false end end end end end)f.KeyDown:Connect(function(U)if U==" "and _.flags.InfJump and d~=nil then d:ChangeState('Jumping')wait()d:ChangeState('Seated')end end)local a3={}a3.Cage=CFrame.new(-292,27,296)a3.Sell=CFrame.new(1768,51,-1792)a3.Jewl=CFrame.new(110,118,1305)a3.Jewlrob=CFrame.new(125,18,1315)a3.Bank=CFrame.new(30,18,790)a3.Museum=CFrame.new(1077,135,1233)a3.Jetpack=CFrame.new(1367,170,2581)a3.Yard=CFrame.new(-1220,18,-1760)a3.CrimBase=CFrame.new(-229,18,1596)a3.VolcanoBaseTop=CFrame.new(1561,50,-1755)a3.VolcanoBaseBottom=CFrame.new(1715,18,-1691)a3.PowerPlant=CFrame.new(704,37,2356)a3.Helicopter1=CFrame.new(-1144,57,-1572)a3.Helicopter2=CFrame.new(721,71,1122)a3.ControlTower=CFrame.new(94,18,1122)coroutine.resume(coroutine.create(function()while wait()do local a4=false;if workspace.Banks:FindFirstChildOfClass("Model")then local a5=workspace.Banks:FindFirstChildOfClass("Model")if a5:FindFirstChild("Layout")then local a6=a5.Layout;if a6:FindFirstChildOfClass("Model")then local a7=a6:FindFirstChildOfClass("Model")if a7:FindFirstChild("Money")then a3.BankV=a7.Money.CFrame;a4=true end end end end;if a4==false then a3.BankV=nil end end end))local a8={Version=1,Env={OKStat=Enum.PlaybackState.Playing,Step=game:GetService("RunService").Stepped,Running=false}}function a8:Fire(a9,aa)if not a8.Env.Running then if game:GetService("Players").LocalPlayer.Character~=nil then if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")then a8.Env.Running=true;workspace.Camera.CameraType=Enum.CameraType.Scriptable;local ab=game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local ac=game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")ac.Sit=false;a8.TeleportClipBypass=a8.Env.Step:Connect(function()ac.PlatformStand=true;for w,M in pairs(ac.Parent:GetDescendants())do if M:IsA("BasePart")then M.CanCollide=false end end end)_G.TPC=true;local ad=CFrame.new(ab.CFrame.X,a9.Y,ab.CFrame.Z)local ae=game:GetService("Players").LocalPlayer:DistanceFromCharacter(ad.p)local af=game.TweenService:Create(ab,TweenInfo.new(ae/aa,0,0,0,false,0),{CFrame=ad})af:Play()repeat wait()until af.PlaybackState~=a8.Env.OKStat or ab==nil or ac.Health==0;local ad=CFrame.new(a9.X,ab.CFrame.Y,ab.CFrame.Z)local ae=game:GetService("Players").LocalPlayer:DistanceFromCharacter(ad.p)local af=game.TweenService:Create(ab,TweenInfo.new(ae/aa,0,0,0,false,0),{CFrame=ad})af:Play()repeat wait()until af.PlaybackState~=a8.Env.OKStat or ab==nil or ac.Health==0;local ad=CFrame.new(ab.CFrame.X,ab.CFrame.Y,a9.Z)local ae=game:GetService("Players").LocalPlayer:DistanceFromCharacter(ad.p)local af=game.TweenService:Create(ab,TweenInfo.new(ae/aa,0,0,0,false,0),{CFrame=ad})af:Play()repeat wait()until af.PlaybackState~=a8.Env.OKStat or ab==nil or ac.Health==0;a8.TeleportClipBypass:Disconnect()a8.TeleportClipBypass=nil;workspace.Camera.CameraType=Enum.CameraType.Custom;ac.PlatformStand=false;wait()ab.Anchored=true;ac.Sit=true;wait(0.1)ab.Anchored=false;ac.Sit=false;_G.TPC=false;a8.Env.Running=false end end end end;local ag=a:CreateWindow("Teleport")ag:Button("Jewelry Store Top",function()Notify("Teleporting to Jewelry Store Top",5)a8:Fire(a3.Jewl,94)end)ag:Button("Jewelry Store Bottom",function()Notify("Teleporting to Jewelry Store Bottom",5)a8:Fire(a3.Jewlrob,94)end)ag:Button("Museum",function()Notify("Teleporting to Museum",5)a8:Fire(a3.Museum,94)end)ag:Button("Bank",function()Notify("Teleporting to Bank",5)a8:Fire(a3.Bank,94)end)ag:Button("Bank Vault",function()Notify("Teleporting to Bank Vault",5)a8:Fire(a3.BankV,94)end)ag:Button("Power Plant",function()Notify("Teleporting to Power Plant",5)a8:Fire(a3.PowerPlant,94)end)ag:Button("Jetpack",function()Notify("Teleporting to Jetpack",5)a8:Fire(a3.Jetpack,94)end)ag:Button("Volcano Base Top",function()Notify("Teleporting to Volcano Base Top",5)a8:Fire(a3.VolcanoBaseTop,94)end)ag:Button("Volcano Base Bottom",function()Notify("Teleporting to Volcano Base Bottom",5)a8:Fire(a3.VolcanoBaseBottom,94)end)ag:Button("Criminal Base",function()Notify("Teleporting to Criminal Base",5)a8:Fire(a3.CrimBase,94)end)ag:Button("Prison Yard",function()Notify("Teleporting to Prison Yard",5)a8:Fire(a3.Yard,94)end)ag:Button("Helicopter One",function()Notify("Teleporting to Helicopter One",5)a8:Fire(a3.Helicopter1,94)end)ag:Button("Helicopter Two",function()Notify("Teleporting to Helicopter Two",5)a8:Fire(a3.Helicopter2,94)end)ag:Button("Sell All",function()Notify("Teleporting to Sell All",5)a8:Fire(a3.Sell,94)end)ag:Button("Control Tower",function()Notify("Teleporting to Control Tower",5)a8:Fire(a3.ControlTower,94)end)ag:Button("Cage",function()Notify("Teleporting to Cage",5)a8:Fire(a3.Cage,94)end)function FindPlayer(ah)local ai=string.lower(ah)local aj=string.len(ai)for E,ak in pairs(game:GetService("Players"):GetChildren())do local al=string.lower(ak.Name)if al:sub(1,aj)==ai:sub(1,aj)then return ak,true end end;return nil,false end;local am,an=ag:SearchBox("Target",{},function()end)ag:Button("Teleport To Target",function()local ak,ao=FindPlayer(an.Text)if ao then if ak.Character~=nil and ak.Character:FindFirstChild("HumanoidRootPart")then Notify("Teleporting to "..ak.Name,5)a8:Fire(ak.Character.HumanoidRootPart.CFrame*CFrame.new(0,5,0),94)end else Notify("Player Not Founded",5)end end)local ap=a:CreateWindow("Other")ap:Button("Remove Doors & Lasers",function()for w,aq in pairs(workspace:GetDescendants())do if aq:IsA("BasePart")then local ar={}ar.IsRemoved=false;ar.BC=aq.BrickColor;ar.BC_List={BrickColor.new("Persimmon"),BrickColor.new("Dusty Rose"),BrickColor.new("Terra Cotta")}if aq.Material==Enum.Material.Neon and aq.Name~="Building"then for w,as in pairs(ar.BC_List)do if ar.BC==as and ar.IsRemoved==false then ar.IsRemoved=true;aq:Remove()end end end;if ar.IsRemoved==false and aq.Name=="SewerHatch"then ar.IsRemoved=true;aq:Remove()end elseif aq:IsA("Model")then local ar={}ar.IsRemoved=false;if aq.Name=="SlideDoor"or aq.Name=="SwingDoor"or aq.Name=="Door"then if workspace:FindFirstChild("Plane")and not aq:IsDescendantOf(workspace.Plane)then else ar.IsRemoved=true;aq:Remove()end end end end;Notify("Removed Doors & Lasers")end)local at=Instance.new("ScreenGui",game.CoreGui)at.Name=game:GetService("HttpService"):GenerateGUID(false)local au={}ap:Toggle("ESP",{flag="ESP"})e:Connect(function()for w,av in pairs(au)do av.Enabled=ap.flags.ESP end end)for w,aw in pairs(game:GetService("Players"):GetPlayers())do coroutine.resume(coroutine.create(function()if aw.Character~=nil then if aw.Character:FindFirstChild("Head")then local ax=aw.Character.Head;local ay=Instance.new("BillboardGui",at)table.insert(au,ay)ay.Adornee=ax;ay.Size=UDim2.new(0,700,0,40)ay.AlwaysOnTop=true;ay.Enabled=ap.flags.ESP;ay.StudsOffset=Vector3.new(0,2,0)local az=Instance.new("TextLabel",ay)az.Size=UDim2.new(1,0,1,0)az.TextScaled=true;ay.Name=aw.Name;az.Text=aw.Name;az.Font=Enum.Font.ArialBold;az.BackgroundTransparency=1;az.TextStrokeTransparency=0;az.TextColor3=Color3.new(aw.TeamColor.r,aw.TeamColor.g,aw.TeamColor.b)repeat az.TextColor3=Color3.new(aw.TeamColor.r,aw.TeamColor.g,aw.TeamColor.b)wait()until ay.Adornee==nil;ay:Remove()end end end))aw.CharacterAdded:Connect(function(aA)wait(1.25)local ax=aA.Head;local ay=Instance.new("BillboardGui",at)table.insert(au,ay)ay.Adornee=ax;ay.Size=UDim2.new(0,700,0,40)ay.AlwaysOnTop=true;ay.Enabled=ap.flags.ESP;ay.StudsOffset=Vector3.new(0,2,0)local az=Instance.new("TextLabel",ay)az.Size=UDim2.new(1,0,1,0)az.TextScaled=true;ay.Name=aw.Name;az.Text=aw.Name;az.Font=Enum.Font.ArialBold;az.BackgroundTransparency=1;az.TextStrokeTransparency=0;az.TextColor3=Color3.new(aw.TeamColor.r,aw.TeamColor.g,aw.TeamColor.b)repeat az.TextColor3=Color3.new(aw.TeamColor.r,aw.TeamColor.g,aw.TeamColor.b)wait()until ay.Adornee==nil;ay:Remove()end)end;game:GetService("Players").PlayerAdded:Connect(function(aw)aw.CharacterAdded:Connect(function(aA)wait(1.25)local ax=aA.Head;local ay=Instance.new("BillboardGui",at)table.insert(au,ay)ay.Adornee=ax;ay.Size=UDim2.new(0,700,0,40)ay.AlwaysOnTop=true;ay.Enabled=ap.flags.ESP;ay.StudsOffset=Vector3.new(0,2,0)local az=Instance.new("TextLabel",ay)az.Size=UDim2.new(1,0,1,0)az.TextScaled=true;ay.Name=aw.Name;az.Text=aw.Name;az.Font=Enum.Font.ArialBold;az.BackgroundTransparency=1;az.TextStrokeTransparency=0;az.TextColor3=Color3.new(aw.TeamColor.r,aw.TeamColor.g,aw.TeamColor.b)repeat az.TextColor3=Color3.new(aw.TeamColor.r,aw.TeamColor.g,aw.TeamColor.b)wait()until ay.Adornee==nil;ay:Remove()end)end)ap:Toggle("Inf Donuts",{flag="InfDonuts"})e:Connect(function()if ap.flags.InfDonuts and c~=nil then game:GetService('Workspace').TouchTrigger.Donut.Position=c.Position else game:GetService('Workspace').TouchTrigger.Donut.Position=Vector3.new(264,19.7678413,-1770.5)end end)ap:Toggle("Auto Arrest & Eject",{flag="AutoAE"})local aB=game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CircleAction;local aC=game:GetService('VirtualInputManager')coroutine.resume(coroutine.create(function()while wait()do if aB.Visible and ap.flags.AutoAE then if aB.Help.Text=="Eject"or aB.Help.Text=="Arrest"then if aB.Hold.Visible then aC:SendKeyEvent(true,"E",false,game)repeat wait()until aB.Visible==false or aB.OuterFull.Visible==true or ap.flags.AutoAE==false;aC:SendKeyEvent(false,"E",false,game)else aC:SendKeyEvent(true,"E",false,game)wait()aC:SendKeyEvent(false,"E",false,game)end end end end end))Notify("JailTabs Has Loaded Successfully",5)
