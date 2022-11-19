local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Hex Hub 3.0",
	LoadingTitle = "Welcome To Hex Hub",
	LoadingSubtitle = "by Swax1600",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = HH, -- Create a custom folder for your hub/game
		FileName = "HexHub3.0"
	},
        Discord = {
        	Enabled = true,
        	Invite = "V9tgFAvpR8", -- invite code only, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- on release replace with true!!!!!!
	KeySettings = {
		Title = "Hex Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/V9tgFAvpR8)",
		FileName = "HHKEY",
		SaveKey = true,
		GrabKeyFromSite = false, -- set ket to sit
		Key = "HH30BETA"
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

local Label = Home:CreateLabel("Version : 3.0")

local Updates = Home:CreateSection("Updates")

local Updatespara = Home:CreateParagraph({Title = "Updates", Content = ">>WIP<<"})

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
		Rayfield:Notify({
			Title = "Fe Animations",
			Content = "Made by illremmember me",
			Duration = 6.5,
			Image = 4483362458,
		})
	end,

	
})