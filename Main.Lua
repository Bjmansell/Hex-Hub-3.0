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
	KeySystem = true, -- on release replace with true!!!!!!
	KeySettings = {
		Title = "Hex Hub",
		Subtitle = "Key System",
		Note = "The key is 1",
		FileName = "HHKEY",
		SaveKey = true,
		GrabKeyFromSite = false, -- set ket to site
		Key = "1"
	}
})

local infjumpenabled = false

game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true

game:GetService("UserInputService").JumpRequest:Connect(function()
	if infjumpenabled then
		game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState("Jumping")
	end
end)

local Home = Window:CreateTab("Home")

local Section = Home:CreateSection("Home")

local Label = Home:CreateLabel("Created by Swax_0/!!!Swax#2600")

local Label = Home:CreateLabel("Version : 3.1")

local Updates = Home:CreateSection("Updates")

local Updatespara = Home:CreateParagraph({Title = "Updates", Content = "added Aimbot/aimbot settings"})

local main = Window:CreateTab("Main")

local Section = main:CreateSection("Player")

local Toggle = main:CreateToggle({
	Name = "Infinite Jump",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	infjumpenabled = Value-- The function that takes place when the toggle is pressed
    value = true -- The variable (Value) is a boolean on whether the toggle is true or false
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

local Button = main:CreateButton({
	Name = "BigHead",
	Callback = function()
	--  ((Packed with care by sysGhost/BiKode))
--  Remember to use R15 with Rthro avatar(head) and scale ur head at max

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
			Duration = 6.5,
			Image = 9015071635,
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
	Name = "Old animations",
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

local Button = main:CreateButton({
	Name = "Sit Down",
	Callback = function()

        game.Players['LocalPlayer'].Character.Humanoid.Sit = true 

		Rayfield:Notify({
			Title = "Sit ur ass down",
			Content = "u sat ur fat ass down",
			Duration = 6.5,
			Image = 4483362458,
		})
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


local ScriptsTab = Window:CreateTab("Scripts")

local AnimSection = ScriptsTab:CreateSection("Animations")

local Button = ScriptsTab:CreateButton({
	Name = "Nameless Animation",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Bjmansell/Hex-Hub/main/Namelss%20v5", true))()
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

local AimbotTab = Window:CreateTab("Aimbot")

local AimSection = AimbotTab:CreateSection("Aimbot Settings")

local warnAIMBOT = AimbotTab:CreateParagraph({Title = "Aimbot Warning", Content = "This Aimbot script is not made by me however just edited by me HEAVLY so i still did a bit of code however please note this is still not mine and the creators of the script are still responsible for most of the code"})

local AimbotToggle = AimbotTab:CreateToggle({
	Name = "Aimbot",
	CurrentValue = false,
	Flag = "AIMenabled", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(aimbotenabled)
		_G.AimbotEnabled = aimbotenabled
	end,	
})

local Toggle = AimbotTab:CreateToggle({
	Name = "Circle Visible",
	CurrentValue = false,
	Flag = "CircleVisiblity", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Circleenabled)
		_G.CircleVisible = Circleenabled
	end,	
})

local Slider = AimbotTab:CreateSlider({
	Name = "FOV Radius",
	Range = {50, 200},
	Increment = 5,
	Suffix = "Radius",
	CurrentValue = 80,
	Flag = "FovSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Circle_Radius)
		_G.CircleRadius = Circle_Radius
	end,
})

local Toggle = AimbotTab:CreateToggle({
	Name = "Circle Filled",
	CurrentValue = false,
	Flag = "CircleFillede", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Circle_Filled)
		_G.CircleFilled = Circle_Filled
	end,	
})

local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false

_G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
_G.AimPart = "Head" -- Where the aimbot script would lock at.
_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.

_G.CircleSides = 64 -- How many sides the FOV circle would have.
_G.CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
_G.CircleTransparency = 0.4 -- Transparency of the circle.
 -- The radius of the circle / FOV.
 -- Determines whether or not the circle is filled.
 -- Determines whether or not the circle is visible.
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

local SettingsTab = Window:CreateTab("Settings")

local SettingsSection = SettingsTab:CreateSection("Settings")