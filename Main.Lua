
local Sense = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Sirius/request/library/sense/source.lua'))()
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Hex Hub 3.0",
	LoadingTitle = "Welcome To Hex Hub",
	LoadingSubtitle = "by Swax1600",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = HH,
		FileName = "HexHub3.0"
	},
        Discord = {
        	Enabled = false,
        	Invite = "V9tgFAvpR8", --do not include discord.gg/
        	RememberJoins = true 
        },
	KeySystem = false, -- on release replace with true!!!!!!
	KeySettings = {
		Title = "Hex Hub",
		Subtitle = "Key System",
		Note = "Get the key from discord: V9tgFAvpR8",
		FileName = "HHKEY",
		SaveKey = true,
		GrabKeyFromSite = true, -- set ket to site
		Key = "https://pastebin.com/raw/ZC8Rt6M6"
	}
})

Rayfield:Notify({
    Title = "Hex Hub",
    Content = "V 3.3",
    Duration = 2,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Fuck Off",
            Callback = function()
                print("Welcome")
            end
		},
	},
})



local infjumpenabled = false

game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true

game:GetService("UserInputService").JumpRequest:Connect(function()
	if infjumpenabled then
		game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState("Jumping")
	end
end)

local main = Window:CreateTab("Main")

task.spawn(function()
	while task.wait(bhopwait) do
		if bhop then
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end
end)

function spin()
	local Spin = Instance.new("BodyAngularVelocity")
	Spin.Name = "Spinning"
	Spin.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	Spin.MaxTorque = Vector3.new(0, math.huge, 0)
	Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
end

--main

local Section = main:CreateSection("Home")

local Label = main:CreateLabel("Created by Swax_0/!!!Swax#2600")

local Label = main:CreateLabel("Version : 3.3")

local Updates = main:CreateSection("Updates")

local Updatespara = main:CreateParagraph({Title = "Updates", Content = "NOCLIP HASETH BEEN ADDED!!"})

local Section = main:CreateSection("Player")

local Toggle = main:CreateToggle({
	Name = "Infinite Jump",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
	infjumpenabled = Value
    value = true
	end,
})



 
 
local Slider = main:CreateSlider({
	Name = "Walkspeed",
	Range = {0, 100},
	Increment = 1,
	Suffix = "Studs",
	CurrentValue = 16,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value-- The function that takes place when the slider changes
    		value = 16-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local Slider = main:CreateSlider({
	Name = "Jumppower",
	Range = {0, 200},
	Increment = 1,
	Suffix = "Jump-Power",
	CurrentValue = 50,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = value-- The function that takes place when the slider changes
    	    value = 50	-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local Slider = main:CreateSlider({
	Name = "FOV",
	Range = {30, 120},
	Increment = 5,
	Suffix = "FOV",
	CurrentValue = 50,
	Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game:GetService'Workspace'.Camera.FieldOfView = Value-- The function that takes place when the slider changes
    		Value = 50-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local FlightToggle = main:CreateToggle({
    Name = "Fly ",
    CurrentValue = false,
    Flag = "FlyToggle",
    Callback = function(Value)
        getgenv().Fly = Value
        local Max = 0
local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
Max = Max + 1
if Fly then
   local T =
       LP.Character:FindFirstChildWhichIsA("Humanoid").RigType == Enum.HumanoidRigType.R6 and
       LP.Character:FindFirstChild("HumanoidRootPart") or
       LP.Character:FindFirstChildWhichIsA("Humanoid").RigType == Enum.HumanoidRigType.R15 and
           LP.Character:FindFirstChild("UpperTorso")
   local S = {
       F = 0,
       B = 0,
       L = 0,
       R = 0
   }
   local S2 = {
       F = 0,
       B = 0,
       L = 0,
       R = 0
   }
   local SPEED = Flyspeed
   local function FLY()
       local BodyGyro = Instance.new("BodyGyro", T)
       local BodyVelocity = Instance.new("BodyVelocity", T)
       BodyGyro.P = 9e4
       BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
       BodyGyro.cframe = T.CFrame
       BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
       BodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
       spawn(
           function()
               repeat
                   wait()
                   LP.Character.Humanoid.PlatformStand = true
                   if S.L + S.R ~= 0 or S.F + S.B ~= 0 then
                       SPEED = 100
                   elseif not (S.L + S.R ~= 0 or S.F + S.B ~= 0) and SPEED ~= 0 then
                       SPEED = 0
                   end
                   if (S.L + S.R) ~= 0 or (S.F + S.B) ~= 0 then
                       BodyVelocity.velocity =
                           ((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (S.F + S.B)) +
                           ((game:GetService("Workspace").CurrentCamera.CoordinateFrame *
                               CFrame.new(S.L + S.R, (S.F + S.B) * 0.2, 0).p) -
                               game:GetService("Workspace").CurrentCamera.CoordinateFrame.p)) *
                           SPEED
                       S2 = {
                           F = S.F,
                           B = S.B,
                           L = S.L,
                           R = S.R
                       }
                   elseif (S.L + S.R) == 0 and (S.F + S.B) == 0 and SPEED ~= 0 then
                       BodyVelocity.velocity =
                           ((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (S2.F + S2.B)) +
                           ((game:GetService("Workspace").CurrentCamera.CoordinateFrame *
                               CFrame.new(S2.L + S2.R, (S2.F + S2.B) * 0.2, 0).p) -
                               game:GetService("Workspace").CurrentCamera.CoordinateFrame.p)) *
                           SPEED
                   else
                       BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
                   end
                   BodyGyro.cframe = game:GetService("Workspace").CurrentCamera.CoordinateFrame
               until not Fly
               S = {
                   F = 0,
                   B = 0,
                   L = 0,
                   R = 0
               }
               S2 = {
                   F = 0,
                   B = 0,
                   L = 0,
                   R = 0
               }
               SPEED = 0
               BodyGyro:destroy()
               BodyVelocity:destroy()
               LP.Character.Humanoid.PlatformStand = false
           end
       )
   end
   Mouse.KeyDown:connect(
       function(k)
           if k:lower() == "w" then
               S.F = 1
           elseif k:lower() == "s" then
               S.B = -1
           elseif k:lower() == "a" then
               S.L = -1
           elseif k:lower() == "d" then
               S.R = 1
           end
       end
   )
   Mouse.KeyUp:connect(
       function(k)
           if k:lower() == "w" then
               S.F = 0
           elseif k:lower() == "s" then
               S.B = 0
           elseif k:lower() == "a" then
               S.L = 0
           elseif k:lower() == "d" then
               S.R = 0
           end
       end
   )
   if Fly then
       FLY()
   end
   if not Fly then
       FLY()
   end
   if Max == 2 then
       Fly = false
       Max = 0
   end
end

    end,
 })

local Toggle = main:CreateToggle({
	Name = "Noclip",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		_G.noclip = Value
game.Players.LocalPlayer.Character.Humanoid:ChangeState(7)
local Loop  game:GetService('RunService').Stepped:connect(function()
    if _G.noclip then
        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("BasePart") then
                if v.CanCollide ~= not _G.noclip then
                    v.CanCollide = not _G.noclip
                end
            end
        end
    end
end)
	end,
})



local Input = main:CreateInput({
	Name = "Teleport To Player",
	PlaceholderText = "Target",
	RemoveTextAfterFocusLost = true,
	Callback = function(Target)

		local function autofill(text)
			for i,v in pairs(game.Players:GetPlayers()) do
				if string.find(v.Name, text) then
					return v.Name
				end
			end
		end

		Target = autofill(Target)
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Workspace:FindFirstChild(Target)
		plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
	end,
})

local Input = main:CreateInput({
	Name = "Fling",
	PlaceholderText = "Target",
	RemoveTextAfterFocusLost = true,
	Callback = function(FlingName)

		function autofill(text)
			for i,v in pairs(game.Players:GetPlayers()) do
				if string.find(v.Name, text) then
					return v.Name
				end
			end
		end

local Settings = {
    Target = autofill(FlingName)
 }
 

 local Players = game:GetService("Players")
 local RunService = game:GetService("RunService")
 
 local LocalPlayer = Players.LocalPlayer
 local Target = Players:FindFirstChild(Settings.Target)
 
 local BodyAngularVelocity = Instance.new("BodyAngularVelocity")
 BodyAngularVelocity.AngularVelocity = Vector3.new(10^6, 10^6, 10^6)
 BodyAngularVelocity.MaxTorque = Vector3.new(10^6, 10^6, 10^6)
 BodyAngularVelocity.P = 10^6
 

 if not Target then return end
 BodyAngularVelocity.Parent = LocalPlayer.Character.HumanoidRootPart
 
 while Target.Character.HumanoidRootPart and LocalPlayer.Character.HumanoidRootPart do
    RunService.RenderStepped:Wait()
    LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * LocalPlayer.Character.HumanoidRootPart.CFrame.Rotation
    LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new()
 end
    
 BodyAngularVelocity.Parent = nil
 Rayfield:Notify({
	Title = "Fling",
	Content = "Flinging, " + settings.Target,
	Duration = 6.5,
})
	end,
})

local Button = main:CreateButton({
	Name = "Walk on walls",
	Callback = function()
		Rayfield:Notify({
			Title = "Walk on Walls",
			Content = "Hot key is z",
			Duration = 6.5,
			Image = 4483362458,
			Actions = { -- Notification Buttons
				Ignore = {
					Name = "Okay!",
					Callback = function()
						loadstring(game:HttpGet("https://raw.githubusercontent.com/Bjmansell/Hex-Hub/main/Walk%20on%20walls", true))()
					end
				},
			},
		})
	end,
})

local Button = main:CreateButton({
	Name = "Sit Down",
	Callback = function()

        game.Players['LocalPlayer'].Character.Humanoid.Sit = true 
	end,
})

local Paragraph = main:CreateParagraph({Title = "Anti Exploiter", Content = "Stops you from being voided by other exploiters"})

local Toggle = main:CreateToggle({
	Name = "Anti Exploiter",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		getgenv().AntiVoid = Value -- // toggle it on and off

		Rayfield:Notify({
			Title = "Anti Exploiter",
			Content = "This will stop you from being voided by people",
			Duration = 1.0,
		})
-- // Services
local Players = game:GetService("Players")

-- // Vars
local LocalPlayer = Players.LocalPlayer

-- // Check if anyone has the same handle as you
local function toolMatch(Handle)
    local allPlayers = Players:GetPlayers()
    for i = 1, #allPlayers do
        -- // Vars
        local Player = allPlayers[i]
        if (Player == LocalPlayer) then continue end -- // ignore local player

        -- // Vars
        local Character = Player.Character
        local RightArm = Character:WaitForChild("Right Arm")
        local RightGrip = RightArm:FindFirstChild("RightGrip")

        -- // Check if they share the same Part1 Handle of the Grip
        if (RightGrip and RightGrip.Part1 == Handle) then
            return Player
        end
    end
end

-- // Manager
local function onCharacter(Character)
    local RightArm = Character:WaitForChild("Right Arm")

    -- // See when you equip something
    RightArm.ChildAdded:Connect(function(child)
        if (child:IsA("Weld") and child.Name == "RightGrip" and getgenv().AntiVoid) then
            -- // Vars
            local ConnectedHandle = child.Part1

            -- // Check if someone else has something equipped too with the same handle as you
            local matched = toolMatch(ConnectedHandle)

            -- // Destroy the tool, if someone is voiding you
            if (matched) then
                ConnectedHandle.Parent:Destroy()
                print(matched, "just tried to void you lol!")
            end
        end
    end)
end

-- // Initialise the script
onCharacter(LocalPlayer.Character)
LocalPlayer.CharacterAdded:Connect(onCharacter)

if Value == true then
	
end
	end,
})

--visuals

local VisualsSection = main:CreateSection("Visuals")



local Toggle = main:CreateToggle({
	Name = "Xray",
	CurrentValue = false,
	Flag = "Xray", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		if Value then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and not v.Parent.Parent:FindFirstChild("Humanoid") then
					v.Transparency = v.Transparency + 0.5
				end
			end
		else
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and not v.Parent.Parent:FindFirstChild("Humanoid") then
					v.Transparency = v.Transparency - 0.5
				end
			end
		end-- The function that takes place when the toggle is pressed
    	value = false	-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})

local Button = main:CreateButton({
	Name = "Potato Grpahics",
	Callback = function()
		local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
	end,
})


local OtherSection = main:CreateSection("Other")

local Button = main:CreateButton({
	Name = "2007 Build Tools",
	Callback = function()
		for item = 1, 4 do
			HopperBin = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
			HopperBin.BinType = item
		end-- The function that takes place when the button is pressed
	end,
})

local Button = main:CreateButton({
	Name = "Friend all",
	Callback = function()
		local obese = game:GetService('Players')
for _,kachow in pairs(obese:GetPlayers()) do
obese.LocalPlayer:RequestFriendship(kachow, kachow)
end

Rayfield:Notify({
    Title = "Friended all",
    Content = "Fucking loner",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Okay!",
		},
	},
})
	end,
})

local Button = main:CreateButton({
	Name = "Rejoin",
	Callback = function()
		Rayfield:Notify({
			Title = "rejoin",
			Content = "Are you sure?",
			Duration = 6.5,
			Image = 4483362458,
			Actions = { -- Notification Buttons
				Yes = {
					Name = "Positive",
					Callback = function()
						local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)
					end
				},
				No = {
					Name = "abort",
					Callback = function()
						Rayfield:Notify({
							Title = "Aborted",
							Content = "rejoin aborted",
							Duration = 6.5,
							Image = 4483362458,
						})
						end
				}
			},
		})
	end,
})

local Button = main:CreateButton({
	Name = "Reset",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end,
})

if game.PlaceId==2897155393 then

	Rayfield:Notify({
		Title = "Game Detected",
		Content = "Welcome To Roblox Building script loaded",
		Duration = 6.5,
	})

	local WTRBTab = Window:CreateTab("WTRB")

	local CopySection = WTRBTab:CreateSection("Copy plot")

	local Stamp = game.ReplicatedStorage.BuildingBridge.Stamp

	function findPlot(n)
		for _,v in pairs(workspace.BuildingAreas:GetChildren()) do
			if v.Player.Value == n then
				return v.PlayerArea
			end
		end
		return nil
	end
	local Base = findPlot(game.Players.LocalPlayer.Name).BasePlate
	
	function getModels(p)
		local t = {}
		for i,v in pairs(p:GetChildren()) do
			if v:IsA("Model") and v:FindFirstChild("SaveCFrame") then
				t[i - 1] = {AssetId = v.AssetId.Value, SaveCFrame = v.SaveCFrame.Value}
			end
		end
		return t
	end
	
	function findTime(s)
		return string.format("%02i:%02i:%02i", s/60^2, s/60%60, s%60)
	end

	local Input = WTRBTab:CreateInput({
		Name = "Copy Plot",
		PlaceholderText = "Victim",
		RemoveTextAfterFocusLost = false,
		Callback = function(Victim)

			function autofill(text)
				for i,v in pairs(game.Players:GetPlayers()) do
					if string.find(v.Name, text) then
						return v.Name
					end
				end
			end

			local p = findPlot(autofill(Victim))

			local Copying = false
	
	if not Debounce then
		Debounce = true
		
		if p == nil then
			Rayfield:Notify({
				Title = "Player Not Found",
				Content = "The player was not found",
				Duration = 6.5,
			})
			Debounce = false
			return
		end

		Copying = true
		local Models = getModels(p)
		local Amount = #Models
		if Amount <= 1 then
			Rayfield:Notify({
				Title = "Nothing to copy",
				Content = "",
				Duration = 6.5,
			})
			wait(1.5)
			Debounce = false
			return
		end

		local Time = tick()
		local bp = p.BasePlate:Clone()
		bp.Parent = workspace
		bp.Transparency = 1
		local i = 1
		repeat
			if Models[i] ~= nil and Models[i].SaveCFrame ~= nil then
				local cs = bp.CFrame:ToObjectSpace(Models[i].SaveCFrame)
				local c = Base.CFrame:ToWorldSpace(cs)
				Stamp:InvokeServer(Models[i].AssetId, c)
			end
			i = i + 1
			if d ~= nil and d > 0 then wait(d) end
		until i == Amount or not Copying
		bp:Destroy()
		Copying = false
		Time = nil
		wait(2)
		Debounce = false
	end

		end,
	})

	local Input = WTRBTab:CreateInput({
		Name = "Delay",
		PlaceholderText = "Time",
		RemoveTextAfterFocusLost = false,
		Callback = function(delay)
			local d = tonumber(delay)
		end,
	})

	local Button = WTRBTab:CreateButton({
		Name = "Cancel",
		Callback = function()
			Copying = false

		end,
	})

end

if game.PlaceId==1215581239 then

	Rayfield:Notify({
		Title = "Game Detected",
		Content = "DoomSpire Brick Battle script loaded",
		Duration = 6.5,
	})

	local DSBBTab = Window:CreateTab("Doomspire") 

	local TeleportSection = DSBBTab:CreateSection("Top of Towers") -- top

	local Button = DSBBTab:CreateButton({
		Name = "Red Top",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93,131,-0)
		end,
	})

	local Button = DSBBTab:CreateButton({
		Name = "Blue Top",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,131,94)
		end,
	})

	local Button = DSBBTab:CreateButton({
		Name = "Yellow Top",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(94,131,0)
		end,
	})

	local Button = DSBBTab:CreateButton({
		Name = "Green Top",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1,131,-94)
		end,
	})

	local BottomSection = DSBBTab:CreateSection("Bottom Of Towers") --bottom

	local Button = DSBBTab:CreateButton({
		Name = "Red Bottom",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131,25,-1.5)
		end,
	})

	local Button = DSBBTab:CreateButton({
		Name = "Blue Bottom",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.4,25,131)
		end,
	})

	local Button = DSBBTab:CreateButton({
		Name = "Yellow Bottom",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131,25,-1.5 )
		end,
	})

	local Button = DSBBTab:CreateButton({
		Name = "Green Bottom",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.4,25,-131)
		end,
	})

end

local ScriptsTab = Window:CreateTab("Scripts")

local AnimSection = ScriptsTab:CreateSection("Animations")

local Button = ScriptsTab:CreateButton({
	Name = "Nameless Animation",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Bjmansell/Hex-Hub/main/Namelss%20v5", true))()
	end,
})

local Button = ScriptsTab:CreateButton({
	Name = "2009 Animations",
	Callback = function()
		Rayfield:Notify({
			Title = "2007",
			Content = "R6 Only",
			Duration = 6.5,
			Image = 4483362458,
			Actions = { -- Notification Buttons
				Ignore = {
					Name = "Okay!",
					Callback = function()
						loadstring(game:HttpGet("https://raw.githubusercontent.com/Bjmansell/Hex-Hub/main/Old%20animations", true))()
					end
				},
			},
		})
	end,
})

local Button = ScriptsTab:CreateButton({
	Name = "Fe Animations",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Bjmansell/Hex-Hub-3.0/main/FE%20anims.lua', true))()
	end,
})

local FeSection = ScriptsTab:CreateSection("Fe Scripts")

local Button = ScriptsTab:CreateButton({
	Name = "BigHead",
	Callback = function()

for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren()) do
    if string.find(v.Name,"Scale") and v.Name ~= "HeadScale" then
        repeat wait(HeadGrowSpeed) until game.Players.LocalPlayer.Character.Head:FindFirstChild("OriginalSize")
        game.Players.LocalPlayer.Character.Head.OriginalSize:Destroy()
        v:Destroy()
        game.Players.LocalPlayer.Character.Head:WaitForChild("OriginalSize")
    end
 end
		Rayfield:Notify({
			Title = "Bighead",
			Content = "Make sure you are wearing a Rthro head at max size",
			Duration = 2,
		})
	end,
})

local Button = ScriptsTab:CreateButton({
	Name = "Chat Art",
	Callback = function()
        Rayfield:Notify({
			Title = "Chat Art",
			Content = "the prefix is .",
			Duration = 6.5,
			Image = 4483362458,
			Actions = { -- Notification Buttons
				Ignore = {
					Name = "Okay!",
					Callback = function()
						print("The user tapped Okay!")
					end
				},
			},
		})

		loadstring(game:HttpGet("https://raw.githubusercontent.com/omegachadgaming/mongus/main/main.lua", true))()
	end,
})

local Button = ScriptsTab:CreateButton({
	Name = "FE Head Pet",
	Callback = function()

Rayfield:Notify({
    Title = "FE Head Pet",
    Content = "Have Fun",
    Duration = 6.5,
    Image = 4483362458,
})
local petGui = Instance.new("ScreenGui")
local drag = Instance.new("Frame")
local label = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local otb = Instance.new("TextBox")

petGui.Name = "petGui"
petGui.Parent = game:GetService("CoreGui")
petGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

drag.Name = "drag"
drag.Parent = petGui
drag.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
drag.BorderSizePixel = 0
drag.Position = UDim2.new(0.5, -150, 0.5, -35)
drag.Size = UDim2.new(0, 350, 0, 100)
drag.Archivable = true
drag.Active = true
drag.Selectable = true
drag.Draggable = true

label.Name = "label"
label.Parent = drag
label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label.BackgroundTransparency = 0.500
label.BorderSizePixel = 0
label.Size = UDim2.new(1, 0, 0, 30)
label.Font = Enum.Font.SourceSans
label.Text = "Hex Hub Head Pet"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.TextSize = 14.000
label.TextWrapped = true

TextButton.Parent = label
TextButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(1, -50, 0, 0)
TextButton.Size = UDim2.new(0, 50, 1, 0)
TextButton.Font = Enum.Font.Ubuntu
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 16.000
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
 petGui:Destroy()
end)

otb.Name = "otb"
otb.Parent = drag
otb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
otb.BorderSizePixel = 0
otb.Position = UDim2.new(0, 10, 0, 30)
otb.Size = UDim2.new(1, -20, 1, -40)
otb.Font = Enum.Font.SourceSans
otb.PlaceholderText = "Name:"
otb.Text = ""
otb.TextColor3 = Color3.fromRGB(255, 255, 255)
otb.TextSize = 20.000
otb.TextWrapped = true

local plr = ""

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer

otb.FocusLost:Connect(function(enter)
 if enter then
  local playername = otb.Text

  for i, v in pairs(plrs:GetPlayers()) do
   if (string.lower(v.Name):sub(1, #playername) == string.lower(playername)) and (v ~= lp) then
    plr = v.Name
   end
  end
        otb.Text = plr
 end
end)

local ws = game:GetService("Workspace")
local c = lp.Character
local rs = game:GetService("RunService")
local sg = game:GetService("StarterGui")
local uis = game:GetService("UserInputService")
function uc(p)
 spawn(function()
  while p and p.Parent and rs.Stepped:Wait() do
   p.CanCollide = false
  end
 end)
end
if c and c.Parent then
 local ch = c:FindFirstChildOfClass("Humanoid")
 if ch and (ch.Health ~= 0) then
  local fc = Instance.new("Model", ws)
  local hed = Instance.new("Part", fc)
  hed.Transparency = 1
  hed.Name = "Head"
  uc(hed)
  local tor = Instance.new("Part", fc)
  tor.Transparency = 1
  tor.Name = "Torso"
  uc(tor)
  local nh = Instance.new("Humanoid", fc)
  lp.Character = fc
  local gh = nh:Clone()
  gh.Parent = fc
  nh:Destroy()
  gh.Health = 0 
  lp.Character = c
  fc:Destroy()
  wait(6)
  if c and c.Parent and ch and ch.Parent and (ch.Health ~= 0) then
   local hed = c:FindFirstChild("Head")
   if hed and (hed:IsA("Part") or hed:IsA("MeshPart")) then
    uc(hed)
    for i, v in pairs(c:GetChildren()) do
     if not ((v == hed) or v:IsA("Humanoid")) then
      v:Destroy()
     end
    end

    local bg = Instance.new("BodyGyro", hed)
    bg.D = 50
    bg.P = 200
    bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)

    local bp = Instance.new("BodyPosition", hed)
    bp.D = 50
    bp.P = 200
    bp.MaxForce = Vector3.new(9e9, 9e9, 9e9)

    while rs.Stepped:Wait() and ch and ch.Parent and hed and hed.Parent and bp and bp.Parent and bg and bg.Parent do
     local c1 = plrs:FindFirstChild(plr)
     if c1 and c1:IsA("Player") then
      c1 = c1.Character
      if c1 and c1.Parent then
       c1 = c1:FindFirstChild("Head")
       if c1 and (c1:IsA("Part") or c1:IsA("MeshPart")) then
        bp.Position = (c1.CFrame * CFrame.new(2, 2, 2)).Position
        bg.CFrame = c1.CFrame
       end
      end
     end
    end
   end
  end
 end
end
	end,
})

local Button = ScriptsTab:CreateButton({
	Name = "Dog (R6)",
	Callback = function()
		loadstring(game:httpGet('https://raw.githubusercontent.com/Bjmansell/Hex-Hub-3.0/main/R6%20dog'))()
	end,
})

local Button = ScriptsTab:CreateButton({
	Name= "FE Reset",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
wait()
local prt = Instance.new("Model", workspace);
Instance.new("Part", prt).Name="Torso";
Instance.new("Part", prt).Name="Head";
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt
	end,
})

local AdminSection = ScriptsTab:CreateSection("Admin GUI")

local Button = ScriptsTab:CreateButton({
	Name = "Infinite Yeild",
	Callback = function()

		Rayfield:Notify({
			Title = "Infinite yeild loaded",
			Content = "infinite yeild like most scripts on here are not made by me",
			Duration = 6.5,
		})

		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

local AimbotTab = Window:CreateTab("Aimbot")

local AimSection = AimbotTab:CreateSection("Aimbot Settings")

local warnAIMBOT = AimbotTab:CreateParagraph({Title = "Aimbot Warning", Content = "Aimbot is Broken At the momment :) Will be fixed soon luv u!"})


local Toggle = AimbotTab:CreateToggle({
	Name = "Aimbot",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		_G.AimbotEnabled = Value
	end,
})

local Toggle = AimbotTab:CreateToggle({
	Name = "Team Check",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		_G.TeamCheck = Value
	end,
})

local Slider = AimbotTab:CreateSlider({
	Name = "Sensitivity",
	Range = {0, 10},
	Increment = 1,
	Suffix = "Sensitivity",
	CurrentValue = 10,
	Flag = "Slider1", 
	Callback = function(Value)
		_G.Sensitivity = Value
	end,
})


local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false


_G.AimPart = "Head"


_G.CircleSides = 64 -- How many sides the FOV circle would have.
_G.CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
_G.CircleTransparency = 0.7 -- Transparency of the circle.
 -- The radius of the circle / FOV.
local Slider = AimbotTab:CreateSlider({
	Name = "Circle Radius",
	Range = {0, 110},
	Increment = 1,
	Suffix = "Radius",
	CurrentValue = 10,
	Flag = "Slider1", 
	Callback = function(Value)
		_G.CircleRadius = Value
	end,
})
_G.CircleFilled = false -- Determines whether or not the circle is filled.
 -- Determines whether or not the circle is visible.
local Toggle = AimbotTab:CreateToggle({
	Name = "Circle Visible",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		_G.CircleVisible = Value
	end,
})
_G.CircleThickness = 0 -- The thickness of the circle.

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness

local function GetClosestPlayer()
	local MaximumDistance = _G.CircleRadius
	local Target = nil

	for _, v in next, Players:GetPlayers() do
		if v.Name ~= LocalPlayer.Name then
			if _G.TeamCheck == true then
				if v.Team ~= LocalPlayer.Team then
					if v.Character ~= nil then
						if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
							if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
								local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
								local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
								
								if VectorDistance < MaximumDistance then
									Target = v
								end
							end
						end
					end
				end
			else
				if v.Character ~= nil then
					if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
							local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
							local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
							
							if VectorDistance < MaximumDistance then
								Target = v
							end
						end
					end
				end
			end
		end
	end

	return Target
end

UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = true
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = false
    end
end)

RunService.RenderStepped:Connect(function()
    FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Filled = _G.CircleFilled
    FOVCircle.Color = _G.CircleColor
    FOVCircle.Visible = _G.CircleVisible
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Transparency = _G.CircleTransparency
    FOVCircle.NumSides = _G.CircleSides
    FOVCircle.Thickness = _G.CircleThickness

    if Holding == true and _G.AimbotEnabled == true then
        TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
    end
end)

local Button = AimbotTab:CreateButton({
	Name = "Unamed Esp",
	Callback = function()
		Rayfield:Notify({
			Title = "Esp",
			Content = "Unamed Esp is not mine nor atall interfered by me, all credit goes to: ic3w0lf22",
			Duration = 6.5,
		})
		pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Bjmansell/Hex-Hub-3.0/main/ESP'))() end)

	end,
})

local char = game:GetService("Players").LocalPlayer.Character
local humanoid = char.Humanoid
local Spin = Instance.new("BodyAngularVelocity")

getgenv().spinSpeed = 20
getgenv().bhop = false
getgenv().bhopwait = 1

local SpinSection = AimbotTab:CreateSection("Spin")

local Slider = AimbotTab:CreateSlider({
	Name = "Spin Speed",
	Range = {0, 500},
	Increment = 10,
	Suffix = "Speed",
	CurrentValue = 1,
	Flag = "slider",
	Callback = function(Value)
		spinSpeed = Value
	end,
})

local Toggle = AimbotTab:CreateToggle({
	Name = "Spin Bot",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
			spin()
		else
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Spinning:Destroy()
		end
	end,
})

local bhopsection = AimbotTab:CreateSection("BHop")

local Slider = AimbotTab:CreateSlider({
	Name = "Bhop Delay",
	Range = {1, 50},
	Increment = 0.1,
	Suffix = "Delay",
	CurrentValue = 1,
	Flag = "Slider1",
	Callback = function(Value)
		bhopwait = Value
	end,
})

local Toggle = AimbotTab:CreateToggle({
	Name = "Bhop",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		bhop = Value
	end,
})

local EspTab = Window:CreateTab("ESP")

local ESPSection = EspTab:CreateSection("Enemy")



local Toggle = EspTab:CreateToggle({
	Name = "Use Team Color",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		Sense.sharedSettings.useTeamColor = Value
	end,
})

local Toggle = EspTab:CreateToggle({
	Name = "Enemy Enabled",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		Sense.teamSettings.enemy.enabled = Value
	end,
})

local Toggle = EspTab:CreateToggle({
	Name = "Box",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		Sense.teamSettings.enemy.box = Value
		Sense.teamSettings.enemy.boxOutline = Value
	end,
})

local ColorPicker = EspTab:CreateColorPicker({
    Name = "Enemy Box Color",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", 
    Callback = function(Value)
        Sense.teamSettings.enemy.boxColor[1] = Value
		Sense.teamSettings.enemy.boxOutlineColor[1] = Value
    end
})

local Toggle = EspTab:CreateToggle({
	Name = "Chams",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		Sense.teamSettings.enemy.chams = Value
	end,
})

local ColorPicker = EspTab:CreateColorPicker({
    Name = "Enemy Chams Color",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", 
    Callback = function(Value)
        Sense.teamSettings.enemy.chamsFillColor[1] = Value
		Sense.teamSettings.enemy.chamsOutlineColor[1] = Value
    end
})

local Toggle = EspTab:CreateToggle({
	Name = "Names",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		Sense.teamSettings.enemy.name = Value
	end,
})

local Toggle = EspTab:CreateToggle({
	Name = "Distance",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		Sense.teamSettings.enemy.distance = Value
	end,
})

Sense.Load()

local SettingsTab = Window:CreateTab("Settings")

local SettingsSection = SettingsTab:CreateSection("Settings")

local ColorPicker = SettingsTab:CreateColorPicker({
    Name = "Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
    end
})