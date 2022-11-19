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
	KeySystem = false, -- on release replace with true!!!!!!
	KeySettings = {
		Title = "Hex Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/V9tgFAvpR8)",
		FileName = "HHKEY",
		SaveKey = true,
		GrabKeyFromSite = false, -- set ket to sit
		Key = "WRAndB@cKcLuL3oGD767^*DVGYv8rK"
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