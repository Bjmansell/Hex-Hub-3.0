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

local Home = Window:CreateTab("Home", 11347112419)

local Section = Home:CreateSection("Home")

local Label = Home:CreateLabel("Created by Swax_0/!!!Swax#2600")

local Label = Home:CreateLabel("Version : 3.0")



