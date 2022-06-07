--anti - lag
local senv = getsenv(game.Players.LocalPlayer.PlayerGui.Client)senv.splatterBlood = function() end 

getgenv().values = {}    
local library = {}      
local Signal = loadstring(gameHttpGet(httpsraw.githubusercontent.comQuentyNevermoreEngineversion2ModulesSharedEventsSignal.lua))()      
local ConfigSave = Signal.new(ConfigSave)      
local ConfigLoad = Signal.new(ConfigLoad)      

local txt = gameGetService(TextService)      
local TweenService = gameGetService(TweenService)      
function libraryTween(...) TweenServiceCreate(...)Play() end      
local cfglocation = memzhack.pasted      
makefolder(memzhack.pasted)      


-- caching      
local Vec2 = Vector2.new      
local Vec3 = Vector3.new      
local CF = CFrame.new      
local INST = Instance.new      
local COL3 = Color3.new      
local COL3RGB = Color3.fromRGB      
local COL3HSV = Color3.fromHSV      
local CLAMP = math.clamp      
local DEG = math.deg      
local FLOOR = math.floor      
local ACOS = math.acos      
local RANDOM = math.random      
local ATAN2 = math.atan2      
local HUGE = math.huge      
local RAD = math.rad      
local MIN = math.min      
local POW = math.pow      
local UDIM2 = UDim2.new      
local CFAngles = CFrame.Angles      

local FIND = string.find      
local LEN = string.len      
local SUB = string.sub      
local GSUB = string.gsub      
local RAY = Ray.new      

local INSERT = table.insert      
local TBLFIND = table.find      
local TBLREMOVE = table.remove      
local TBLSORT = table.sort      											

function rgbtotbl(rgb)      
	return {R = rgb.R, G = rgb.G, B = rgb.B}      
end      
function tbltorgb(tbl)      
	return COL3(tbl.R, tbl.G, tbl.B)      
end      
local function deepCopy(original)      
	local copy = {}      
	for k, v in pairs(original) do      
		if type(v) == table then      
			v = deepCopy(v)      
		end      
		copy[k] = v      
	end      
	return copy      
end      
function libraryConfigFix(cfg)      
	local copy = gameGetService(HttpService)JSONDecode(readfile(cfglocation..cfg...txt))      
	for i,Tabs in pairs(copy) do      
		for i,Sectors in pairs(Tabs) do      
			for i,Elements in pairs(Sectors) do      
				if Elements.Color ~= nil then      
					local a = Elements.Color      
					Elements.Color = tbltorgb(a)      
				end      
			end      
		end      
	end      
	return copy      
end      
function librarySaveConfig(cfg)      
	local copy = deepCopy(values)      
	for i,Tabs in pairs(copy) do      
		for i,Sectors in pairs(Tabs) do      
			for i,Elements in pairs(Sectors) do      
				if Elements.Color ~= nil then      
					Elements.Color = {R=Elements.Color.R, G=Elements.Color.G, B=Elements.Color.B}      
				end      
			end      
		end      
	end      
	writefile(cfglocation..cfg...txt, gameGetService(HttpService)JSONEncode(copy))      
end      

function libraryNew(name)      
	local menu = {}      

	local Ova = INST(ScreenGui)      
	local Menu = INST(ImageLabel)      
	local TextLabel = INST(TextLabel)      
	local TabButtons = INST(Frame)      
	local UIListLayout = INST(UIListLayout)      
	local Tabs = INST(Frame)      

	Ova.Name = electric boogalo      
	Ova.ResetOnSpawn = false      
	Ova.ZIndexBehavior = Global      
	Ova.DisplayOrder = 420133769      

	local UIScale = INST(UIScale)      
	UIScale.Parent = Ova      

	function menuSetScale(scale)      
		UIScale.Scale = scale      
	end      

	local but = INST(TextButton)      
	but.Modal = true      
	but.Text =       
	but.BackgroundTransparency = 1      
	but.Parent = Ova      

	local cursor = INST(ImageLabel)      
	cursor.Name = cursor      
	cursor.Parent = Ova      
	cursor.BackgroundTransparency = 1      
	cursor.Size = UDIM2(0,17,0,17)      
	cursor.Image = rbxassetid518398610      
	cursor.ZIndex = 1000      
	cursor.ImageColor3 = COL3RGB(255,255,255)      

	local Players = gameGetService(Players)      
	local LocalPlayer = Players.LocalPlayer      
	local Mouse = LocalPlayerGetMouse()      

	gameGetService(RunService).RenderSteppedconnect(function()      
		cursor.Visible = Ova.Enabled      
		cursor.Position = UDIM2(0,Mouse.X-3,0,Mouse.Y+1)      
	end)      

	Menu.Name = Menu      
	Menu.Parent = Ova      
	Menu.BackgroundColor3 = COL3RGB(255, 255, 255)      
	Menu.Position = UDIM2(0.5, -300, 0.5, -300)      
	Menu.Size = UDIM2(0, 600, 0, 610)      
	Menu.Image = httpwww.roblox.comassetid=7265208537      
	Menu.BorderSizePixel = 0      

	library.uiopen = true      

	gameGetService(UserInputService).InputBeganConnect(function(key)      
		if key.KeyCode == Enum.KeyCode.Insert then      
			Ova.Enabled = not Ova.Enabled      
			library.uiopen = Ova.Enabled      
		end      
	end)      

	local KeybindList = INST(ScreenGui)      
	do      
		local TextLabel = INST(TextLabel)      
		local Frame = INST(Frame)      
		local UIListLayout = INST(UIListLayout)      

		KeybindList.Name = KeybindList      
		KeybindList.ZIndexBehavior = Enum.ZIndexBehavior.Global      
		KeybindList.Enabled = false      

		TextLabel.Parent = KeybindList      
		TextLabel.BackgroundColor3 = COL3RGB(30, 30, 39)      
		TextLabel.BorderColor3 = COL3RGB(255, 37, 110)      
		TextLabel.Position = UDIM2(0, 1, 0.300000012, 0)      
		TextLabel.Size = UDIM2(0, 155, 0, 24)      
		TextLabel.ZIndex = 2      
		TextLabel.Font = Enum.Font.SourceSansSemibold      
		TextLabel.Text = keybinds      
		TextLabel.TextColor3 = COL3RGB(255, 37, 110)      
		TextLabel.TextSize = 14.000      

		Frame.Parent = TextLabel      
		Frame.BackgroundColor3 = COL3RGB(255, 255, 255)      
		Frame.BackgroundTransparency = 1.000      
		Frame.Position = UDIM2(0, 0, 1, 1)      
		Frame.Size = UDIM2(1, 0, 1, 0)      

		UIListLayout.Parent = Frame      
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

		KeybindList.Parent = game.CoreGui      
	end      

	function keybindadd(text)      
		if not KeybindList.TextLabel.FrameFindFirstChild(text) then      
			local TextLabel = INST(TextLabel)      
			TextLabel.BackgroundColor3 = COL3RGB(30, 30, 39)      
			TextLabel.BorderColor3 = COL3RGB(255, 37, 110)      
			TextLabel.BorderSizePixel = 0      
			TextLabel.Size = UDIM2(0, 155, 0, 24)      
			TextLabel.ZIndex = 2      
			TextLabel.Font = Enum.Font.SourceSansSemibold      
			TextLabel.Text = text      
			TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
			TextLabel.TextSize = 14.000      
			TextLabel.Name = text      
			TextLabel.Parent = KeybindList.TextLabel.Frame      
		end      
	end      

	function keybindremove(text)      
		if KeybindList.TextLabel.FrameFindFirstChild(text) then      
			KeybindList.TextLabel.FrameFindFirstChild(text)Destroy()      
		end      
	end      

	function librarySetKeybindVisible(Joe)      
		KeybindList.Enabled = Joe      
	end      

	library.dragging = false      
	do      
		local UserInputService = gameGetService(UserInputService)      
		local a = Menu      
		local dragInput      
		local dragStart      
		local startPos      
		local function update(input)      
			local delta = input.Position - dragStart      
			a.Position = UDIM2(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)      
		end      
		a.InputBeganConnect(function(input)      
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then      
				library.dragging = true      
				dragStart = input.Position      
				startPos = a.Position      

				input.ChangedConnect(function()      
					if input.UserInputState == Enum.UserInputState.End then      
						library.dragging = false      
					end      
				end)      
			end      
		end)      
		a.InputChangedConnect(function(input)      
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then      
				dragInput = input      
			end      
		end)      
		UserInputService.InputChangedConnect(function(input)      
			if input == dragInput and library.dragging then      
				update(input)      
			end      
		end)      
	end      

	TextLabel.Parent = Menu      
	TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
	TextLabel.BackgroundTransparency = 1      
	TextLabel.Position = UDIM2(0, 7, 0, 0)      
	TextLabel.Size = UDIM2(0, 0, 0, 29)      
	TextLabel.Size = UDIM2(0, txtGetTextSize(name, 15, Enum.Font.SourceSansSemibold, Vec2(700, TextLabel.AbsoluteSize.Y)).X, 0, 29)      
	TextLabel.Font = Enum.Font.SourceSansSemibold      
	TextLabel.Text = name      
	TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
	TextLabel.TextSize = 15.000      
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

	TabButtons.Name = TabButtons      
	TabButtons.Parent = Menu      
	TabButtons.BackgroundColor3 = COL3RGB(255, 255, 255)      
	TabButtons.BackgroundTransparency = 1      
	TabButtons.Position = UDIM2(TextLabel.Size.X.Scale, TextLabel.Size.X.Offset+10, 0, 0)      
	TabButtons.Size = UDIM2(TextLabel.Size.X.Scale, 590-TextLabel.Size.X.Offset, 0, 29)      

	UIListLayout.Parent = TabButtons      
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal      
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center      

	Tabs.Name = Tabs      
	Tabs.Parent = Menu      
	Tabs.BackgroundColor3 = COL3RGB(255, 255, 255)      
	Tabs.BackgroundTransparency = 1.000      
	Tabs.Position = UDIM2(0, 0, 0, 32)      
	Tabs.Size = UDIM2(0, 600, 0, 568)      

	local first = true      
	local currenttab      

	function menuTab(text)      
		local tabname      
		tabname = text      
		local Tab = {}      
		values[tabname] = {}      

		local TextButton = INST(TextButton)      
		TextButton.BackgroundColor3 = COL3RGB(255, 255, 255)      
		TextButton.BackgroundTransparency = 1      
		TextButton.Size = UDIM2(0, txtGetTextSize(text, 15, Enum.Font.SourceSansSemibold, Vec2(700,700)).X+12, 1, 0)      
		TextButton.Font = Enum.Font.SourceSansSemibold      
		TextButton.Text = text      
		TextButton.TextColor3 = COL3RGB(200, 200, 200)      
		TextButton.TextSize = 15.000      
		TextButton.Parent = TabButtons      

		local TabGui = INST('ScrollingFrame')
		local Left = INST('Frame')
		local UIListLayout = INST('UIListLayout')
		local Right = INST('Frame')
		local UIListLayout_2 = INST('UIListLayout')

		TabGui.Name = 'TabGui'
		TabGui.Parent = Tabs
		TabGui.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		TabGui.BorderColor3 = Color3.fromRGB(25, 25, 25)
		TabGui.BackgroundTransparency = 1
		TabGui.ScrollBarThickness = 4
		TabGui.BorderSizePixel = 0
		TabGui.ScrollBarImageTransparency = 0.9
		TabGui.Position = UDIM2(0, 5, 0, 2)
		TabGui.Size = UDIM2(0, 590, 1, 0)
		TabGui.Visible = false
		TabGui.CanvasSize = UDim2.new(0, 0, 4.5, 0)

		Left.Name = Left      
		Left.Parent = TabGui      
		Left.BackgroundColor3 = COL3RGB(255, 255, 255)      
		Left.BackgroundTransparency = 1.000      
		Left.Position = UDIM2(0, 15, 0, 11)      
		Left.Size = UDIM2(0, 279, 0, 543)      

		UIListLayout.Parent = Left      
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      
		UIListLayout.Padding = UDim.new(0, 10)      

		Right.Name = Right      
		Right.Parent = TabGui      
		Right.BackgroundColor3 = COL3RGB(255, 255, 255)      
		Right.BackgroundTransparency = 1.000      
		Right.Position = UDIM2(0, 303, 0, 11)      
		Right.Size = UDIM2(0, 279, 0, 543)      

		UIListLayout_2.Parent = Right      
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center      
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder      
		UIListLayout_2.Padding = UDim.new(0, 10)      

		if first then      
			TextButton.TextColor3 = COL3RGB(255, 255, 255)      
			currenttab = text      
			TabGui.Visible = true      
			first = false      
		end      

		TextButton.MouseButton1DownConnect(function()      
			if currenttab ~= text then      
				for i,v in pairs(TabButtonsGetChildren()) do      
					if vIsA(TextButton) then      
						libraryTween(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
					end      
				end      
				for i,v in pairs(TabsGetChildren()) do      
					v.Visible = false      
				end      
				libraryTween(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
				currenttab = text      
				TabGui.Visible = true      
			end      
		end)      

		function TabMSector(text, side)      
			local sectorname = text      
			local MSector = {}      
			values[tabname][text] = {}      


			local Section = INST(Frame)      
			local SectionText = INST(TextLabel)      
			local Inner = INST(Frame)      
			local sectiontabs = INST(Frame)      
			local UIListLayout_2 = INST(UIListLayout)      

			Section.Name = Section      
			Section.Parent = TabGui[side]      
			Section.BackgroundColor3 = COL3RGB(27, 27, 35)      
			Section.BorderColor3 = COL3RGB(27, 27, 35)      
			Section.BorderSizePixel = 0      
			Section.Size = UDIM2(1, 0, 0, 33)      

			SectionText.Name = SectionText      
			SectionText.Parent = Section      
			SectionText.BackgroundColor3 = COL3RGB(255, 255, 255)      
			SectionText.BackgroundTransparency = 1.000      
			SectionText.Position = UDIM2(0, 7, 0, -12)      
			SectionText.Size = UDIM2(0, 270, 0, 19)      
			SectionText.ZIndex = 2      
			SectionText.Font = Enum.Font.SourceSansSemibold      
			SectionText.Text = text      
			SectionText.TextColor3 = COL3RGB(255, 255, 255)      
			SectionText.TextSize = 15.000      
			SectionText.TextXAlignment = Enum.TextXAlignment.Left      

			Inner.Name = Inner      
			Inner.Parent = Section      
			Inner.BackgroundColor3 = COL3RGB(30, 30, 39)      
			Inner.BorderColor3 = COL3RGB(0, 0, 0)      
			Inner.BorderSizePixel = 0      
			Inner.Position = UDIM2(0, 1, 0, 1)      
			Inner.Size = UDIM2(1, -2, 1, -9)      

			sectiontabs.Name = sectiontabs      
			sectiontabs.Parent = Section      
			sectiontabs.BackgroundColor3 = COL3RGB(255, 255, 255)      
			sectiontabs.BackgroundTransparency = 1.000      
			sectiontabs.Position = UDIM2(0, 0, 0, 6)      
			sectiontabs.Size = UDIM2(1, 0, 0, 22)      

			UIListLayout_2.Parent = sectiontabs      
			UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal      
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center      
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder      
			UIListLayout_2.Padding = UDim.new(0,4)      

			local firs = true      
			local selected      
			function MSectorTab(text)      
				local tab = {}      
				values[tabname][sectorname][text] = {}      
				local tabtext = text      

				local tabsize = UDIM2(1, 0, 0, 44)      

				local tab1 = INST(Frame)      
				local UIPadding = INST(UIPadding)      
				local UIListLayout = INST(UIListLayout)      
				local TextButton = INST(TextButton)      

				tab1.Name = text      
				tab1.Parent = Inner      
				tab1.BackgroundColor3 = COL3RGB(30, 30, 39)      
				tab1.BorderColor3 = COL3RGB(27, 27, 35)      
				tab1.BorderSizePixel = 0      
				tab1.Position = UDIM2(0, 0, 0, 30)      
				tab1.Size = UDIM2(1, 0, 1, -21)      
				tab1.Name = text      
				tab1.Visible = false      

				UIPadding.Parent = tab1      
				UIPadding.PaddingTop = UDim.new(0, 0)      

				UIListLayout.Parent = tab1      
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      
				UIListLayout.Padding = UDim.new(0, 1)      

				TextButton.Parent = sectiontabs      
				TextButton.BackgroundColor3 = COL3RGB(255, 255, 255)      
				TextButton.BackgroundTransparency = 1.000      
				TextButton.Size = UDIM2(0, txtGetTextSize(text, 14, Enum.Font.SourceSansSemibold, Vec2(700,700)).X + 2, 1, 0)      
				TextButton.Font = Enum.Font.SourceSansSemibold      
				TextButton.Text = text      
				TextButton.TextColor3 = COL3RGB(200, 200, 200)      
				TextButton.TextSize = 14.000      
				TextButton.Name = text      

				TextButton.MouseButton1DownConnect(function()      
					for i,v in pairs(InnerGetChildren()) do      
						v.Visible = false      
					end      
					for i,v in pairs(sectiontabsGetChildren()) do      
						if vIsA(TextButton) then      
							libraryTween(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})      
						end      
					end      
					Section.Size = tabsize      
					tab1.Visible = true      
					libraryTween(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
				end)      

				function tabElement(type, text, data, callback)      
					local Element = {}      
					data = data or {}      
					callback = callback or function() end      
					values[tabname][sectorname][tabtext][text] = {}      

					if type == Jumbobox then      
						tabsize = tabsize + UDIM2(0,0,0, 39)      
						Element.value = {Jumbobox = {}}      
						data.options = data.options or {}      

						local Dropdown = INST(Frame)      
						local Button = INST(TextButton)      
						local TextLabel = INST(TextLabel)      
						local Drop = INST(ScrollingFrame)      
						local Button_2 = INST(TextButton)      
						local TextLabel_2 = INST(TextLabel)      
						local UIListLayout = INST(UIListLayout)      
						local ImageLabel = INST(ImageLabel)      
						local TextLabel_3 = INST(TextLabel)      

						Dropdown.Name = Dropdown      
						Dropdown.Parent = tab1      
						Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Dropdown.BackgroundTransparency = 1.000      
						Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)      
						Dropdown.Size = UDIM2(1, 0, 0, 39)      

						Button.Name = Button      
						Button.Parent = Dropdown      
						Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Button.BorderColor3 = COL3RGB(27, 27, 35)      
						Button.Position = UDIM2(0, 30, 0, 16)      
						Button.Size = UDIM2(0, 175, 0, 17)      
						Button.AutoButtonColor = false      
						Button.Font = Enum.Font.SourceSans      
						Button.Text =       
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 14.000      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
						TextLabel.Position = UDIM2(0, 5, 0, 0)      
						TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = ...      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local abcd = TextLabel      

						Drop.Name = Drop      
						Drop.Parent = Button      
						Drop.Active = true      
						Drop.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Drop.BorderColor3 = COL3RGB(27, 27, 35)      
						Drop.Position = UDIM2(0, 0, 1, 1)      
						Drop.Size = UDIM2(1, 0, 0, 20)      
						Drop.Visible = false      
						Drop.BottomImage = httpwww.roblox.comassetid=6724808282      
						Drop.CanvasSize = UDIM2(0, 0, 0, 0)      
						Drop.ScrollBarThickness = 4      
						Drop.TopImage = httpwww.roblox.comassetid=6724808282      
						Drop.MidImage = httpwww.roblox.comassetid=6724808282      
						Drop.AutomaticCanvasSize = Y      
						Drop.ZIndex = 5      
						Drop.ScrollBarImageColor3 = COL3RGB(255, 37, 110)      

						UIListLayout.Parent = Drop      
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

						values[tabname][sectorname][tabtext][text] = Element.value      
						local num = #data.options      
						if num  5 then      
							Drop.Size = UDIM2(1, 0, 0, 85)      
						else      
							Drop.Size = UDIM2(1, 0, 0, 17num)      
						end      
						local first = true      

						local function updatetext()      
							local old = {}      
							for i,v in ipairs(data.options) do      
								if TBLFIND(Element.value.Jumbobox, v) then      
									INSERT(old, v)      
								else      
								end      
							end      
							local str =       


							if #old == 0 then      
								str = ...      
							else      
								if #old == 1 then      
									str = old[1]      
								else      
									for i,v in ipairs(old) do      
										if i == 1 then      
											str = v      
										else      
											if i  2 then      
												if i  4 then      
													str = str..,  ...      
												end      
											else      
												str = str..,  ..v      
											end      
										end      
									end      
								end      
							end      

							abcd.Text = str      
						end      
						for i,v in ipairs(data.options) do      
							do      
								local Button = INST(TextButton)      
								local TextLabel = INST(TextLabel)      

								Button.Name = v      
								Button.Parent = Drop      
								Button.BackgroundColor3 = COL3RGB(35, 35, 47)      
								Button.BorderColor3 = COL3RGB(27, 27, 35)      
								Button.Position = UDIM2(0, 30, 0, 16)      
								Button.Size = UDIM2(0, 175, 0, 17)      
								Button.AutoButtonColor = false      
								Button.Font = Enum.Font.SourceSans      
								Button.Text =       
								Button.TextColor3 = COL3RGB(0, 0, 0)      
								Button.TextSize = 14.000      
								Button.BorderSizePixel = 0      
								Button.ZIndex = 6      

								TextLabel.Parent = Button      
								TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
								TextLabel.BackgroundTransparency = 1.000      
								TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
								TextLabel.Position = UDIM2(0, 5, 0, -1)      
								TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
								TextLabel.Font = Enum.Font.SourceSansSemibold      
								TextLabel.Text = v      
								TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
								TextLabel.TextSize = 14.000      
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
								TextLabel.ZIndex = 6      

								Button.MouseButton1DownConnect(function()      
									if TBLFIND(Element.value.Jumbobox, v) then      
										for i,a in pairs(Element.value.Jumbobox) do      
											if a == v then      
												TBLREMOVE(Element.value.Jumbobox, i)      
											end      
										end      
										libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
									else      
										INSERT(Element.value.Jumbobox, v)      
										libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(175, 42, 86)})      
									end      
									updatetext()      

									values[tabname][sectorname][tabtext][text] = Element.value      
									callback(Element.value)      
								end)      
								Button.MouseEnterConnect(function()      
									if not TBLFIND(Element.value.Jumbobox, v) then      
										libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
									end      
								end)      
								Button.MouseLeaveConnect(function()      
									if not TBLFIND(Element.value.Jumbobox, v) then      
										libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
									end      
								end)      

								first = false      
							end      
						end      
						function ElementSetValue(val)      
							Element.value = val      
							for i,v in pairs(DropGetChildren()) do      
								if v.Name ~= UIListLayout then      
									if TBLFIND(val.Jumbobox, v.Name) then      
										v.TextLabel.TextColor3 = COL3RGB(175, 175, 175)      
									else      
										v.TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
									end      
								end      
							end      
							updatetext()      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(val)      
						end      
						if data.default then      
							ElementSetValue(data.default)      
						end      

						ImageLabel.Parent = Button      
						ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						ImageLabel.BackgroundTransparency = 1.000      
						ImageLabel.Position = UDIM2(0, 165, 0, 6)      
						ImageLabel.Size = UDIM2(0, 6, 0, 4)      
						ImageLabel.Image = httpwww.roblox.comassetid=6724771531      

						TextLabel_3.Parent = Dropdown      
						TextLabel_3.BackgroundColor3 = COL3RGB(200, 200, 200)      
						TextLabel_3.BackgroundTransparency = 1.000      
						TextLabel_3.Position = UDIM2(0, 32, 0, -1)      
						TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)      
						TextLabel_3.Font = Enum.Font.SourceSansSemibold      
						TextLabel_3.Text = text      
						TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel_3.TextSize = 14.000      
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left      

						Button.MouseButton1DownConnect(function()      
							Drop.Visible = not Drop.Visible      
							if not Drop.Visible then      
								Drop.CanvasPosition = Vec2(0,0)      
							end      
						end)      
						local indrop = false      
						local ind = false      
						Drop.MouseEnterConnect(function()      
							indrop = true      
						end)      
						Drop.MouseLeaveConnect(function()      
							indrop = false      
						end)      
						Button.MouseEnterConnect(function()      
							ind = true      
						end)      
						Button.MouseLeaveConnect(function()      
							ind = false      
						end)      
						gameGetService(UserInputService).InputBeganConnect(function(input)      
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
								if Drop.Visible == true and not indrop and not ind then      
									Drop.Visible = false      
									Drop.CanvasPosition = Vec2(0,0)      
								end      
							end      
						end)      
					elseif type == TextBox then      

					elseif type == ToggleKeybind then      
						tabsize = tabsize + UDIM2(0,0,0,16)      
						Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = Always, Active = true}      

						local Toggle = INST(Frame)      
						local Button = INST(TextButton)      
						local Color = INST(Frame)      
						local TextLabel = INST(TextLabel)      

						Toggle.Name = Toggle      
						Toggle.Parent = tab1      
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.Size = UDIM2(1, 0, 0, 15)      

						Button.Name = Button      
						Button.Parent = Toggle      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Size = UDIM2(1, 0, 1, 0)      
						Button.Font = Enum.Font.SourceSans      
						Button.Text =       
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 14.000      

						Color.Name = Color      
						Color.Parent = Button      
						Color.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Color.BorderColor3 = COL3RGB(27, 3275, 35)      
						Color.Position = UDIM2(0, 15, 0.5, -5)      
						Color.Size = UDIM2(0, 8, 0, 8)      
						local binding = false      
						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -1)      
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = text      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local function update()      
							if Element.value.Toggle then      
								tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 22, 66)})      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							else      
								keybindremove(text)      
								tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
							end      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(Element.value)      
						end      

						Button.MouseButton1DownConnect(function()      
							if not binding then      
								Element.value.Toggle = not Element.value.Toggle      
								update()      
								values[tabname][sectorname][tabtext][text] = Element.value      
								callback(Element.value)      
							end      
						end)      
						if data.default then      
							update()      
						end      
						values[tabname][sectorname][tabtext][text] = Element.value      
						do      
							local Keybind = INST(TextButton)      
							local Frame = INST(Frame)      
							local Always = INST(TextButton)      
							local UIListLayout = INST(UIListLayout)      
							local Hold = INST(TextButton)      
							local Toggle = INST(TextButton)      

							Keybind.Name = Keybind      
							Keybind.Parent = Button      
							Keybind.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Keybind.BorderColor3 = COL3RGB(27, 27, 35)      
							Keybind.Position = UDIM2(0, 270, 0.5, -6)      
							Keybind.Text = NONE      
							Keybind.Size = UDIM2(0, 43, 0, 12)      
							Keybind.Size = UDIM2(0,txtGetTextSize(NONE, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 5,0, 12)      
							Keybind.AutoButtonColor = false      
							Keybind.Font = Enum.Font.SourceSansSemibold      
							Keybind.TextColor3 = COL3RGB(200, 200, 200)      
							Keybind.TextSize = 14.000      
							Keybind.AnchorPoint = Vec2(1,0)      
							Keybind.ZIndex = 3      

							Frame.Parent = Keybind      
							Frame.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Frame.BorderColor3 = COL3RGB(27, 27, 35)      
							Frame.Position = UDIM2(1, -49, 0, 1)      
							Frame.Size = UDIM2(0, 49, 0, 49)      
							Frame.Visible = false      
							Frame.ZIndex = 3      

							Always.Name = Always      
							Always.Parent = Frame      
							Always.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Always.BackgroundTransparency = 1.000      
							Always.BorderColor3 = COL3RGB(27, 27, 35)      
							Always.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
							Always.Size = UDIM2(1, 0, 0, 16)      
							Always.AutoButtonColor = false      
							Always.Font = Enum.Font.SourceSansBold      
							Always.Text = Always      
							Always.TextColor3 = COL3RGB(173, 24, 74)      
							Always.TextSize = 14.000      
							Always.ZIndex = 3      

							UIListLayout.Parent = Frame      
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

							Hold.Name = Hold      
							Hold.Parent = Frame      
							Hold.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Hold.BackgroundTransparency = 1.000      
							Hold.BorderColor3 = COL3RGB(27, 27, 35)      
							Hold.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
							Hold.Size = UDIM2(1, 0, 0, 16)      
							Hold.AutoButtonColor = false      
							Hold.Font = Enum.Font.SourceSansSemibold      
							Hold.Text = Hold      
							Hold.TextColor3 = COL3RGB(200, 200, 200)      
							Hold.TextSize = 14.000      
							Hold.ZIndex = 3      

							Toggle.Name = Toggle      
							Toggle.Parent = Frame      
							Toggle.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Toggle.BackgroundTransparency = 1.000      
							Toggle.BorderColor3 = COL3RGB(27, 27, 35)      
							Toggle.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
							Toggle.Size = UDIM2(1, 0, 0, 16)      
							Toggle.AutoButtonColor = false      
							Toggle.Font = Enum.Font.SourceSansSemibold      
							Toggle.Text = Toggle      
							Toggle.TextColor3 = COL3RGB(200, 200, 200)      
							Toggle.TextSize = 14.000      
							Toggle.ZIndex = 3      

							for _,button in pairs(FrameGetChildren()) do      
								if buttonIsA(TextButton) then      
									button.MouseButton1DownConnect(function()      
										Element.value.Type = button.Text      
										Frame.Visible = false      
										Element.value.Active = Element.value.Type == Always and true or false      
										if Element.value.Type == Always then      
											keybindremove(text)      
										end      
										for _,button in pairs(FrameGetChildren()) do      
											if buttonIsA(TextButton) and button.Text ~= Element.value.Type then      
												button.Font = Enum.Font.SourceSansSemibold      
												libraryTween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})      
											end      
										end      
										button.Font = Enum.Font.SourceSansBold      
										button.TextColor3 = COL3RGB(60, 0, 90)      
										values[tabname][sectorname][tabtext][text] = Element.value      
										callback(Element.value)      
									end)      
									button.MouseEnterConnect(function()      
										if Element.value.Type ~= button.Text then      
											libraryTween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255,255,255)})      
										end      
									end)      
									button.MouseLeaveConnect(function()      
										if Element.value.Type ~= button.Text then      
											libraryTween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})      
										end      
									end)      
								end      
							end      
							Keybind.MouseButton1DownConnect(function()      
								if not binding then      
									wait()      
									binding = true      
									Keybind.Text = ...      
									Keybind.Size = UDIM2(0,txtGetTextSize(..., 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 4,0, 12)      
								end      
							end)      
							Keybind.MouseButton2DownConnect(function()      
								if not binding then      
									Frame.Visible = not Frame.Visible      
								end      
							end)      
							local Player = game.Players.LocalPlayer      
							local Mouse = PlayerGetMouse()      
							local InFrame = false      
							Frame.MouseEnterConnect(function()      
								InFrame = true      
							end)      
							Frame.MouseLeaveConnect(function()      
								InFrame = false      
							end)      
							local InFrame2 = false      
							Keybind.MouseEnterConnect(function()      
								InFrame2 = true      
							end)      
							Keybind.MouseLeaveConnect(function()      
								InFrame2 = false      
							end)      
							gameGetService(UserInputService).InputBeganConnect(function(input)      
								if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then      
									if Frame.Visible == true and not InFrame and not InFrame2 then      
										Frame.Visible = false      
									end      
								end      
								if binding then      
									binding = false      
									Keybind.Text = input.KeyCode.Name ~= Unknown and input.KeyCode.Nameupper() or input.UserInputType.Nameupper()      
									Keybind.Size = UDIM2(0,txtGetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 5,0, 12)      
									Element.value.Key = input.KeyCode.Name ~= Unknown and input.KeyCode.Name or input.UserInputType.Name      
									if input.KeyCode.Name == Backspace then      
										Keybind.Text = NONE      
										Keybind.Size = UDIM2(0,txtGetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 4,0, 12)      
										Element.value.Key = nil      
									end      
								else      
									if Element.value.Key ~= nil then      
										if FIND(Element.value.Key, Mouse) then      
											if input.UserInputType == Enum.UserInputType[Element.value.Key] then      
												if Element.value.Type == Hold then      
													Element.value.Active = true      
													if Element.value.Active and Element.value.Toggle then      
														keybindadd(text)      
													else      
														keybindremove(text)      
													end      
												elseif Element.value.Type == Toggle then      
													Element.value.Active = not Element.value.Active      
													if Element.value.Active and Element.value.Toggle then      
														keybindadd(text)      
													else      
														keybindremove(text)      
													end      
												end      
											end      
										else      
											if input.KeyCode == Enum.KeyCode[Element.value.Key] then      
												if Element.value.Type == Hold then      
													Element.value.Active = true      
													if Element.value.Active and Element.value.Toggle then      
														keybindadd(text)      
													else      
														keybindremove(text)      
													end      
												elseif Element.value.Type == Toggle then      
													Element.value.Active = not Element.value.Active      
													if Element.value.Active and Element.value.Toggle then      
														keybindadd(text)      
													else      
														keybindremove(text)      
													end      
												end      
											end      
										end      
									else      
										Element.value.Active = true      
									end      
								end      
								values[tabname][sectorname][tabtext][text] = Element.value      
								callback(Element.value)      
							end)      
							gameGetService(UserInputService).InputEndedConnect(function(input)      
								if Element.value.Key ~= nil then      
									if FIND(Element.value.Key, Mouse) then      
										if input.UserInputType == Enum.UserInputType[Element.value.Key] then      
											if Element.value.Type == Hold then      
												Element.value.Active = false      
												if Element.value.Active and Element.value.Toggle then      
													keybindadd(text)      
												else      
													keybindremove(text)      
												end      
											end      
										end      
									else      
										if input.KeyCode == Enum.KeyCode[Element.value.Key] then      
											if Element.value.Type == Hold then      
												Element.value.Active = false      
												if Element.value.Active and Element.value.Toggle then      
													keybindadd(text)      
												else      
													keybindremove(text)      
												end      
											end      
										end      
									end      
								end      
								values[tabname][sectorname][tabtext][text] = Element.value      
								callback(Element.value)      
							end)      
						end      
						function ElementSetValue(value)      
							Element.value = value      
							update()      
						end      
					elseif type == Toggle then      
						tabsize = tabsize + UDIM2(0,0,0,16)      
						Element.value = {Toggle = data.default and data.default.Toggle or false}      

						local Toggle = INST(Frame)      
						local Button = INST(TextButton)      
						local Color = INST(Frame)      
						local TextLabel = INST(TextLabel)      

						Toggle.Name = Toggle      
						Toggle.Parent = tab1      
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.Size = UDIM2(1, 0, 0, 15)      

						Button.Name = Button      
						Button.Parent = Toggle      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Size = UDIM2(1, 0, 1, 0)      
						Button.Font = Enum.Font.SourceSans      
						Button.Text =       
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 14.000      

						Color.Name = Color      
						Color.Parent = Button      
						Color.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Color.BorderColor3 = COL3RGB(27, 27, 35)      
						Color.Position = UDIM2(0, 15, 0.5, -5)      
						Color.Size = UDIM2(0, 8, 0, 8)      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -1)      
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = text      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local function update()      
							if Element.value.Toggle then      
								tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 22, 66)})      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							else      
								keybindremove(text)      
								tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
							end      
							values[tabname][sectorname][tabtext][text] = Element.value      
						end      

						Button.MouseButton1DownConnect(function()      
							Element.value.Toggle = not Element.value.Toggle      
							update()      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(Element.value)      
						end)      
						if data.default then      
							update()      
						end      
						values[tabname][sectorname][tabtext][text] = Element.value      
						function ElementSetValue(value)      
							Element.value = value      
							values[tabname][sectorname][tabtext][text] = Element.value      
							update()      
							callback(Element.value)      
						end      
					elseif type == ToggleColor then      
						tabsize = tabsize + UDIM2(0,0,0,16)      
						Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255)}      

						local Toggle = INST(Frame)      
						local Button = INST(TextButton)      
						local Color = INST(Frame)      
						local TextLabel = INST(TextLabel)      

						Toggle.Name = Toggle      
						Toggle.Parent = tab1      
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.Size = UDIM2(1, 0, 0, 15)      

						Button.Name = Button      
						Button.Parent = Toggle      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Size = UDIM2(1, 0, 1, 0)      
						Button.Font = Enum.Font.SourceSans      
						Button.Text =       
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 14.000      

						Color.Name = Color      
						Color.Parent = Button      
						Color.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Color.BorderColor3 = COL3RGB(27, 27, 35)      
						Color.Position = UDIM2(0, 15, 0.5, -5)      
						Color.Size = UDIM2(0, 8, 0, 8)      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -1)      
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = text      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local function update()      
							if Element.value.Toggle then      
								tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 155, 155)})      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							else      
								tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
							end      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(Element.value)      
						end      

						local ColorH,ColorS,ColorV      

						local ColorP = INST(TextButton)      
						local Frame = INST(Frame)      
						local Colorpick = INST(ImageButton)      
						local ColorDrag = INST(Frame)      
						local Huepick = INST(ImageButton)      
						local Huedrag = INST(Frame)      

						ColorP.Name = ColorP      
						ColorP.Parent = Button      
						ColorP.AnchorPoint = Vec2(1, 0)      
						ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)      
						ColorP.BorderColor3 = COL3RGB(27, 27, 35)      
						ColorP.Position = UDIM2(0, 270, 0.5, -4)      
						ColorP.Size = UDIM2(0, 18, 0, 8)      
						ColorP.AutoButtonColor = false      
						ColorP.Font = Enum.Font.SourceSansSemibold      
						ColorP.Text =       
						ColorP.TextColor3 = COL3RGB(200, 200, 200)      
						ColorP.TextSize = 14.000      

						Frame.Parent = ColorP      
						Frame.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Frame.BorderColor3 = COL3RGB(27, 27, 35)      
						Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)      
						Frame.Size = UDIM2(0, 200, 0, 170)      
						Frame.Visible = false      
						Frame.ZIndex = 3      

						Colorpick.Name = Colorpick      
						Colorpick.Parent = Frame      
						Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Colorpick.BorderColor3 = COL3RGB(27, 27, 35)      
						Colorpick.ClipsDescendants = false      
						Colorpick.Position = UDIM2(0, 40, 0, 10)      
						Colorpick.Size = UDIM2(0, 150, 0, 150)      
						Colorpick.AutoButtonColor = false      
						Colorpick.Image = rbxassetid4155801252      
						Colorpick.ImageColor3 = COL3RGB(255, 0, 0)      
						Colorpick.ZIndex = 3      

						ColorDrag.Name = ColorDrag      
						ColorDrag.Parent = Colorpick      
						ColorDrag.AnchorPoint = Vec2(0.5, 0.5)      
						ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						ColorDrag.BorderColor3 = COL3RGB(27, 27, 35)      
						ColorDrag.Size = UDIM2(0, 4, 0, 4)      
						ColorDrag.ZIndex = 3      

						Huepick.Name = Huepick      
						Huepick.Parent = Frame      
						Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Huepick.BorderColor3 = COL3RGB(27, 27, 35)      
						Huepick.ClipsDescendants = false      
						Huepick.Position = UDIM2(0, 10, 0, 10)      
						Huepick.Size = UDIM2(0, 20, 0, 150)      
						Huepick.AutoButtonColor = false      
						Huepick.Image = rbxassetid3641079629      
						Huepick.ImageColor3 = COL3RGB(255, 0, 0)      
						Huepick.ImageTransparency = 1      
						Huepick.BackgroundTransparency = 0      
						Huepick.ZIndex = 3      

						local HueFrameGradient = INST(UIGradient)      
						HueFrameGradient.Rotation = 90      
						HueFrameGradient.Name = HueFrameGradient      
						HueFrameGradient.Parent = Huepick      
						HueFrameGradient.Color = ColorSequence.new {      
							ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),      
							ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),      
							ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),      
							ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),      
							ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),      
							ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),      
							ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))      
						}	      

						Huedrag.Name = Huedrag      
						Huedrag.Parent = Huepick      
						Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Huedrag.BorderColor3 = COL3RGB(27, 27, 35)      
						Huedrag.Size = UDIM2(1, 0, 0, 2)      
						Huedrag.ZIndex = 3      

						ColorP.MouseButton1DownConnect(function()      
							Frame.Visible = not Frame.Visible      
						end)      
						local abc = false      
						local inCP = false      
						ColorP.MouseEnterConnect(function()      
							abc = true      
						end)      
						ColorP.MouseLeaveConnect(function()      
							abc = false      
						end)      
						Frame.MouseEnterConnect(function()      
							inCP = true      
						end)      
						Frame.MouseLeaveConnect(function()      
							inCP = false      
						end)      

						ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)Huepick.AbsoluteSize.Y)      
						ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)Colorpick.AbsoluteSize.X)      
						ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)Colorpick.AbsoluteSize.Y)      

						if data.default.Color ~= nil then      
							ColorH, ColorS, ColorV = data.default.ColorToHSV()      

							ColorH = CLAMP(ColorH,0,1)      
							ColorS = CLAMP(ColorS,0,1)      
							ColorV = CLAMP(ColorV,0,1)      
							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      

							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      
						end      

						local mouse = LocalPlayerGetMouse()      
						gameGetService(UserInputService).InputBeganConnect(function(input)      
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
								if not dragging and not abc and not inCP then      
									Frame.Visible = false      
								end      
							end      
						end)      

						local function updateColor()      
							local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)Colorpick.AbsoluteSize.X)      
							local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)Colorpick.AbsoluteSize.Y)      
							ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)      
							ColorS = 1-ColorX      
							ColorV = 1-ColorY      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							values[tabname][sectorname][tabtext][text] = Element.value      
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
							callback(Element.value)      
						end      
						local function updateHue()      
							local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)      
							Huedrag.Position = UDIM2(0, 0, 0, y)      
							hue = y148      
							ColorH = 1-hue      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							values[tabname][sectorname][tabtext][text] = Element.value      
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
							callback(Element.value)      
						end      
						Colorpick.MouseButton1DownConnect(function()      
							updateColor()      
							moveconnection = mouse.MoveConnect(function()      
								updateColor()      
							end)      
							releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
									updateColor()      
									moveconnectionDisconnect()      
									releaseconnectionDisconnect()      
								end      
							end)      
						end)      
						Huepick.MouseButton1DownConnect(function()      
							updateHue()      
							moveconnection = mouse.MoveConnect(function()      
								updateHue()      
							end)      
							releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
									updateHue()      
									moveconnectionDisconnect()      
									releaseconnectionDisconnect()      
								end      
							end)      
						end)      

						Button.MouseButton1DownConnect(function()      
							Element.value.Toggle = not Element.value.Toggle      
							update()      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(Element.value)      
						end)      
						if data.default then      
							update()      
						end      
						values[tabname][sectorname][tabtext][text] = Element.value      
						function ElementSetValue(value)      
							Element.value = value      
							local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)      
							ColorH, ColorS, ColorV = duplicateToHSV()      
							ColorH = CLAMP(ColorH,0,1)      
							ColorS = CLAMP(ColorS,0,1)      
							ColorV = CLAMP(ColorV,0,1)      

							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							update()      
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      
						end      
					elseif type == ToggleTrans then      
						tabsize = tabsize + UDIM2(0,0,0,16)      
						Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}      

						local Toggle = INST(Frame)      
						local Button = INST(TextButton)      
						local Color = INST(Frame)      
						local TextLabel = INST(TextLabel)      

						Toggle.Name = Toggle      
						Toggle.Parent = tab1      
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.Size = UDIM2(1, 0, 0, 15)      

						Button.Name = Button      
						Button.Parent = Toggle      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Size = UDIM2(1, 0, 1, 0)      
						Button.Font = Enum.Font.SourceSans      
						Button.Text =       
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 14.000      

						Color.Name = Color      
						Color.Parent = Button      
						Color.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Color.BorderColor3 = COL3RGB(27, 27, 35)      
						Color.Position = UDIM2(0, 15, 0.5, -5)      
						Color.Size = UDIM2(0, 8, 0, 8)      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -1)      
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = text      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local function update()      
							if Element.value.Toggle then      
								tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 155, 155)})      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							else      
								tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
							end      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(Element.value)      
						end      

						local ColorH,ColorS,ColorV      

						local ColorP = INST(TextButton)      
						local Frame = INST(Frame)      
						local Colorpick = INST(ImageButton)      
						local ColorDrag = INST(Frame)      
						local Huepick = INST(ImageButton)      
						local Huedrag = INST(Frame)      

						ColorP.Name = ColorP      
						ColorP.Parent = Button      
						ColorP.AnchorPoint = Vec2(1, 0)      
						ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)      
						ColorP.BorderColor3 = COL3RGB(27, 27, 35)      
						ColorP.Position = UDIM2(0, 270, 0.5, -4)      
						ColorP.Size = UDIM2(0, 18, 0, 8)      
						ColorP.AutoButtonColor = false      
						ColorP.Font = Enum.Font.SourceSansSemibold      
						ColorP.Text =       
						ColorP.TextColor3 = COL3RGB(200, 200, 200)      
						ColorP.TextSize = 14.000      

						Frame.Parent = ColorP      
						Frame.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Frame.BorderColor3 = COL3RGB(27, 27, 35)      
						Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)      
						Frame.Size = UDIM2(0, 200, 0, 190)      
						Frame.Visible = false      
						Frame.ZIndex = 3      

						Colorpick.Name = Colorpick      
						Colorpick.Parent = Frame      
						Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Colorpick.BorderColor3 = COL3RGB(27, 27, 35)      
						Colorpick.ClipsDescendants = false      
						Colorpick.Position = UDIM2(0, 40, 0, 10)      
						Colorpick.Size = UDIM2(0, 150, 0, 150)      
						Colorpick.AutoButtonColor = false      
						Colorpick.Image = rbxassetid4155801252      
						Colorpick.ImageColor3 = COL3RGB(255, 0, 0)      
						Colorpick.ZIndex = 3      

						ColorDrag.Name = ColorDrag      
						ColorDrag.Parent = Colorpick      
						ColorDrag.AnchorPoint = Vec2(0.5, 0.5)      
						ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						ColorDrag.BorderColor3 = COL3RGB(27, 27, 35)      
						ColorDrag.Size = UDIM2(0, 4, 0, 4)      
						ColorDrag.ZIndex = 3      

						Huepick.Name = Huepick      
						Huepick.Parent = Frame      
						Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Huepick.BorderColor3 = COL3RGB(27, 27, 35)      
						Huepick.ClipsDescendants = true      
						Huepick.Position = UDIM2(0, 10, 0, 10)      
						Huepick.Size = UDIM2(0, 20, 0, 150)      
						Huepick.AutoButtonColor = false      
						Huepick.Image = rbxassetid3641079629      
						Huepick.ImageColor3 = COL3RGB(255, 0, 0)      
						Huepick.ImageTransparency = 1      
						Huepick.BackgroundTransparency = 0      
						Huepick.ZIndex = 3      

						local HueFrameGradient = INST(UIGradient)      
						HueFrameGradient.Rotation = 90      
						HueFrameGradient.Name = HueFrameGradient      
						HueFrameGradient.Parent = Huepick      
						HueFrameGradient.Color = ColorSequence.new {      
							ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),      
							ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),      
							ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),      
							ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),      
							ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),      
							ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),      
							ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))      
						}	      

						Huedrag.Name = Huedrag      
						Huedrag.Parent = Huepick      
						Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Huedrag.BorderColor3 = COL3RGB(27, 27, 35)      
						Huedrag.Size = UDIM2(1, 0, 0, 2)      
						Huedrag.ZIndex = 3      

						local Transpick = INST(ImageButton)      
						local Transcolor = INST(ImageLabel)      
						local Transdrag = INST(Frame)      

						Transpick.Name = Transpick      
						Transpick.Parent = Frame      
						Transpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Transpick.BorderColor3 = COL3RGB(27, 27, 35)      
						Transpick.Position = UDIM2(0, 10, 0, 167)      
						Transpick.Size = UDIM2(0, 180, 0, 15)      
						Transpick.AutoButtonColor = false      
						Transpick.Image = rbxassetid3887014957      
						Transpick.ScaleType = Enum.ScaleType.Tile      
						Transpick.TileSize = UDIM2(0, 10, 0, 10)      
						Transpick.ZIndex = 3      

						Transcolor.Name = Transcolor      
						Transcolor.Parent = Transpick      
						Transcolor.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Transcolor.BackgroundTransparency = 1.000      
						Transcolor.Size = UDIM2(1, 0, 1, 0)      
						Transcolor.Image = rbxassetid3887017050      
						Transcolor.ImageColor3 = COL3RGB(255, 0, 4)      
						Transcolor.ZIndex = 3      

						Transdrag.Name = Transdrag      
						Transdrag.Parent = Transcolor      
						Transdrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Transdrag.BorderColor3 = COL3RGB(27, 27, 35)      
						Transdrag.Position = UDIM2(0, -1, 0, 0)      
						Transdrag.Size = UDIM2(0, 2, 1, 0)      
						Transdrag.ZIndex = 3      

						ColorP.MouseButton1DownConnect(function()      
							Frame.Visible = not Frame.Visible      
						end)      
						local abc = false      
						local inCP = false      
						ColorP.MouseEnterConnect(function()      
							abc = true      
						end)      
						ColorP.MouseLeaveConnect(function()      
							abc = false      
						end)      
						Frame.MouseEnterConnect(function()      
							inCP = true      
						end)      
						Frame.MouseLeaveConnect(function()      
							inCP = false      
						end)      

						ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)Huepick.AbsoluteSize.Y)      
						ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)Colorpick.AbsoluteSize.X)      
						ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)Colorpick.AbsoluteSize.Y)      

						if data.default.Color ~= nil then      
							ColorH, ColorS, ColorV = data.default.ColorToHSV()      

							ColorH = CLAMP(ColorH,0,1)      
							ColorS = CLAMP(ColorS,0,1)      
							ColorV = CLAMP(ColorV,0,1)      
							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      

							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      

							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      
						end      
						if data.default.Transparency ~= nil then      
							Transdrag.Position = UDIM2(data.default.Transparency, -1, 0, 0)      
						end      
						local mouse = LocalPlayerGetMouse()      
						gameGetService(UserInputService).InputBeganConnect(function(input)      
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
								if not dragging and not abc and not inCP then      
									Frame.Visible = false      
								end      
							end      
						end)      

						local function updateColor()      
							local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)Colorpick.AbsoluteSize.X)      
							local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)Colorpick.AbsoluteSize.Y)      
							ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)      
							ColorS = 1-ColorX      
							ColorV = 1-ColorY      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							values[tabname][sectorname][tabtext][text] = Element.value      
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
							callback(Element.value)      
						end      
						local function updateHue()      
							local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)      
							Huedrag.Position = UDIM2(0, 0, 0, y)      
							hue = y148      
							ColorH = 1-hue      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							values[tabname][sectorname][tabtext][text] = Element.value      
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
							callback(Element.value)      
						end      
						local function updateTrans()      
							local x = CLAMP(mouse.X - Transpick.AbsolutePosition.X, 0, 178)      
							Transdrag.Position = UDIM2(0, x, 0, 0)      
							Element.value.Transparency = (x178)      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(Element.value)      
						end      
						Transpick.MouseButton1DownConnect(function()      
							updateTrans()      
							moveconnection = mouse.MoveConnect(function()      
								updateTrans()      
							end)      
							releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
									updateTrans()      
									moveconnectionDisconnect()      
									releaseconnectionDisconnect()      
								end      
							end)      
						end)      
						Colorpick.MouseButton1DownConnect(function()      
							updateColor()      
							moveconnection = mouse.MoveConnect(function()      
								updateColor()      
							end)      
							releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
									updateColor()      
									moveconnectionDisconnect()      
									releaseconnectionDisconnect()      
								end      
							end)      
						end)      
						Huepick.MouseButton1DownConnect(function()      
							updateHue()      
							moveconnection = mouse.MoveConnect(function()      
								updateHue()      
							end)      
							releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
									updateHue()      
									moveconnectionDisconnect()      
									releaseconnectionDisconnect()      
								end      
							end)      
						end)      

						Button.MouseButton1DownConnect(function()      
							Element.value.Toggle = not Element.value.Toggle      
							update()      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(Element.value)      
						end)      
						if data.default then      
							update()      
						end      
						values[tabname][sectorname][tabtext][text] = Element.value      
						function ElementSetValue(value)      
							Element.value = value      
							local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)      
							ColorH, ColorS, ColorV = duplicateToHSV()      
							ColorH = CLAMP(ColorH,0,1)      
							ColorS = CLAMP(ColorS,0,1)      
							ColorV = CLAMP(ColorV,0,1)      

							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							update()      
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      
						end      
					elseif type == Dropdown then      
						tabsize = tabsize + UDIM2(0,0,0,39)      
						Element.value = {Dropdown = data.options[1]}      

						local Dropdown = INST(Frame)      
						local Button = INST(TextButton)      
						local TextLabel = INST(TextLabel)      
						local Drop = INST(ScrollingFrame)      
						local Button_2 = INST(TextButton)      
						local TextLabel_2 = INST(TextLabel)      
						local UIListLayout = INST(UIListLayout)      
						local ImageLabel = INST(ImageLabel)      
						local TextLabel_3 = INST(TextLabel)      

						Dropdown.Name = Dropdown      
						Dropdown.Parent = tab1      
						Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Dropdown.BackgroundTransparency = 1.000      
						Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)      
						Dropdown.Size = UDIM2(1, 0, 0, 39)      

						Button.Name = Button      
						Button.Parent = Dropdown      
						Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Button.BorderColor3 = COL3RGB(27, 27, 35)      
						Button.Position = UDIM2(0, 30, 0, 16)      
						Button.Size = UDIM2(0, 175, 0, 17)      
						Button.AutoButtonColor = false      
						Button.Font = Enum.Font.SourceSans      
						Button.Text =       
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 14.000      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
						TextLabel.Position = UDIM2(0, 5, 0, 0)      
						TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = Element.value.Dropdown      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local abcd = TextLabel      

						Drop.Name = Drop      
						Drop.Parent = Button      
						Drop.Active = true      
						Drop.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Drop.BorderColor3 = COL3RGB(27, 27, 35)      
						Drop.Position = UDIM2(0, 0, 1, 1)      
						Drop.Size = UDIM2(1, 0, 0, 20)      
						Drop.Visible = false      
						Drop.BottomImage = httpwww.roblox.comassetid=6724808282      
						Drop.CanvasSize = UDIM2(0, 0, 0, 0)      
						Drop.ScrollBarThickness = 4      
						Drop.MidImage = httpwww.roblox.comassetid=6724808282      
						Drop.TopImage = httpwww.roblox.comassetid=6724808282      
						Drop.AutomaticCanvasSize = Y      
						Drop.ZIndex = 5      
						Drop.ScrollBarImageColor3 = COL3RGB(255, 37, 110)      

						UIListLayout.Parent = Drop      
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

						local num = #data.options      
						if num  5 then      
							Drop.Size = UDIM2(1, 0, 0, 85)      
						else      
							Drop.Size = UDIM2(1, 0, 0, 17num)      
						end      
						Drop.CanvasSize = UDIM2(1, 0, 0, 17num)      
						local first = true      
						for i,v in ipairs(data.options) do      
							do      
								local Button = INST(TextButton)      
								local TextLabel = INST(TextLabel)      

								Button.Name = v      
								Button.Parent = Drop      
								Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
								Button.BorderColor3 = COL3RGB(27, 27, 35)      
								Button.Position = UDIM2(0, 30, 0, 16)      
								Button.Size = UDIM2(0, 175, 0, 17)      
								Button.AutoButtonColor = false      
								Button.Font = Enum.Font.SourceSans      
								Button.Text =       
								Button.TextColor3 = COL3RGB(0, 0, 0)      
								Button.TextSize = 14.000      
								Button.BorderSizePixel = 0      
								Button.ZIndex = 6      

								TextLabel.Parent = Button      
								TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
								TextLabel.BackgroundTransparency = 1.000      
								TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
								TextLabel.Position = UDIM2(0, 5, 0, -1)      
								TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
								TextLabel.Font = Enum.Font.SourceSansSemibold      
								TextLabel.Text = v      
								TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
								TextLabel.TextSize = 14.000      
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
								TextLabel.ZIndex = 6      

								Button.MouseButton1DownConnect(function()      
									Drop.Visible = false      
									Element.value.Dropdown = v      
									abcd.Text = v      
									values[tabname][sectorname][tabtext][text] = Element.value      
									callback(Element.value)      
									Drop.CanvasPosition = Vec2(0,0)      
								end)      
								Button.MouseEnterConnect(function()      
									libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)})      
								end)      
								Button.MouseLeaveConnect(function()      
									libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(200, 200, 200)})      
								end)      

								first = false      
							end      
						end      

						function ElementSetValue(val)      
							Element.value = val      
							abcd.Text = val.Dropdown      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(val)      
						end      

						ImageLabel.Parent = Button      
						ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						ImageLabel.BackgroundTransparency = 1.000      
						ImageLabel.Position = UDIM2(0, 165, 0, 6)      
						ImageLabel.Size = UDIM2(0, 6, 0, 4)      
						ImageLabel.Image = httpwww.roblox.comassetid=6724771531      

						TextLabel_3.Parent = Dropdown      
						TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel_3.BackgroundTransparency = 1.000      
						TextLabel_3.Position = UDIM2(0, 32, 0, -1)      
						TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)      
						TextLabel_3.Font = Enum.Font.SourceSansSemibold      
						TextLabel_3.Text = text      
						TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel_3.TextSize = 14.000      
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left      

						Button.MouseButton1DownConnect(function()      
							Drop.Visible = not Drop.Visible      
							if not Drop.Visible then      
								Drop.CanvasPosition = Vec2(0,0)      
							end      
						end)      
						local indrop = false      
						local ind = false      
						Drop.MouseEnterConnect(function()      
							indrop = true      
						end)      
						Drop.MouseLeaveConnect(function()      
							indrop = false      
						end)      
						Button.MouseEnterConnect(function()      
							ind = true      
						end)      
						Button.MouseLeaveConnect(function()      
							ind = false      
						end)      
						gameGetService(UserInputService).InputBeganConnect(function(input)      
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
								if Drop.Visible == true and not indrop and not ind then      
									Drop.Visible = false      
									Drop.CanvasPosition = Vec2(0,0)      
								end      
							end      
						end)      
						values[tabname][sectorname][tabtext][text] = Element.value      
					elseif type == Slider then      

						tabsize = tabsize + UDIM2(0,0,0,25)      

						local Slider = INST(Frame)      
						local TextLabel = INST(TextLabel)      
						local Button = INST(TextButton)      
						local Frame = INST(Frame)      
						local UIGradient = INST(UIGradient)      
						local Value = INST(TextLabel)      

						Slider.Name = Slider      
						Slider.Parent = tab1      
						Slider.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Slider.BackgroundTransparency = 1.000      
						Slider.Position = UDIM2(0, 0, 0.653061211, 0)      
						Slider.Size = UDIM2(1, 0, 0, 25)      

						TextLabel.Parent = Slider      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -2)      
						TextLabel.Size = UDIM2(0, 100, 0, 15)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = text      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						Button.Name = Button      
						Button.Parent = Slider      
						Button.BackgroundColor3 = COL3RGB(35, 37, 47)      
						Button.BorderColor3 = COL3RGB(27, 27, 35)      
						Button.Position = UDIM2(0, 30, 0, 15)      
						Button.Size = UDIM2(0, 175, 0, 5)      
						Button.AutoButtonColor = false      
						Button.Font = Enum.Font.SourceSans      
						Button.Text =       
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 14.000      

						Frame.Parent = Button      
						Frame.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Frame.BorderSizePixel = 0      
						Frame.Size = UDIM2(0.5, 0, 1, 0)      

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, COL3RGB(153, 22, 65)), ColorSequenceKeypoint.new(1, COL3RGB(109, 16, 46))}      
						UIGradient.Rotation = 90      
						UIGradient.Parent = Frame      

						Value.Name = Value      
						Value.Parent = Slider      
						Value.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Value.BackgroundTransparency = 1.000      
						Value.Position = UDIM2(0, 150, 0, -1)      
						Value.Size = UDIM2(0, 55, 0, 15)      
						Value.Font = Enum.Font.SourceSansSemibold      
						Value.Text = 50      
						Value.TextColor3 = COL3RGB(200, 200, 200)      
						Value.TextSize = 14.000      
						Value.TextXAlignment = Enum.TextXAlignment.Right      
						local min, max, default = data.min or 0, data.max or 100, data.default or 0      
						Element.value = {Slider = default}      

						function ElementSetValue(value)      
							Element.value = value      
							local a      
							if min  0 then      
								a = ((Element.value.Slider - min))  (max-min)      
							else      
								a = (Element.value.Slider-min)(max-min)      
							end      
							Value.Text = Element.value.Slider      
							Frame.Size = UDIM2(a,0,1,0)      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(value)      
						end      
						local a      
						if min  0 then      
							a = ((Element.value.Slider - min))  (max-min)      
						else      
							a = (Element.value.Slider-min)(max-min)      
						end      
						Value.Text = Element.value.Slider      
						Frame.Size = UDIM2(a,0,1,0)      
						values[tabname][sectorname][tabtext][text] = Element.value      
						local uis = gameGetService(UserInputService)      
						local mouse = game.Players.LocalPlayerGetMouse()      
						local val      
						Button.MouseButton1DownConnect(function()      
							Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)      
							val = FLOOR((((tonumber(max) - tonumber(min))  175)  Frame.AbsoluteSize.X) + tonumber(min)) or 0      
							Value.Text = val      
							Element.value.Slider = val      
							values[tabname][sectorname][tabtext][text] = Element.value      
							callback(Element.value)      
							moveconnection = mouse.MoveConnect(function()      
								Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)      
								val = FLOOR((((tonumber(max) - tonumber(min))  175)  Frame.AbsoluteSize.X) + tonumber(min))      
								Value.Text = val      
								Element.value.Slider = val      
								values[tabname][sectorname][tabtext][text] = Element.value      
								callback(Element.value)      
							end)      
							releaseconnection = uis.InputEndedConnect(function(Mouse)      
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
									Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)      
									val = FLOOR((((tonumber(max) - tonumber(min))  175)  Frame.AbsoluteSize.X) + tonumber(min))      
									values[tabname][sectorname][tabtext][text] = Element.value      
									callback(Element.value)      
									moveconnectionDisconnect()      
									releaseconnectionDisconnect()      
								end      
							end)      
						end)      
					elseif type == Button then      

						tabsize = tabsize + UDIM2(0,0,0,24)      
						local Button = INST(Frame)      
						local Button_2 = INST(TextButton)      
						local TextLabel = INST(TextLabel)      

						Button.Name = Button      
						Button.Parent = tab1      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Position = UDIM2(0, 0, 0.236059487, 0)      
						Button.Size = UDIM2(1, 0, 0, 24)      

						Button_2.Name = Button      
						Button_2.Parent = Button      
						Button_2.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Button_2.BorderColor3 = COL3RGB(27, 27, 35)      
						Button_2.Position = UDIM2(0, 30, 0.5, -9)      
						Button_2.Size = UDIM2(0, 175, 0, 18)      
						Button_2.AutoButtonColor = false      
						Button_2.Font = Enum.Font.SourceSans      
						Button_2.Text =       
						Button_2.TextColor3 = COL3RGB(0, 0, 0)      
						Button_2.TextSize = 14.000      

						TextLabel.Parent = Button_2      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
						TextLabel.Size = UDIM2(1, 0, 1, 0)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = text      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      

						function ElementSetValue()      
						end      

						Button_2.MouseButton1DownConnect(function()      
							TextLabel.TextColor3 = COL3RGB(175, 42, 86)      
							libraryTween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
							callback()      
						end)      
						Button_2.MouseEnterConnect(function()      
							libraryTween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
						end)      
						Button_2.MouseLeaveConnect(function()      
							libraryTween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
						end)      
					end      
					ConfigLoadConnect(function(cfg)      
						local fix = libraryConfigFix(cfg)      
						if fix[tabname][sectorname][tabtext][text] ~= nil then      
							ElementSetValue(fix[tabname][sectorname][tabtext][text])      
						end      
					end)      

					return Element      
				end      


				if firs then      
					coroutine.wrap(function()      
						gameGetService(RunService).RenderSteppedWait()      
						Section.Size = tabsize      
					end)()      
					selected = text      
					TextButton.TextColor3 = COL3RGB(255,255,255)      
					tab1.Visible = true      
					firs = false      
				end      

				return tab      
			end      

			return MSector      
		end      
		function TabSector(text, side)      
			local sectorname = text      
			local Sector = {}      
			values[tabname][text] = {}      
			local Section = INST(Frame)      
			local SectionText = INST(TextLabel)      
			local Inner = INST(Frame)      
			local UIListLayout = INST(UIListLayout)      

			Section.Name = Section      
			Section.Parent = TabGui[side]      
			Section.BackgroundColor3 = COL3RGB(27, 27, 35)      
			Section.BorderColor3 = COL3RGB(27, 27, 35)      
			Section.BorderSizePixel = 0      
			Section.Position = UDIM2(0.00358422939, 0, 0, 0)      
			Section.Size = UDIM2(1, 0, 0, 22)      

			SectionText.Name = SectionText      
			SectionText.Parent = Section      
			SectionText.BackgroundColor3 = COL3RGB(255, 255, 255)      
			SectionText.BackgroundTransparency = 1.000      
			SectionText.Position = UDIM2(0, 7, 0, -12)      
			SectionText.Size = UDIM2(0, 270, 0, 19)      
			SectionText.ZIndex = 2      
			SectionText.Font = Enum.Font.SourceSansSemibold      
			SectionText.Text = text      
			SectionText.TextColor3 = COL3RGB(255, 255, 255)      
			SectionText.TextSize = 15.000      
			SectionText.TextXAlignment = Enum.TextXAlignment.Left      

			Inner.Name = Inner      
			Inner.Parent = Section      
			Inner.BackgroundColor3 = COL3RGB(30, 30, 39)      
			Inner.BorderColor3 = COL3RGB(27, 27, 35)      
			Inner.BorderSizePixel = 0      
			Inner.Position = UDIM2(0, 1, 0, 1)      
			Inner.Size = UDIM2(1, -2, 1, -2)      

			local UIPadding = INST(UIPadding)      

			UIPadding.Parent = Inner      
			UIPadding.PaddingTop = UDim.new(0, 10)      

			UIListLayout.Parent = Inner      
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      
			UIListLayout.Padding = UDim.new(0,1)      

			function SectorElement(type, text, data, callback)      
				local Element = {}      
				data = data or {}      
				callback = callback or function() end      
				values[tabname][sectorname][text] = {}      
				if type == ScrollDrop then      
					Section.Size = Section.Size + UDIM2(0,0,0,39)      
					Element.value = {Scroll = {}, Dropdown = }      

					for i,v in pairs(data.options) do      
						Element.value.Scroll[i] = v[1]      
					end      

					local joe = {}      
					if data.alphabet then      
						local copy = {}      
						for i,v in pairs(data.options) do      
							INSERT(copy, i)      
						end      
						TBLSORT(copy, function(a,b)      
							return a  b      
						end)      
						joe = copy      
					else      
						for i,v in pairs(data.options) do      
							INSERT(joe, i)      
						end      
					end      

					local Dropdown = INST(Frame)      
					local Button = INST(TextButton)      
					local TextLabel = INST(TextLabel)      
					local Drop = INST(ScrollingFrame)      
					local Button_2 = INST(TextButton)      
					local TextLabel_2 = INST(TextLabel)      
					local UIListLayout = INST(UIListLayout)      
					local ImageLabel = INST(ImageLabel)      
					local TextLabel_3 = INST(TextLabel)      

					Dropdown.Name = Dropdown      
					Dropdown.Parent = Inner      
					Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Dropdown.BackgroundTransparency = 1.000      
					Dropdown.Position = UDIM2(0, 0, 0, 0)      
					Dropdown.Size = UDIM2(1, 0, 0, 39)      

					Button.Name = Button      
					Button.Parent = Dropdown      
					Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Button.BorderColor3 = COL3RGB(27, 27, 35)      
					Button.Position = UDIM2(0, 30, 0, 16)      
					Button.Size = UDIM2(0, 175, 0, 17)      
					Button.AutoButtonColor = false      
					Button.Font = Enum.Font.SourceSans      
					Button.Text =       
					Button.TextColor3 = COL3RGB(0, 0, 0)      
					Button.TextSize = 14.000      

					local TextLabel = INST(TextLabel)      

					TextLabel.Parent = Button      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
					TextLabel.Position = UDIM2(0, 5, 0, 0)      
					TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = lol      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

					local abcd = TextLabel      

					Drop.Name = Drop      
					Drop.Parent = Button      
					Drop.Active = true      
					Drop.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Drop.BorderColor3 = COL3RGB(27, 27, 35)      
					Drop.Position = UDIM2(0, 0, 1, 1)      
					Drop.Size = UDIM2(1, 0, 0, 20)      
					Drop.Visible = false      
					Drop.BottomImage = httpwww.roblox.comassetid=6724808282      
					Drop.CanvasSize = UDIM2(0, 0, 0, 0)      
					Drop.ScrollBarThickness = 4      
					Drop.TopImage = httpwww.roblox.comassetid=6724808282      
					Drop.MidImage = httpwww.roblox.comassetid=6724808282      
					Drop.AutomaticCanvasSize = Y      
					Drop.ZIndex = 5      
					Drop.ScrollBarImageColor3 = COL3RGB(255, 37, 110)      

					UIListLayout.Parent = Drop      
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      


					local amount = data.Amount or 6      
					Section.Size = Section.Size + UDIM2(0,0,0,amount  16 + 8)      

					local num = #joe      
					if num  5 then      
						Drop.Size = UDIM2(1, 0, 0, 85)      
					else      
						Drop.Size = UDIM2(1, 0, 0, 17num)      
					end      
					local first = true      
					for i,v in ipairs(joe) do      
						do      
							local joell = v      
							local Scroll = INST(Frame)      
							local joe2 = data.options[v]      
							local Button = INST(TextButton)      
							local TextLabel = INST(TextLabel)      

							Button.Name = v      
							Button.Parent = Drop      
							Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Button.BorderColor3 = COL3RGB(27, 27, 35)      
							Button.Position = UDIM2(0, 30, 0, 16)      
							Button.Size = UDIM2(0, 175, 0, 17)      
							Button.AutoButtonColor = false      
							Button.Font = Enum.Font.SourceSans      
							Button.Text =       
							Button.TextColor3 = COL3RGB(0, 0, 0)      
							Button.TextSize = 14.000      
							Button.BorderSizePixel = 0      
							Button.ZIndex = 6      

							TextLabel.Parent = Button      
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
							TextLabel.BackgroundTransparency = 1.000      
							TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
							TextLabel.Position = UDIM2(0, 5, 0, -1)      
							TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
							TextLabel.Font = Enum.Font.SourceSansSemibold      
							TextLabel.Text = v      
							TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
							TextLabel.TextSize = 14.000      
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
							TextLabel.ZIndex = 6      

							Button.MouseButton1DownConnect(function()      
								Drop.Visible = false      
								Drop.CanvasPosition = Vec2(0,0)      
								abcd.Text = v      
								for i,v in pairs(Scroll.ParentGetChildren()) do      
									if vIsA(Frame) then      
										v.Visible = false      
									end      
								end      
								Element.value.Dropdown = v      
								Scroll.Visible = true      
								callback(Element.value)      
							end)      
							Button.MouseEnterConnect(function()      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)})      
							end)      
							Button.MouseLeaveConnect(function()      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(200, 200, 200)})      
							end)      

							if first then      
								abcd.Text = v      
								Element.value.Dropdown = v      
							end      
							local Frame = INST(ScrollingFrame)      
							local UIListLayout = INST(UIListLayout)      

							Scroll.Name = Scroll      
							Scroll.Parent = Dropdown      
							Scroll.BackgroundColor3 = COL3RGB(255, 255, 255)      
							Scroll.BackgroundTransparency = 1.000      
							Scroll.Position = UDIM2(0, 0, 0, 0)      
							Scroll.Size = UDIM2(1, 0, 0, amount  16 + 8)      
							Scroll.Visible = first      
							Scroll.Name = v      


							Frame.Name = Frame      
							Frame.Parent = Scroll      
							Frame.Active = true      
							Frame.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Frame.BorderColor3 = COL3RGB(27, 27, 35)      
							Frame.Position = UDIM2(0, 30, 0, 40)      
							Frame.Size = UDIM2(0, 175, 0, 16  amount)      
							Frame.BottomImage = httpwww.roblox.comassetid=6724808282      
							Frame.CanvasSize = UDIM2(0, 0, 0, 0)      
							Frame.MidImage = httpwww.roblox.comassetid=6724808282      
							Frame.ScrollBarThickness = 4      
							Frame.TopImage = httpwww.roblox.comassetid=6724808282      
							Frame.AutomaticCanvasSize = Y      
							Frame.ScrollBarImageColor3 = COL3RGB(255, 37, 110)      

							UIListLayout.Parent = Frame      
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      
							local joll = true      
							for i,v in ipairs(joe2) do      
								local Button = INST(TextButton)      
								local TextLabel = INST(TextLabel)      

								Button.Name = v      
								Button.Parent = Frame      
								Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
								Button.BorderColor3 = COL3RGB(27, 27, 35)      
								Button.BorderSizePixel = 0      
								Button.Position = UDIM2(0, 30, 0, 16)      
								Button.Size = UDIM2(1, 0, 0, 16)      
								Button.AutoButtonColor = false      
								Button.Font = Enum.Font.SourceSans      
								Button.Text =       
								Button.TextColor3 = COL3RGB(0, 0, 0)      
								Button.TextSize = 14.000      

								TextLabel.Parent = Button      
								TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
								TextLabel.BackgroundTransparency = 1.000      
								TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
								TextLabel.Position = UDIM2(0, 4, 0, -1)      
								TextLabel.Size = UDIM2(1, 1, 1, 1)      
								TextLabel.Font = Enum.Font.SourceSansSemibold      
								TextLabel.Text = v      
								TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
								TextLabel.TextSize = 14.000      
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
								if joll then      
									joll = false      
									TextLabel.TextColor3 = COL3RGB(255, 37, 110)      
								end      

								Button.MouseButton1DownConnect(function()      

									for i,v in pairs(FrameGetChildren()) do      
										if vIsA(TextButton) then      
											libraryTween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
										end      
									end      

									libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      

									Element.value.Scroll[joell] = v      

									values[tabname][sectorname][text] = Element.value      
									callback(Element.value)      
								end)      
								Button.MouseEnterConnect(function()      
									if Element.value.Scroll[joell] ~= v then      
										libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
									end      
								end)      
								Button.MouseLeaveConnect(function()      
									if Element.value.Scroll[joell] ~= v then      
										libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
									end      
								end)      
							end      
							first = false      
						end      
					end      

					ImageLabel.Parent = Button      
					ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					ImageLabel.BackgroundTransparency = 1.000      
					ImageLabel.Position = UDIM2(0, 165, 0, 6)      
					ImageLabel.Size = UDIM2(0, 6, 0, 4)      
					ImageLabel.Image = httpwww.roblox.comassetid=6724771531      

					TextLabel_3.Parent = Dropdown      
					TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel_3.BackgroundTransparency = 1.000      
					TextLabel_3.Position = UDIM2(0, 32, 0, -1)      
					TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)      
					TextLabel_3.Font = Enum.Font.SourceSansSemibold      
					TextLabel_3.Text = text      
					TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel_3.TextSize = 14.000      
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left      

					Button.MouseButton1DownConnect(function()      
						Drop.Visible = not Drop.Visible      
						if not Drop.Visible then      
							Drop.CanvasPosition = Vec2(0,0)      
						end      
					end)      
					local indrop = false      
					local ind = false      
					Drop.MouseEnterConnect(function()      
						indrop = true      
					end)      
					Drop.MouseLeaveConnect(function()      
						indrop = false      
					end)      
					Button.MouseEnterConnect(function()      
						ind = true      
					end)      
					Button.MouseLeaveConnect(function()      
						ind = false      
					end)      
					gameGetService(UserInputService).InputBeganConnect(function(input)      
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
							if Drop.Visible == true and not indrop and not ind then      
								Drop.Visible = false      
								Drop.CanvasPosition = Vec2(0,0)      
							end      
						end      
					end)      

					function ElementSetValue(tbl)      
						Element.value = tbl      
						abcd.Text = tbl.Dropdown      
						values[tabname][sectorname][text] = Element.value      
						for i,v in pairs(DropdownGetChildren()) do      
							if vIsA(Frame) then      
								if v.Name == Element.value.Dropdown then      
									v.Visible = true      
								else      
									v.Visible = false      
								end      
								for _,bad in pairs(v.FrameGetChildren()) do      
									if badIsA(TextButton) then      
										bad.TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
										if bad.Name == Element.value.Scroll[v.Name] then      
											bad.TextLabel.TextColor3 = COL3RGB(255, 37, 110)      
										end      
									end      
								end      
							end      
						end      
					end      

					if data.default then      
						ElementSetValue(data.default)      
					end      

					values[tabname][sectorname][text] = Element.value      

				elseif type == Scroll then      
					local amount = data.Amount or 6      
					Section.Size = Section.Size + UDIM2(0,0,0,amount  16 + 8)      
					if data.alphabet then      
						TBLSORT(data.options, function(a,b)      
							return a  b      
						end)      
					end      
					Element.value = {Scroll = data.default and data.default.Scroll or data.options[1]}      

					local Scroll = INST(Frame)      
					local Frame = INST(ScrollingFrame)      
					local UIListLayout = INST(UIListLayout)      

					Scroll.Name = Scroll      
					Scroll.Parent = Inner      
					Scroll.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Scroll.BackgroundTransparency = 1.000      
					Scroll.Position = UDIM2(0, 0, 00, 0)      
					Scroll.Size = UDIM2(1, 0, 0, amount  16 + 8)      


					Frame.Name = Frame      
					Frame.Parent = Scroll      
					Frame.Active = true      
					Frame.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Frame.BorderColor3 = COL3RGB(27, 27, 35)      
					Frame.Position = UDIM2(0, 30, 0, 0)      
					Frame.Size = UDIM2(0, 175, 0, 16  amount)      
					Frame.BottomImage = httpwww.roblox.comassetid=6724808282      
					Frame.CanvasSize = UDIM2(0, 0, 0, 0)      
					Frame.MidImage = httpwww.roblox.comassetid=6724808282      
					Frame.ScrollBarThickness = 4      
					Frame.TopImage = httpwww.roblox.comassetid=6724808282      
					Frame.AutomaticCanvasSize = Y      
					Frame.ScrollBarImageColor3 = COL3RGB(255, 37, 110)      

					UIListLayout.Parent = Frame      
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      
					local first = true      
					for i,v in ipairs(data.options) do      
						local Button = INST(TextButton)      
						local TextLabel = INST(TextLabel)      

						Button.Name = v      
						Button.Parent = Frame      
						Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Button.BorderColor3 = COL3RGB(27, 27, 35)      
						Button.BorderSizePixel = 0      
						Button.Position = UDIM2(0, 30, 0, 16)      
						Button.Size = UDIM2(1, 0, 0, 16)      
						Button.AutoButtonColor = false      
						Button.Font = Enum.Font.SourceSans      
						Button.Text =       
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 14.000      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
						TextLabel.Position = UDIM2(0, 4, 0, -1)      
						TextLabel.Size = UDIM2(1, 1, 1, 1)      
						TextLabel.Font = Enum.Font.SourceSansSemibold      
						TextLabel.Text = v      
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
						TextLabel.TextSize = 14.000      
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
						if first then first = false      
							TextLabel.TextColor3 = COL3RGB(255, 37, 110)      
						end      

						Button.MouseButton1DownConnect(function()      

							for i,v in pairs(FrameGetChildren()) do      
								if vIsA(TextButton) then      
									libraryTween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
								end      
							end      

							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      

							Element.value.Scroll = v      

							values[tabname][sectorname][text] = Element.value      
							callback(Element.value)      
						end)      
						Button.MouseEnterConnect(function()      
							if Element.value.Scroll ~= v then      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							end      
						end)      
						Button.MouseLeaveConnect(function()      
							if Element.value.Scroll ~= v then      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
							end      
						end)      
					end      

					function ElementSetValue(val)      
						Element.value = val      

						for i,v in pairs(FrameGetChildren()) do      
							if vIsA(TextButton) then      
								libraryTween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
							end      
						end      

						libraryTween(Frame[Element.value.Scroll].TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
					end      
					values[tabname][sectorname][text] = Element.value      
				elseif type == Jumbobox then      
					Section.Size = Section.Size + UDIM2(0,0,0,39)      
					Element.value = {Jumbobox = {}}      
					data.options = data.options or {}      

					local Dropdown = INST(Frame)      
					local Button = INST(TextButton)      
					local TextLabel = INST(TextLabel)      
					local Drop = INST(ScrollingFrame)      
					local Button_2 = INST(TextButton)      
					local TextLabel_2 = INST(TextLabel)      
					local UIListLayout = INST(UIListLayout)      
					local ImageLabel = INST(ImageLabel)      
					local TextLabel_3 = INST(TextLabel)      

					Dropdown.Name = Dropdown      
					Dropdown.Parent = Inner      
					Dropdown.BackgroundColor3 = COL3RGB(33, 35, 255)      
					Dropdown.BackgroundTransparency = 1.000      
					Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)      
					Dropdown.Size = UDIM2(1, 0, 0, 39)      

					Button.Name = Button      
					Button.Parent = Dropdown      
					Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Button.BorderColor3 = COL3RGB(27, 27, 35)      
					Button.Position = UDIM2(0, 30, 0, 16)      
					Button.Size = UDIM2(0, 175, 0, 17)      
					Button.AutoButtonColor = false      
					Button.Font = Enum.Font.SourceSans      
					Button.Text =       
					Button.TextColor3 = COL3RGB(0, 0, 0)      
					Button.TextSize = 14.000      

					TextLabel.Parent = Button      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
					TextLabel.Position = UDIM2(0, 5, 0, 0)      
					TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = ...      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

					local abcd = TextLabel      

					Drop.Name = Drop      
					Drop.Parent = Button      
					Drop.Active = true      
					Drop.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Drop.BorderColor3 = COL3RGB(27, 27, 35)      
					Drop.Position = UDIM2(0, 0, 1, 1)      
					Drop.Size = UDIM2(1, 0, 0, 20)      
					Drop.Visible = false      
					Drop.BottomImage = httpwww.roblox.comassetid=6724808282      
					Drop.CanvasSize = UDIM2(0, 0, 0, 0)      
					Drop.ScrollBarThickness = 4      
					Drop.TopImage = httpwww.roblox.comassetid=6724808282      
					Drop.MidImage = httpwww.roblox.comassetid=6724808282      
					--Drop.AutomaticCanvasSize = Y      
					for i,v in pairs(data.options) do      
						Drop.CanvasSize = Drop.CanvasSize + UDIM2(0, 0, 0, 17)      
					end      
					Drop.ZIndex = 5      
					Drop.ScrollBarImageColor3 = COL3RGB(255, 37, 110)      

					UIListLayout.Parent = Drop      
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

					values[tabname][sectorname][text] = Element.value      

					local num = #data.options      
					if num  5 then      
						Drop.Size = UDIM2(1, 0, 0, 85)      
					else      
						Drop.Size = UDIM2(1, 0, 0, 17num)      
					end      
					local first = true      

					local function updatetext()      
						local old = {}      
						for i,v in ipairs(data.options) do      
							if TBLFIND(Element.value.Jumbobox, v) then      
								INSERT(old, v)      
							else      
							end      
						end      
						local str =       


						if #old == 0 then      
							str = ...      
						else      
							if #old == 1 then      
								str = old[1]      
							else      
								for i,v in ipairs(old) do      
									if i == 1 then      
										str = v      
									else      
										if i  2 then      
											if i  4 then      
												str = str..,  ...      
											end      
										else      
											str = str..,  ..v      
										end      
									end      
								end      
							end      
						end      

						abcd.Text = str      
					end      
					for i,v in ipairs(data.options) do      
						do      
							local Button = INST(TextButton)      
							local TextLabel = INST(TextLabel)      

							Button.Name = v      
							Button.Parent = Drop      
							Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Button.BorderColor3 = COL3RGB(27, 27, 35)      
							Button.Position = UDIM2(0, 30, 0, 16)      
							Button.Size = UDIM2(0, 175, 0, 17)      
							Button.AutoButtonColor = false      
							Button.Font = Enum.Font.SourceSans      
							Button.Text =       
							Button.TextColor3 = COL3RGB(0, 0, 0)      
							Button.TextSize = 14.000      
							Button.BorderSizePixel = 0      
							Button.ZIndex = 6      

							TextLabel.Parent = Button      
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
							TextLabel.BackgroundTransparency = 1.000      
							TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
							TextLabel.Position = UDIM2(0, 5, 0, -1)      
							TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
							TextLabel.Font = Enum.Font.SourceSansSemibold      
							TextLabel.Text = v      
							TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
							TextLabel.TextSize = 14.000      
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
							TextLabel.ZIndex = 6      

							Button.MouseButton1DownConnect(function()      
								if TBLFIND(Element.value.Jumbobox, v) then      
									for i,a in pairs(Element.value.Jumbobox) do      
										if a == v then      
											TBLREMOVE(Element.value.Jumbobox, i)      
										end      
									end      
									libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
								else      
									INSERT(Element.value.Jumbobox, v)      
									libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(175, 42, 86)})      
								end      
								updatetext()      

								values[tabname][sectorname][text] = Element.value      
								callback(Element.value)      
							end)      
							Button.MouseEnterConnect(function()      
								if not TBLFIND(Element.value.Jumbobox, v) then      
									libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
								end      
							end)      
							Button.MouseLeaveConnect(function()      
								if not TBLFIND(Element.value.Jumbobox, v) then      
									libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
								end      
							end)      

							first = false      
						end      
					end      
					function ElementSetValue(val)      
						Element.value = val      
						for i,v in pairs(DropGetChildren()) do      
							if v.Name ~= UIListLayout then      
								if TBLFIND(val.Jumbobox, v.Name) then      
									v.TextLabel.TextColor3 = COL3RGB(175, 42, 86)      
								else      
									v.TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
								end      
							end      
						end      
						updatetext()      
						values[tabname][sectorname][text] = Element.value      
						callback(val)      
					end      
					if data.default then      
						ElementSetValue(data.default)      
					end      

					ImageLabel.Parent = Button      
					ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					ImageLabel.BackgroundTransparency = 1.000      
					ImageLabel.Position = UDIM2(0, 165, 0, 6)      
					ImageLabel.Size = UDIM2(0, 6, 0, 4)      
					ImageLabel.Image = httpwww.roblox.comassetid=6724771531      

					TextLabel_3.Parent = Dropdown      
					TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel_3.BackgroundTransparency = 1.000      
					TextLabel_3.Position = UDIM2(0, 32, 0, -1)      
					TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)      
					TextLabel_3.Font = Enum.Font.SourceSansSemibold      
					TextLabel_3.Text = text      
					TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel_3.TextSize = 14.000      
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left      

					Button.MouseButton1DownConnect(function()      
						Drop.Visible = not Drop.Visible      
						if not Drop.Visible then      
							Drop.CanvasPosition = Vec2(0,0)      
						end      
					end)      
					local indrop = false      
					local ind = false      
					Drop.MouseEnterConnect(function()      
						indrop = true      
					end)      
					Drop.MouseLeaveConnect(function()      
						indrop = false      
					end)      
					Button.MouseEnterConnect(function()      
						ind = true      
					end)      
					Button.MouseLeaveConnect(function()      
						ind = false      
					end)      
					gameGetService(UserInputService).InputBeganConnect(function(input)      
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
							if Drop.Visible == true and not indrop and not ind then      
								Drop.Visible = false      
								Drop.CanvasPosition = Vec2(0,0)      
							end      
						end      
					end)      
				elseif type == ToggleKeybind then      
					Section.Size = Section.Size + UDIM2(0,0,0,16)      
					Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = Always, Active = true}      

					local Toggle = INST(Frame)      
					local Button = INST(TextButton)      
					local Color = INST(Frame)      
					local TextLabel = INST(TextLabel)      

					Toggle.Name = Toggle      
					Toggle.Parent = Inner      
					Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Toggle.BackgroundTransparency = 1.000      
					Toggle.Size = UDIM2(1, 0, 0, 15)      

					Button.Name = Button      
					Button.Parent = Toggle      
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Button.BackgroundTransparency = 1.000      
					Button.Size = UDIM2(1, 0, 1, 0)      
					Button.Font = Enum.Font.SourceSans      
					Button.Text =       
					Button.TextColor3 = COL3RGB(0, 0, 0)      
					Button.TextSize = 14.000      

					Color.Name = Color      
					Color.Parent = Button      
					Color.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Color.BorderColor3 = COL3RGB(27, 27, 35)      
					Color.Position = UDIM2(0, 15, 0.5, -5)      
					Color.Size = UDIM2(0, 8, 0, 8)      
					local binding = false      
					TextLabel.Parent = Button      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.Position = UDIM2(0, 32, 0, -1)      
					TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = text      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

					local function update()      
						if Element.value.Toggle then      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 22, 66)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
						else      
							keybindremove(text)      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
						end      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
					end      

					Button.MouseButton1DownConnect(function()      
						if not binding then      
							Element.value.Toggle = not Element.value.Toggle      
							update()      
							values[tabname][sectorname][text] = Element.value      
							callback(Element.value)      
						end      
					end)      
					if data.default then      
						update()      
					end      
					values[tabname][sectorname][text] = Element.value      
					do      
						local Keybind = INST(TextButton)      
						local Frame = INST(Frame)      
						local Always = INST(TextButton)      
						local UIListLayout = INST(UIListLayout)      
						local Hold = INST(TextButton)      
						local Toggle = INST(TextButton)      

						Keybind.Name = Keybind      
						Keybind.Parent = Button      
						Keybind.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Keybind.BorderColor3 = COL3RGB(27, 27, 35)      
						Keybind.Position = UDIM2(0, 270, 0.5, -6)      
						Keybind.Text = NONE      
						Keybind.Size = UDIM2(0, 43, 0, 12)      
						Keybind.Size = UDIM2(0,txtGetTextSize(NONE, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 5,0, 12)      
						Keybind.AutoButtonColor = false      
						Keybind.Font = Enum.Font.SourceSansSemibold      
						Keybind.TextColor3 = COL3RGB(200, 200, 200)      
						Keybind.TextSize = 14.000      
						Keybind.AnchorPoint = Vec2(1,0)      
						Keybind.ZIndex = 3      

						Frame.Parent = Keybind      
						Frame.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Frame.BorderColor3 = COL3RGB(27, 27, 35)      
						Frame.Position = UDIM2(1, -49, 0, 1)      
						Frame.Size = UDIM2(0, 49, 0, 49)      
						Frame.Visible = false      
						Frame.ZIndex = 3      

						Always.Name = Always      
						Always.Parent = Frame      
						Always.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Always.BackgroundTransparency = 1.000      
						Always.BorderColor3 = COL3RGB(27, 27, 35)      
						Always.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
						Always.Size = UDIM2(1, 0, 0, 16)      
						Always.AutoButtonColor = false      
						Always.Font = Enum.Font.SourceSansBold      
						Always.Text = Always      
						Always.TextColor3 = COL3RGB(173, 24, 72)      
						Always.TextSize = 14.000      
						Always.ZIndex = 3      

						UIListLayout.Parent = Frame      
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

						Hold.Name = Hold      
						Hold.Parent = Frame      
						Hold.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Hold.BackgroundTransparency = 1.000      
						Hold.BorderColor3 = COL3RGB(27, 27, 35)      
						Hold.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
						Hold.Size = UDIM2(1, 0, 0, 16)      
						Hold.AutoButtonColor = false      
						Hold.Font = Enum.Font.SourceSansSemibold      
						Hold.Text = Hold      
						Hold.TextColor3 = COL3RGB(200, 200, 200)      
						Hold.TextSize = 14.000      
						Hold.ZIndex = 3      

						Toggle.Name = Toggle      
						Toggle.Parent = Frame      
						Toggle.BackgroundColor3 = COL3RGB(33, 35, 47)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.BorderColor3 = COL3RGB(27, 27, 35)      
						Toggle.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
						Toggle.Size = UDIM2(1, 0, 0, 16)      
						Toggle.AutoButtonColor = false      
						Toggle.Font = Enum.Font.SourceSansSemibold      
						Toggle.Text = Toggle      
						Toggle.TextColor3 = COL3RGB(200, 200, 200)      
						Toggle.TextSize = 14.000      
						Toggle.ZIndex = 3      

						for _,button in pairs(FrameGetChildren()) do      
							if buttonIsA(TextButton) then      
								button.MouseButton1DownConnect(function()      
									Element.value.Type = button.Text      
									Frame.Visible = false      
									if Element.value.Active ~= (Element.value.Type == Always and true or false) then      
										Element.value.Active = Element.value.Type == Always and true or false      
										callback(Element.value)      
									end      
									if button.Text == Always then      
										keybindremove(text)      
									end      
									for _,button in pairs(FrameGetChildren()) do      
										if buttonIsA(TextButton) and button.Text ~= Element.value.Type then      
											button.Font = Enum.Font.SourceSansSemibold      
											libraryTween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})      
										end      
									end      
									button.Font = Enum.Font.SourceSansBold      
									button.TextColor3 = COL3RGB(173, 24, 74)      
									values[tabname][sectorname][text] = Element.value      
								end)      
								button.MouseEnterConnect(function()      
									if Element.value.Type ~= button.Text then      
										libraryTween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255,255,255)})      
									end      
								end)      
								button.MouseLeaveConnect(function()      
									if Element.value.Type ~= button.Text then      
										libraryTween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})      
									end      
								end)      
							end      
						end      
						Keybind.MouseButton1DownConnect(function()      
							if not binding then      
								wait()      
								binding = true      
								Keybind.Text = ...      
								Keybind.Size = UDIM2(0,txtGetTextSize(..., 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 4,0, 12)      
							end      
						end)      
						Keybind.MouseButton2DownConnect(function()      
							if not binding then      
								Frame.Visible = not Frame.Visible      
							end      
						end)      
						local Player = game.Players.LocalPlayer      
						local Mouse = PlayerGetMouse()      
						local InFrame = false      
						Frame.MouseEnterConnect(function()      
							InFrame = true      
						end)      
						Frame.MouseLeaveConnect(function()      
							InFrame = false      
						end)      
						local InFrame2 = false      
						Keybind.MouseEnterConnect(function()      
							InFrame2 = true      
						end)      
						Keybind.MouseLeaveConnect(function()      
							InFrame2 = false      
						end)      
						gameGetService(UserInputService).InputBeganConnect(function(input)      
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then      
								if Frame.Visible == true and not InFrame and not InFrame2 then      
									Frame.Visible = false      
								end      
							end      
							if binding then      
								binding = false      
								Keybind.Text = input.KeyCode.Name ~= Unknown and input.KeyCode.Nameupper() or input.UserInputType.Nameupper()      
								Keybind.Size = UDIM2(0,txtGetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 5,0, 12)      
								Element.value.Key = input.KeyCode.Name ~= Unknown and input.KeyCode.Name or input.UserInputType.Name      
								if input.KeyCode.Name == Backspace then      
									Keybind.Text = NONE      
									Keybind.Size = UDIM2(0,txtGetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 4,0, 12)      
									Element.value.Key = nil      
									Element.value.Active = true      
								end      
								callback(Element.value)      
							else      
								if Element.value.Key ~= nil then      
									if FIND(Element.value.Key, Mouse) then      
										if input.UserInputType == Enum.UserInputType[Element.value.Key] then      
											if Element.value.Type == Hold then      
												Element.value.Active = true      
												callback(Element.value)      
												if Element.value.Active and Element.value.Toggle then      
													keybindadd(text)      
												else      
													keybindremove(text)      
												end      
											elseif Element.value.Type == Toggle then      
												Element.value.Active = not Element.value.Active      
												callback(Element.value)      
												if Element.value.Active and Element.value.Toggle then      
													keybindadd(text)      
												else      
													keybindremove(text)      
												end      
											end      
										end      
									else      
										if input.KeyCode == Enum.KeyCode[Element.value.Key] then      
											if Element.value.Type == Hold then      
												Element.value.Active = true      
												callback(Element.value)      
												if Element.value.Active and Element.value.Toggle then      
													keybindadd(text)      
												else      
													keybindremove(text)      
												end      
											elseif Element.value.Type == Toggle then      
												Element.value.Active = not Element.value.Active      
												callback(Element.value)      
												if Element.value.Active and Element.value.Toggle then      
													keybindadd(text)      
												else      
													keybindremove(text)      
												end      
											end      
										end      
									end      
								else      
									Element.value.Active = true      
								end      
							end      
							values[tabname][sectorname][text] = Element.value      
						end)      
						gameGetService(UserInputService).InputEndedConnect(function(input)      
							if Element.value.Key ~= nil then      
								if FIND(Element.value.Key, Mouse) then      
									if input.UserInputType == Enum.UserInputType[Element.value.Key] then      
										if Element.value.Type == Hold then      
											Element.value.Active = false      
											callback(Element.value)      
											if Element.value.Active then      
												keybindadd(text)      
											else      
												keybindremove(text)      
											end      
										end      
									end      
								else      
									if input.KeyCode == Enum.KeyCode[Element.value.Key] then      
										if Element.value.Type == Hold then      
											Element.value.Active = false      
											callback(Element.value)      
											if Element.value.Active then      
												keybindadd(text)      
											else      
												keybindremove(text)      
											end      
										end      
									end      
								end      
							end      
							values[tabname][sectorname][text] = Element.value      
						end)      
					end      
					function ElementSetValue(value)      
						Element.value = value      
						update()      
					end      
				elseif type == Toggle then      
					Section.Size = Section.Size + UDIM2(0,0,0,16)      
					Element.value = {Toggle = data.default and data.default.Toggle or false}      

					local Toggle = INST(Frame)      
					local Button = INST(TextButton)      
					local Color = INST(Frame)      
					local TextLabel = INST(TextLabel)      

					Toggle.Name = Toggle      
					Toggle.Parent = Inner      
					Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Toggle.BackgroundTransparency = 1.000      
					Toggle.Size = UDIM2(1, 0, 0, 15)      

					Button.Name = Button      
					Button.Parent = Toggle      
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Button.BackgroundTransparency = 1.000      
					Button.Size = UDIM2(1, 0, 1, 0)      
					Button.Font = Enum.Font.SourceSans      
					Button.Text =       
					Button.TextColor3 = COL3RGB(0, 0, 0)      
					Button.TextSize = 14.000      

					Color.Name = Color      
					Color.Parent = Button      
					Color.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Color.BorderColor3 = COL3RGB(27, 27, 35)      
					Color.Position = UDIM2(0, 15, 0.5, -5)      
					Color.Size = UDIM2(0, 8, 0, 8)      

					TextLabel.Parent = Button      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.Position = UDIM2(0, 32, 0, -1)      
					TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = text      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

					local function update()      
						if Element.value.Toggle then      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 26, 66)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
						else      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
						end      
						values[tabname][sectorname][text] = Element.value      
					end      

					Button.MouseButton1DownConnect(function()      
						Element.value.Toggle = not Element.value.Toggle      
						update()      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
					end)      
					if data.default then      
						update()      
					end      
					values[tabname][sectorname][text] = Element.value      
					function ElementSetValue(value)      
						Element.value = value      
						values[tabname][sectorname][text] = Element.value      
						update()      
						callback(Element.value)      
					end      
				elseif type == ToggleColor then      
					Section.Size = Section.Size + UDIM2(0,0,0,16)      
					Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255)}      

					local Toggle = INST(Frame)      
					local Button = INST(TextButton)      
					local Color = INST(Frame)      
					local TextLabel = INST(TextLabel)      

					Toggle.Name = Toggle      
					Toggle.Parent = Inner      
					Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Toggle.BackgroundTransparency = 1.000      
					Toggle.Size = UDIM2(1, 0, 0, 15)      

					Button.Name = Button      
					Button.Parent = Toggle      
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Button.BackgroundTransparency = 1.000      
					Button.Size = UDIM2(1, 0, 1, 0)      
					Button.Font = Enum.Font.SourceSans      
					Button.Text =       
					Button.TextColor3 = COL3RGB(0, 0, 0)      
					Button.TextSize = 14.000      

					Color.Name = Color      
					Color.Parent = Button      
					Color.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Color.BorderColor3 = COL3RGB(27, 27, 35)      
					Color.Position = UDIM2(0, 15, 0.5, -5)      
					Color.Size = UDIM2(0, 8, 0, 8)      

					TextLabel.Parent = Button      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.Position = UDIM2(0, 32, 0, -1)      
					TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = text      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

					local function update()      
						if Element.value.Toggle then      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 26, 66)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
						else      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
						end      
						values[tabname][sectorname][text] = Element.value      
					end      

					local ColorH,ColorS,ColorV      

					local ColorP = INST(TextButton)      
					local Frame = INST(Frame)      
					local Colorpick = INST(ImageButton)      
					local ColorDrag = INST(Frame)      
					local Huepick = INST(ImageButton)      
					local Huedrag = INST(Frame)      

					ColorP.Name = ColorP      
					ColorP.Parent = Button      
					ColorP.AnchorPoint = Vec2(1, 0)      
					ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)      
					ColorP.BorderColor3 = COL3RGB(27, 27, 35)      
					ColorP.Position = UDIM2(0, 270, 0.5, -4)      
					ColorP.Size = UDIM2(0, 18, 0, 8)      
					ColorP.AutoButtonColor = false      
					ColorP.Font = Enum.Font.SourceSansSemibold      
					ColorP.Text =       
					ColorP.TextColor3 = COL3RGB(200, 200, 200)      
					ColorP.TextSize = 14.000      

					Frame.Parent = ColorP      
					Frame.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Frame.BorderColor3 = COL3RGB(27, 27, 35)      
					Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)      
					Frame.Size = UDIM2(0, 200, 0, 170)      
					Frame.Visible = false      
					Frame.ZIndex = 3      

					Colorpick.Name = Colorpick      
					Colorpick.Parent = Frame      
					Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Colorpick.BorderColor3 = COL3RGB(27, 27, 35)      
					Colorpick.ClipsDescendants = false      
					Colorpick.Position = UDIM2(0, 40, 0, 10)      
					Colorpick.Size = UDIM2(0, 150, 0, 150)      
					Colorpick.AutoButtonColor = false      
					Colorpick.Image = rbxassetid4155801252      
					Colorpick.ImageColor3 = COL3RGB(255, 0, 0)      
					Colorpick.ZIndex = 3      

					ColorDrag.Name = ColorDrag      
					ColorDrag.Parent = Colorpick      
					ColorDrag.AnchorPoint = Vec2(0.5, 0.5)      
					ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
					ColorDrag.BorderColor3 = COL3RGB(27, 27, 35)      
					ColorDrag.Size = UDIM2(0, 4, 0, 4)      
					ColorDrag.ZIndex = 3      

					Huepick.Name = Huepick      
					Huepick.Parent = Frame      
					Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Huepick.BorderColor3 = COL3RGB(27, 27, 35)      
					Huepick.ClipsDescendants = false      
					Huepick.Position = UDIM2(0, 10, 0, 10)      
					Huepick.Size = UDIM2(0, 20, 0, 150)      
					Huepick.AutoButtonColor = false      
					Huepick.Image = rbxassetid3641079629      
					Huepick.ImageColor3 = COL3RGB(255, 0, 0)      
					Huepick.ImageTransparency = 1      
					Huepick.BackgroundTransparency = 0      
					Huepick.ZIndex = 3      

					local HueFrameGradient = INST(UIGradient)      
					HueFrameGradient.Rotation = 90      
					HueFrameGradient.Name = HueFrameGradient      
					HueFrameGradient.Parent = Huepick      
					HueFrameGradient.Color = ColorSequence.new {      
						ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),      
						ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),      
						ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),      
						ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),      
						ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),      
						ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),      
						ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))      
					}	      

					Huedrag.Name = Huedrag      
					Huedrag.Parent = Huepick      
					Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Huedrag.BorderColor3 = COL3RGB(27, 27, 35)      
					Huedrag.Size = UDIM2(1, 0, 0, 2)      
					Huedrag.ZIndex = 3      

					ColorP.MouseButton1DownConnect(function()      
						Frame.Visible = not Frame.Visible      
					end)      
					local abc = false      
					local inCP = false      
					ColorP.MouseEnterConnect(function()      
						abc = true      
					end)      
					ColorP.MouseLeaveConnect(function()      
						abc = false      
					end)      
					Frame.MouseEnterConnect(function()      
						inCP = true      
					end)      
					Frame.MouseLeaveConnect(function()      
						inCP = false      
					end)      

					ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)Huepick.AbsoluteSize.Y)      
					ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)Colorpick.AbsoluteSize.X)      
					ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)Colorpick.AbsoluteSize.Y)      

					if data.default and data.default.Color ~= nil then      
						ColorH, ColorS, ColorV = data.default.ColorToHSV()      

						ColorH = CLAMP(ColorH,0,1)      
						ColorS = CLAMP(ColorS,0,1)      
						ColorV = CLAMP(ColorV,0,1)      
						ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      

						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
						Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      

						values[tabname][sectorname][text] = data.default.Color      
					end      

					local mouse = LocalPlayerGetMouse()      
					gameGetService(UserInputService).InputBeganConnect(function(input)      
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
							if not dragging and not abc and not inCP then      
								Frame.Visible = false      
							end      
						end      
					end)      

					local function updateColor()      
						local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)Colorpick.AbsoluteSize.X)      
						local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)Colorpick.AbsoluteSize.Y)      
						ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)      
						ColorS = 1-ColorX      
						ColorV = 1-ColorY      
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
						values[tabname][sectorname][text] = Element.value      
						Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
						callback(Element.value)      
					end      
					local function updateHue()      
						local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)      
						Huedrag.Position = UDIM2(0, 0, 0, y)      
						hue = y148      
						ColorH = 1-hue      
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
						values[tabname][sectorname][text] = Element.value      
						Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
						callback(Element.value)      
					end      
					Colorpick.MouseButton1DownConnect(function()      
						updateColor()      
						moveconnection = mouse.MoveConnect(function()      
							updateColor()      
						end)      
						releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
								updateColor()      
								moveconnectionDisconnect()      
								releaseconnectionDisconnect()      
							end      
						end)      
					end)      
					Huepick.MouseButton1DownConnect(function()      
						updateHue()      
						moveconnection = mouse.MoveConnect(function()      
							updateHue()      
						end)      
						releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
								updateHue()      
								moveconnectionDisconnect()      
								releaseconnectionDisconnect()      
							end      
						end)      
					end)      

					Button.MouseButton1DownConnect(function()      
						Element.value.Toggle = not Element.value.Toggle      
						update()      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
					end)      
					if data.default then      
						update()      
					end      
					values[tabname][sectorname][text] = Element.value      
					function ElementSetValue(value)      
						Element.value = value      
						local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)      
						ColorH, ColorS, ColorV = duplicateToHSV()      
						ColorH = CLAMP(ColorH,0,1)      
						ColorS = CLAMP(ColorS,0,1)      
						ColorV = CLAMP(ColorV,0,1)      

						ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
						update()      
						Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      

						callback(value)      
					end      
				elseif type == ToggleTrans then      
					Section.Size = Section.Size + UDIM2(0,0,0,16)      
					Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}      

					local Toggle = INST(Frame)      
					local Button = INST(TextButton)      
					local Color = INST(Frame)      
					local TextLabel = INST(TextLabel)      

					Toggle.Name = Toggle      
					Toggle.Parent = Inner      
					Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Toggle.BackgroundTransparency = 1.000      
					Toggle.Size = UDIM2(1, 0, 0, 15)      

					Button.Name = Button      
					Button.Parent = Toggle      
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Button.BackgroundTransparency = 1.000      
					Button.Size = UDIM2(1, 0, 1, 0)      
					Button.Font = Enum.Font.SourceSans      
					Button.Text =       
					Button.TextColor3 = COL3RGB(0, 0, 0)      
					Button.TextSize = 14.000      

					Color.Name = Color      
					Color.Parent = Button      
					Color.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Color.BorderColor3 = COL3RGB(27, 27, 35)      
					Color.Position = UDIM2(0, 15, 0.5, -5)      
					Color.Size = UDIM2(0, 8, 0, 8)      

					TextLabel.Parent = Button      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.Position = UDIM2(0, 32, 0, -1)      
					TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = text      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

					local function update()      
						if Element.value.Toggle then      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 155, 155)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
						else      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
						end      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
					end      

					local ColorH,ColorS,ColorV      

					local ColorP = INST(TextButton)      
					local Frame = INST(Frame)      
					local Colorpick = INST(ImageButton)      
					local ColorDrag = INST(Frame)      
					local Huepick = INST(ImageButton)      
					local Huedrag = INST(Frame)      

					ColorP.Name = ColorP      
					ColorP.Parent = Button      
					ColorP.AnchorPoint = Vec2(1, 0)      
					ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)      
					ColorP.BorderColor3 = COL3RGB(27, 27, 35)      
					ColorP.Position = UDIM2(0, 270, 0.5, -4)      
					ColorP.Size = UDIM2(0, 18, 0, 8)      
					ColorP.AutoButtonColor = false      
					ColorP.Font = Enum.Font.SourceSansSemibold      
					ColorP.Text =       
					ColorP.TextColor3 = COL3RGB(200, 200, 200)      
					ColorP.TextSize = 14.000      

					Frame.Parent = ColorP      
					Frame.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Frame.BorderColor3 = COL3RGB(27, 27, 35)      
					Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)      
					Frame.Size = UDIM2(0, 200, 0, 190)      
					Frame.Visible = false      
					Frame.ZIndex = 3      

					Colorpick.Name = Colorpick      
					Colorpick.Parent = Frame      
					Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Colorpick.BorderColor3 = COL3RGB(27, 27, 35)      
					Colorpick.ClipsDescendants = false      
					Colorpick.Position = UDIM2(0, 40, 0, 10)      
					Colorpick.Size = UDIM2(0, 150, 0, 150)      
					Colorpick.AutoButtonColor = false      
					Colorpick.Image = rbxassetid4155801252      
					Colorpick.ImageColor3 = COL3RGB(255, 0, 0)      
					Colorpick.ZIndex = 3      

					ColorDrag.Name = ColorDrag      
					ColorDrag.Parent = Colorpick      
					ColorDrag.AnchorPoint = Vec2(0.5, 0.5)      
					ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
					ColorDrag.BorderColor3 = COL3RGB(27, 27, 35)      
					ColorDrag.Size = UDIM2(0, 4, 0, 4)      
					ColorDrag.ZIndex = 3      

					Huepick.Name = Huepick      
					Huepick.Parent = Frame      
					Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Huepick.BorderColor3 = COL3RGB(27, 27, 35)      
					Huepick.ClipsDescendants = true      
					Huepick.Position = UDIM2(0, 10, 0, 10)      
					Huepick.Size = UDIM2(0, 20, 0, 150)      
					Huepick.AutoButtonColor = false      
					Huepick.Image = rbxassetid3641079629      
					Huepick.ImageColor3 = COL3RGB(255, 0, 0)      
					Huepick.ImageTransparency = 1      
					Huepick.BackgroundTransparency = 0      
					Huepick.ZIndex = 3      

					local HueFrameGradient = INST(UIGradient)      
					HueFrameGradient.Rotation = 90      
					HueFrameGradient.Name = HueFrameGradient      
					HueFrameGradient.Parent = Huepick      
					HueFrameGradient.Color = ColorSequence.new {      
						ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),      
						ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),      
						ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),      
						ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),      
						ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),      
						ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),      
						ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))      
					}	      

					Huedrag.Name = Huedrag      
					Huedrag.Parent = Huepick      
					Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Huedrag.BorderColor3 = COL3RGB(27, 27, 35)      
					Huedrag.Size = UDIM2(1, 0, 0, 2)      
					Huedrag.ZIndex = 3      

					local Transpick = INST(ImageButton)      
					local Transcolor = INST(ImageLabel)      
					local Transdrag = INST(Frame)      

					Transpick.Name = Transpick      
					Transpick.Parent = Frame      
					Transpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Transpick.BorderColor3 = COL3RGB(27, 27, 35)      
					Transpick.Position = UDIM2(0, 10, 0, 167)      
					Transpick.Size = UDIM2(0, 180, 0, 15)      
					Transpick.AutoButtonColor = false      
					Transpick.Image = rbxassetid3887014957      
					Transpick.ScaleType = Enum.ScaleType.Tile      
					Transpick.TileSize = UDIM2(0, 10, 0, 10)      
					Transpick.ZIndex = 3      

					Transcolor.Name = Transcolor      
					Transcolor.Parent = Transpick      
					Transcolor.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Transcolor.BackgroundTransparency = 1.000      
					Transcolor.Size = UDIM2(1, 0, 1, 0)      
					Transcolor.Image = rbxassetid3887017050      
					Transcolor.ImageColor3 = COL3RGB(255, 0, 4)      
					Transcolor.ZIndex = 3      

					Transdrag.Name = Transdrag      
					Transdrag.Parent = Transcolor      
					Transdrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Transdrag.BorderColor3 = COL3RGB(27, 27, 35)      
					Transdrag.Position = UDIM2(0, -1, 0, 0)      
					Transdrag.Size = UDIM2(0, 2, 1, 0)      
					Transdrag.ZIndex = 3      

					ColorP.MouseButton1DownConnect(function()      
						Frame.Visible = not Frame.Visible      
					end)      
					local abc = false      
					local inCP = false      
					ColorP.MouseEnterConnect(function()      
						abc = true      
					end)      
					ColorP.MouseLeaveConnect(function()      
						abc = false      
					end)      
					Frame.MouseEnterConnect(function()      
						inCP = true      
					end)      
					Frame.MouseLeaveConnect(function()      
						inCP = false      
					end)      

					ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)Huepick.AbsoluteSize.Y)      
					ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)Colorpick.AbsoluteSize.X)      
					ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)Colorpick.AbsoluteSize.Y)      

					if data.default and data.default.Color ~= nil then      
						ColorH, ColorS, ColorV = data.default.ColorToHSV()      

						ColorH = CLAMP(ColorH,0,1)      
						ColorS = CLAMP(ColorS,0,1)      
						ColorV = CLAMP(ColorV,0,1)      
						ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      

						Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      

						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
						Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      
					end      
					if data.default and data.default.Transparency ~= nil then      
						Transdrag.Position = UDIM2(data.default.Transparency, -1, 0, 0)      
					end      
					local mouse = LocalPlayerGetMouse()      
					gameGetService(UserInputService).InputBeganConnect(function(input)      
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
							if not dragging and not abc and not inCP then      
								Frame.Visible = false      
							end      
						end      
					end)      

					local function updateColor()      
						local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)Colorpick.AbsoluteSize.X)      
						local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)Colorpick.AbsoluteSize.Y)      
						ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)      
						ColorS = 1-ColorX      
						ColorV = 1-ColorY      
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
						Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      
						values[tabname][sectorname][text] = Element.value      
						Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
						callback(Element.value)      
					end      
					local function updateHue()      
						local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)      
						Huedrag.Position = UDIM2(0, 0, 0, y)      
						hue = y148      
						ColorH = 1-hue      
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
						Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
						values[tabname][sectorname][text] = Element.value      
						Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
						callback(Element.value)      
					end      
					local function updateTrans()      
						local x = CLAMP(mouse.X - Transpick.AbsolutePosition.X, 0, 178)      
						Transdrag.Position = UDIM2(0, x, 0, 0)      
						Element.value.Transparency = (x178)      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
					end      
					Transpick.MouseButton1DownConnect(function()      
						updateTrans()      
						moveconnection = mouse.MoveConnect(function()      
							updateTrans()      
						end)      
						releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
								updateTrans()      
								moveconnectionDisconnect()      
								releaseconnectionDisconnect()      
							end      
						end)      
					end)      
					Colorpick.MouseButton1DownConnect(function()      
						updateColor()      
						moveconnection = mouse.MoveConnect(function()      
							updateColor()      
						end)      
						releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
								updateColor()      
								moveconnectionDisconnect()      
								releaseconnectionDisconnect()      
							end      
						end)      
					end)      
					Huepick.MouseButton1DownConnect(function()      
						updateHue()      
						moveconnection = mouse.MoveConnect(function()      
							updateHue()      
						end)      
						releaseconnection = gameGetService(UserInputService).InputEndedConnect(function(Mouse)      
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
								updateHue()      
								moveconnectionDisconnect()      
								releaseconnectionDisconnect()      
							end      
						end)      
					end)      

					Button.MouseButton1DownConnect(function()      
						Element.value.Toggle = not Element.value.Toggle      
						update()      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
					end)      
					if data.default then      
						if Element.value.Toggle then      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 155, 155)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
						else      
							tween = libraryTween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(33, 35, 47)})      
							libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
						end      
						values[tabname][sectorname][text] = Element.value      
					end      
					values[tabname][sectorname][text] = Element.value      
					function ElementSetValue(value)      
						Element.value = value      
						local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)      
						ColorH, ColorS, ColorV = duplicateToHSV()      
						ColorH = CLAMP(ColorH,0,1)      
						ColorS = CLAMP(ColorS,0,1)      
						ColorV = CLAMP(ColorV,0,1)      

						ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
						update()      
						Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      
					end      
				elseif type == TextBox then      
					Section.Size = Section.Size + UDIM2(0,0,0,30)      
					Element.value = {Text = data.default and data.default.text or }      

					local Box = INST(Frame)      
					local TextBox = INST(TextBox)      

					Box.Name = Box      
					Box.Parent = Inner      
					Box.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Box.BackgroundTransparency = 1.000      
					Box.Position = UDIM2(0, 0, 0.542059898, 0)      
					Box.Size = UDIM2(1, 0, 0, 30)      

					TextBox.Parent = Box      
					TextBox.BackgroundColor3 = COL3RGB(33, 35, 47)      
					TextBox.BorderColor3 = COL3RGB(27, 27, 35)      
					TextBox.Position = UDIM2(0.108303241, 0, 0.224465579, 0)      
					TextBox.Size = UDIM2(0, 175, 0, 20)      
					TextBox.Font = Enum.Font.SourceSans      
					TextBox.PlaceholderText = data.placeholder      
					TextBox.Text = Element.value.Text      
					TextBox.TextColor3 = COL3RGB(255, 255, 255)      
					TextBox.TextSize = 14.000      

					values[tabname][sectorname][text] = Element.value      

					TextBoxGetPropertyChangedSignal(Text)Connect(function()      
						if LEN(TextBox.Text)  10 then      
							TextBox.Text = SUB(TextBox.Text, 1, 10)      
						end      
						Element.value.Text = TextBox.Text      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
					end)      

					function ElementSetValue(value)      
						Element.value = value      
						values[tabname][sectorname][text] = Element.value      
						TextBox.Text = Element.value.Text      
					end      

				elseif type == Dropdown then      
					Section.Size = Section.Size + UDIM2(0,0,0,39)      
					Element.value = {Dropdown = data.options[1]}      

					local Dropdown = INST(Frame)      
					local Button = INST(TextButton)      
					local TextLabel = INST(TextLabel)      
					local Drop = INST(ScrollingFrame)      
					local Button_2 = INST(TextButton)      
					local TextLabel_2 = INST(TextLabel)      
					local UIListLayout = INST(UIListLayout)      
					local ImageLabel = INST(ImageLabel)      
					local TextLabel_3 = INST(TextLabel)      

					Dropdown.Name = Dropdown      
					Dropdown.Parent = Inner      
					Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Dropdown.BackgroundTransparency = 1.000      
					Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)      
					Dropdown.Size = UDIM2(1, 0, 0, 39)      

					Button.Name = Button      
					Button.Parent = Dropdown      
					Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Button.BorderColor3 = COL3RGB(27, 27, 35)      
					Button.Position = UDIM2(0, 30, 0, 16)      
					Button.Size = UDIM2(0, 175, 0, 17)      
					Button.AutoButtonColor = false      
					Button.Font = Enum.Font.SourceSans      
					Button.Text =       
					Button.TextColor3 = COL3RGB(0, 0, 0)      
					Button.TextSize = 14.000      

					TextLabel.Parent = Button      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
					TextLabel.Position = UDIM2(0, 5, 0, 0)      
					TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = Element.value.Dropdown      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

					local abcd = TextLabel      

					Drop.Name = Drop      
					Drop.Parent = Button      
					Drop.Active = true      
					Drop.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Drop.BorderColor3 = COL3RGB(27, 27, 35)      
					Drop.Position = UDIM2(0, 0, 1, 1)      
					Drop.Size = UDIM2(1, 0, 0, 20)      
					Drop.Visible = false      
					Drop.BottomImage = httpwww.roblox.comassetid=6724808282      
					Drop.CanvasSize = UDIM2(0, 0, 0, 0)      
					Drop.ScrollBarThickness = 4      
					Drop.TopImage = httpwww.roblox.comassetid=6724808282      
					Drop.MidImage = httpwww.roblox.comassetid=6724808282      
					Drop.AutomaticCanvasSize = Y      
					Drop.ZIndex = 5      
					Drop.ScrollBarImageColor3 = COL3RGB(255, 37, 110)      

					UIListLayout.Parent = Drop      
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

					local num = #data.options      
					if num  5 then      
						Drop.Size = UDIM2(1, 0, 0, 85)      
					else      
						Drop.Size = UDIM2(1, 0, 0, 17num)      
					end      
					local first = true      
					for i,v in ipairs(data.options) do      
						do      
							local Button = INST(TextButton)      
							local TextLabel = INST(TextLabel)      

							Button.Name = v      
							Button.Parent = Drop      
							Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
							Button.BorderColor3 = COL3RGB(27, 27, 35)      
							Button.Position = UDIM2(0, 30, 0, 16)      
							Button.Size = UDIM2(0, 175, 0, 17)      
							Button.AutoButtonColor = false      
							Button.Font = Enum.Font.SourceSans      
							Button.Text =       
							Button.TextColor3 = COL3RGB(0, 0, 0)      
							Button.TextSize = 14.000      
							Button.BorderSizePixel = 0      
							Button.ZIndex = 6      

							TextLabel.Parent = Button      
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
							TextLabel.BackgroundTransparency = 1.000      
							TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
							TextLabel.Position = UDIM2(0, 5, 0, -1)      
							TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
							TextLabel.Font = Enum.Font.SourceSansSemibold      
							TextLabel.Text = v      
							TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
							TextLabel.TextSize = 14.000      
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
							TextLabel.ZIndex = 6      

							Button.MouseButton1DownConnect(function()      
								Drop.Visible = false      
								Element.value.Dropdown = v      
								abcd.Text = v      
								values[tabname][sectorname][text] = Element.value      
								callback(Element.value)      
								Drop.CanvasPosition = Vec2(0,0)      
							end)      
							Button.MouseEnterConnect(function()      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)})      
							end)      
							Button.MouseLeaveConnect(function()      
								libraryTween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(200, 200, 200)})      
							end)      

							first = false      
						end      
					end      

					function ElementSetValue(val)      
						Element.value = val      
						abcd.Text = val.Dropdown      
						values[tabname][sectorname][text] = Element.value      
						callback(val)      
					end      

					ImageLabel.Parent = Button      
					ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					ImageLabel.BackgroundTransparency = 1.000      
					ImageLabel.Position = UDIM2(0, 165, 0, 6)      
					ImageLabel.Size = UDIM2(0, 6, 0, 4)      
					ImageLabel.Image = httpwww.roblox.comassetid=6724771531      

					TextLabel_3.Parent = Dropdown      
					TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel_3.BackgroundTransparency = 1.000      
					TextLabel_3.Position = UDIM2(0, 32, 0, -1)      
					TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)      
					TextLabel_3.Font = Enum.Font.SourceSansSemibold      
					TextLabel_3.Text = text      
					TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel_3.TextSize = 14.000      
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left      

					Button.MouseButton1DownConnect(function()      
						Drop.Visible = not Drop.Visible      
						if not Drop.Visible then      
							Drop.CanvasPosition = Vec2(0,0)      
						end      
					end)      
					local indrop = false      
					local ind = false      
					Drop.MouseEnterConnect(function()      
						indrop = true      
					end)      
					Drop.MouseLeaveConnect(function()      
						indrop = false      
					end)      
					Button.MouseEnterConnect(function()      
						ind = true      
					end)      
					Button.MouseLeaveConnect(function()      
						ind = false      
					end)      
					gameGetService(UserInputService).InputBeganConnect(function(input)      
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then      
							if Drop.Visible == true and not indrop and not ind then      
								Drop.Visible = false      
								Drop.CanvasPosition = Vec2(0,0)      
							end      
						end      
					end)      
					values[tabname][sectorname][text] = Element.value      
				elseif type == Slider then      

					Section.Size = Section.Size + UDIM2(0,0,0,25)      

					local Slider = INST(Frame)      
					local TextLabel = INST(TextLabel)      
					local Button = INST(TextButton)      
					local Frame = INST(Frame)      
					local UIGradient = INST(UIGradient)      
					local Value = INST(TextLabel)      

					Slider.Name = Slider      
					Slider.Parent = Inner      
					Slider.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Slider.BackgroundTransparency = 1.000      
					Slider.Position = UDIM2(0, 0, 0.653061211, 0)      
					Slider.Size = UDIM2(1, 0, 0, 25)      

					TextLabel.Parent = Slider      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.Position = UDIM2(0, 32, 0, -2)      
					TextLabel.Size = UDIM2(0, 100, 0, 15)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = text      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

					Button.Name = Button      
					Button.Parent = Slider      
					Button.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Button.BorderColor3 = COL3RGB(27, 27, 35)      
					Button.Position = UDIM2(0, 30, 0, 15)      
					Button.Size = UDIM2(0, 175, 0, 5)      
					Button.AutoButtonColor = false      
					Button.Font = Enum.Font.SourceSans      
					Button.Text =       
					Button.TextColor3 = COL3RGB(0, 0, 0)      
					Button.TextSize = 14.000      

					Frame.Parent = Button      
					Frame.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Frame.BorderSizePixel = 0      
					Frame.Size = UDIM2(0.5, 0, 1, 0)      

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, COL3RGB(153, 22, 65)), ColorSequenceKeypoint.new(1, COL3RGB(109, 16, 46))}      
					UIGradient.Rotation = 90      
					UIGradient.Parent = Frame      

					Value.Name = Value      
					Value.Parent = Slider      
					Value.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Value.BackgroundTransparency = 1.000      
					Value.Position = UDIM2(0, 150, 0, -1)      
					Value.Size = UDIM2(0, 55, 0, 15)      
					Value.Font = Enum.Font.SourceSansSemibold      
					Value.Text = 50      
					Value.TextColor3 = COL3RGB(200, 200, 200)      
					Value.TextSize = 14.000      
					Value.TextXAlignment = Enum.TextXAlignment.Right      
					local min, max, default = data.min or 0, data.max or 100, data.default or 0      
					Element.value = {Slider = default}      

					function ElementSetValue(value)      
						Element.value = value      
						local a      
						if min  0 then      
							a = ((Element.value.Slider - min))  (max-min)      
						else      
							a = (Element.value.Slider-min)(max-min)      
						end      
						Value.Text = Element.value.Slider      
						Frame.Size = UDIM2(a,0,1,0)      
						values[tabname][sectorname][text] = Element.value      
						callback(value)      
					end      
					local a      
					if min  0 then      
						a = ((Element.value.Slider - min))  (max-min)      
					else      
						a = (Element.value.Slider-min)(max-min)      
					end      
					Value.Text = Element.value.Slider      
					Frame.Size = UDIM2(a,0,1,0)      
					values[tabname][sectorname][text] = Element.value      
					local uis = gameGetService(UserInputService)      
					local mouse = game.Players.LocalPlayerGetMouse()      
					local val      
					Button.MouseButton1DownConnect(function()      
						Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)      
						val = FLOOR((((tonumber(max) - tonumber(min))  175)  Frame.AbsoluteSize.X) + tonumber(min)) or 0      
						Value.Text = val      
						Element.value.Slider = val      
						values[tabname][sectorname][text] = Element.value      
						callback(Element.value)      
						moveconnection = mouse.MoveConnect(function()      
							Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)      
							val = FLOOR((((tonumber(max) - tonumber(min))  175)  Frame.AbsoluteSize.X) + tonumber(min))      
							Value.Text = val      
							Element.value.Slider = val      
							values[tabname][sectorname][text] = Element.value      
							callback(Element.value)      
						end)      
						releaseconnection = uis.InputEndedConnect(function(Mouse)      
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then      
								Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)      
								val = FLOOR((((tonumber(max) - tonumber(min))  175)  Frame.AbsoluteSize.X) + tonumber(min))      
								values[tabname][sectorname][text] = Element.value      
								callback(Element.value)      
								moveconnectionDisconnect()      
								releaseconnectionDisconnect()      
							end      
						end)      
					end)      
				elseif type == Button then      

					Section.Size = Section.Size + UDIM2(0,0,0,24)      
					local Button = INST(Frame)      
					local Button_2 = INST(TextButton)      
					local TextLabel = INST(TextLabel)      

					Button.Name = Button      
					Button.Parent = Inner      
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
					Button.BackgroundTransparency = 1.000      
					Button.Position = UDIM2(0, 0, 0.236059487, 0)      
					Button.Size = UDIM2(1, 0, 0, 24)      

					Button_2.Name = Button      
					Button_2.Parent = Button      
					Button_2.BackgroundColor3 = COL3RGB(33, 35, 47)      
					Button_2.BorderColor3 = COL3RGB(27, 27, 35)      
					Button_2.Position = UDIM2(0, 30, 0.5, -9)      
					Button_2.Size = UDIM2(0, 175, 0, 18)      
					Button_2.AutoButtonColor = false      
					Button_2.Font = Enum.Font.SourceSans      
					Button_2.Text =       
					Button_2.TextColor3 = COL3RGB(0, 0, 0)      
					Button_2.TextSize = 14.000      

					TextLabel.Parent = Button_2      
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
					TextLabel.BackgroundTransparency = 1.000      
					TextLabel.BorderColor3 = COL3RGB(27, 42, 53)      
					TextLabel.Size = UDIM2(1, 0, 1, 0)      
					TextLabel.Font = Enum.Font.SourceSansSemibold      
					TextLabel.Text = text      
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)      
					TextLabel.TextSize = 14.000      

					function ElementSetValue()      
					end      

					Button_2.MouseButton1DownConnect(function()      
						TextLabel.TextColor3 = COL3RGB(175, 42, 86)      
						libraryTween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
						callback()      
					end)      
					Button_2.MouseEnterConnect(function()      
						libraryTween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
					end)      
					Button_2.MouseLeaveConnect(function()      
						libraryTween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})      
					end)      
				end      
				ConfigLoadConnect(function(cfg)      
					pcall(function()      
						local fix = libraryConfigFix(cfg)      
						if fix[tabname][sectorname][text] ~= nil then      
							ElementSetValue(fix[tabname][sectorname][text])      
						end      
					end)      
				end)      

				return Element      
			end      
			return Sector      
		end      

		return Tab      
	end      

	Ova.Parent = game.CoreGui      

	return menu      
end      

local UserInputService = gameGetService(UserInputService)      
local ReplicatedStorage = gameGetService(ReplicatedStorage)      
local RunService = gameGetService(RunService)      
local Lighting = gameGetService(Lighting)      
local Players = gameGetService(Players)      
local LocalPlayer = Players.LocalPlayer      
local PlayerGui = LocalPlayer.PlayerGui      
local Mouse = LocalPlayerGetMouse()      
local Camera = workspace.CurrentCamera      
local ClientScript = LocalPlayer.PlayerGui.Client      
local Client = getsenv(ClientScript)      

repeat RunService.RenderSteppedWait() until gameIsLoaded()      

local Crosshairs = PlayerGui.GUI.Crosshairs      
local Crosshair = PlayerGui.GUI.Crosshairs.Crosshair      
local oldcreatebullethole = Client.createbullethole      
local LGlove, RGlove, LSleeve, RSleeve, RArm, LArm      
local WeaponObj = {}      
local SelfObj = {}      
local Viewmodels =  ReplicatedStorage.Viewmodels      
local Weapons =  ReplicatedStorage.Weapons      
local ViewmodelOffset = CF(0,0,0)      
local Smokes = {}      
local Mollies = {}      
local RayIgnore = workspace.Ray_Ignore      
local RageTarget      
local GetIcon = require(game.ReplicatedStorage.GetIcon)      
local BodyVelocity = INST(BodyVelocity)      
BodyVelocity.MaxForce = Vec3(HUGE, 0, HUGE)      
local Collision = {Camera, workspace.Ray_Ignore, workspace.Debris}      
local FakelagFolder = INST(Folder, workspace)      
FakelagFolder.Name = Fakelag      
local FakeAnim = INST(Animation, workspace)      
FakeAnim.AnimationId = rbxassetid0      
local Gloves = ReplicatedStorage.Gloves      
if GlovesFindFirstChild(ImageLabel) then      
	Gloves.ImageLabelDestroy()      
end      
local GloveModels = Gloves.Models      
local Multipliers = {      
	[Head] = 4,      
	[FakeHead] = 4,      
	[HeadHB] = 4,      
	[UpperTorso] = 1,      
	[LowerTorso] = 1.25,      
	[LeftUpperArm] = 1,      
	[LeftLowerArm] = 1,      
	[LeftHand] = 1,      
	[RightUpperArm] = 1,      
	[RightLowerArm] = 1,      
	[RightHand] = 1,      
	[LeftUpperLeg] = 0.75,      
	[LeftLowerLeg] = 0.75,      
	[LeftFoot] = 0.75,      
	[RightUpperLeg] = 0.75,      
	[RightLowerLeg] = 0.75,      
	[RightFoot] = 0.75,      
}      
local ChamItems = {}      
local Skyboxes = {      
	[nebula] = {      
		SkyboxLf = rbxassetid159454286,      
		SkyboxBk = rbxassetid159454299,      
		SkyboxDn = rbxassetid159454296,      
		SkyboxFt = rbxassetid159454293,      
		SkyboxLf = rbxassetid159454286,      
		SkyboxRt = rbxassetid159454300,      
		SkyboxUp = rbxassetid159454288,      
	},      
	[vaporwave] = {      
		SkyboxLf = rbxassetid1417494402,      
		SkyboxBk = rbxassetid1417494030,      
		SkyboxDn = rbxassetid1417494146,      
		SkyboxFt = rbxassetid1417494253,      
		SkyboxLf = rbxassetid1417494402,      
		SkyboxRt = rbxassetid1417494499,      
		SkyboxUp = rbxassetid1417494643,      
	},      
	[clouds] = {      
		SkyboxLf = rbxassetid570557620,      
		SkyboxBk = rbxassetid570557514,      
		SkyboxDn = rbxassetid570557775,      
		SkyboxFt = rbxassetid570557559,      
		SkyboxLf = rbxassetid570557620,      
		SkyboxRt = rbxassetid570557672,      
		SkyboxUp = rbxassetid570557727,      
	},      
	[twilight] = {      
		SkyboxLf = rbxassetid264909758,      
		SkyboxBk = rbxassetid264908339,      
		SkyboxDn = rbxassetid264907909,      
		SkyboxFt = rbxassetid264909420,      
		SkyboxLf = rbxassetid264909758,      
		SkyboxRt = rbxassetid264908886,      
		SkyboxUp = rbxassetid264907379,      
	},      
}      
local NewScope      
do      
	local ScreenGui = INST(ScreenGui)      
	local Frame = INST(Frame)      
	local Frame_2 = INST(Frame)      

	ScreenGui.Enabled = false      
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global      
	ScreenGui.IgnoreGuiInset = true      

	Frame.Parent = ScreenGui      
	Frame.BackgroundColor3 = COL3RGB(0, 0, 0)      
	Frame.BorderSizePixel = 0      
	Frame.Position = UDIM2(0, 0, 0.5, 0)      
	Frame.Size = UDIM2(1, 0, 0, 1)      

	Frame_2.Parent = ScreenGui      
	Frame_2.BackgroundColor3 = COL3RGB(0, 0, 0)      
	Frame_2.BorderSizePixel = 0      
	Frame_2.Position = UDIM2(0.5, 0, 0, 0)      
	Frame_2.Size = UDIM2(0, 1, 1, 0)      

	ScreenGui.Parent = game.CoreGui      

	NewScope = ScreenGui      
end      
local oldSkybox      

local function VectorRGB(RGB)      
	return Vec3(RGB.R, RGB.G, RGB.B)      
end      
local function new(name, prop)      
	local obj = INST(name)      
	for i,v in pairs(prop) do      
		if i ~= Parent then      
			obj[i] = v      
		end      
	end      
	if prop[Parent] ~= nil then      
		obj.Parent = prop[Parent]      
	end      
end      
local function UpdateAccessory(Accessory)      
	Accessory.Material = values.visuals.effects[accessory material].Dropdown == Smooth and SmoothPlastic or ForceField      
	Accessory.Mesh.VertexColor = VectorRGB(values.visuals.effects[accessory chams].Color)      
	Accessory.Color = values.visuals.effects[accessory chams].Color      
	Accessory.Transparency = values.visuals.effects[accessory chams].Transparency      
	if values.visuals.effects[accessory material].Dropdown ~= ForceField then      
		Accessory.Mesh.TextureId =       
	else      
		Accessory.Mesh.TextureId = Accessory.StringValue.Value      
	end      
end      
local function ReverseAccessory(Accessory)      
	Accessory.Material = SmoothPlastic      
	Accessory.Mesh.VertexColor = Vec3(1,1,1)      
	Accessory.Mesh.TextureId = Accessory.StringValue.Value      
	Accessory.Transparency = 0      
end      
local function UpdateWeapon(obj) 
	local selected = values.visuals.effects['weapon material'].Dropdown
	if objIsA('MeshPart') and selected == 'ForceField' then 
		if values.visuals.effects['forcefield type'].Dropdown == 'normal' then
			obj.TextureID = ''
		elseif values.visuals.effects['forcefield type'].Dropdown == 'bloxsenseripoff' then
			obj.TextureID = 'rbxassetid301464986'
		elseif values.visuals.effects['forcefield type'].Dropdown == 'drugs' then
			obj.TextureID = 'rbxassetid8133639623'
		elseif values.visuals.effects['forcefield type'].Dropdown == 'disgusting' then
			obj.TextureID = 'rbxassetid5830615971'									
		end
	else 
		if selected == 'Smooth' or selected == 'Glass' or selected == 'Flat' then obj.TextureID = '' end
	end
	if objIsA('Part') and objFindFirstChild('Mesh') and not objIsA('BlockMesh') then
		obj.Mesh.VertexColor = VectorRGB(values.visuals.effects['weapon chams'].Color)
		if selected == 'Smooth' or selected == 'Glass' then
			obj.Mesh.TextureId = ''
		else
			pcall(function()
				obj.Mesh.TextureId = obj.Mesh.OriginalTexture.Value
				obj.Mesh.TextureID = obj.Mesh.OriginalTexture.Value
			end)
		end
	end
	obj.Color = values.visuals.effects['weapon chams'].Color
	obj.Material = selected == 'Smooth' and 'SmoothPlastic' or selected == 'Flat' and 'Neon' or selected == 'ForceField' and 'ForceField' or 'Glass'
	obj.Reflectance = values.visuals.effects['reflectance'].Slider10
	obj.Transparency = values.visuals.effects['weapon chams'].Transparency
end
local Skins = ReplicatedStorage.Skins      
local function MapSkin(Gun, Skin, CustomSkin)      
	if CustomSkin ~= nil then      
		for _,Data in pairs(CustomSkin) do      
			local Obj = Camera.ArmsFindFirstChild(Data.Name)      
			if Obj ~= nil and Obj.Transparency ~= 1 then      
				Obj.TextureId = Data.Value      
			end      
		end      
	else      
		local SkinData = SkinsFindFirstChild(Gun)FindFirstChild(Skin)      
		if not SkinDataFindFirstChild(Animated) then      
			for _,Data in pairs(SkinDataGetChildren()) do      
				local Obj = Camera.ArmsFindFirstChild(Data.Name)      
				if Obj ~= nil and Obj.Transparency ~= 1 then      
					if ObjFindFirstChild(Mesh) then      
						Obj.Mesh.TextureId = v.Value      
					elseif not ObjFindFirstChild(Mesh) then      
						Obj.TextureID = Data.Value      
					end      
				end      
			end      
		end      
	end      
end      
local function ChangeCharacter(NewCharacter)      
	for _,Part in pairs (LocalPlayer.CharacterGetChildren()) do      
		if PartIsA(Accessory) then      
			PartDestroy()      
		end      
		if PartIsA(BasePart) then      
			if NewCharacterFindFirstChild(Part.Name) then      
				Part.Color = NewCharacterFindFirstChild(Part.Name).Color      
				Part.Transparency = NewCharacterFindFirstChild(Part.Name).Transparency      
			end      
			if Part.Name == FakeHead then      
				Part.Color = NewCharacterFindFirstChild(Head).Color      
				Part.Transparency = NewCharacterFindFirstChild(Head).Transparency      
			end      
		end      

		if (Part.Name == Head or Part.Name == FakeHead) and PartFindFirstChildOfClass(Decal) and NewCharacter.HeadFindFirstChildOfClass(Decal) then      
			PartFindFirstChildOfClass(Decal).Texture = NewCharacter.HeadFindFirstChildOfClass(Decal).Texture      
		end      
	end      

	if NewCharacterFindFirstChildOfClass(Shirt) then      
		if LocalPlayer.CharacterFindFirstChildOfClass(Shirt) then      
			LocalPlayer.CharacterFindFirstChildOfClass(Shirt)Destroy()      
		end      
		local Clone = NewCharacterFindFirstChildOfClass(Shirt)Clone()      
		Clone.Parent = LocalPlayer.Character      
	end      

	if NewCharacterFindFirstChildOfClass(Pants) then      
		if LocalPlayer.CharacterFindFirstChildOfClass(Pants) then      
			LocalPlayer.CharacterFindFirstChildOfClass(Pants)Destroy()      
		end      
		local Clone = NewCharacterFindFirstChildOfClass(Pants)Clone()      
		Clone.Parent = LocalPlayer.Character      
	end      

	for _,Part in pairs (NewCharacterGetChildren()) do      
		if PartIsA(Accessory) then      
			local Clone = PartClone()      
			for _,Weld in pairs (Clone.HandleGetChildren()) do      
				if WeldIsA(Weld) and Weld.Part1 ~= nil then      
					Weld.Part1 = LocalPlayer.Character[Weld.Part1.Name]      
				end      
			end      
			Clone.Parent = LocalPlayer.Character      
		end      
	end      

	if LocalPlayer.CharacterFindFirstChildOfClass(Shirt) then      
		local String = INST(StringValue)      
		String.Name = OriginalTexture      
		String.Value = LocalPlayer.CharacterFindFirstChildOfClass(Shirt).ShirtTemplate      
		String.Parent = LocalPlayer.CharacterFindFirstChildOfClass(Shirt)      

		if TBLFIND(values.visuals.effects.removals.Jumbobox, clothes) then      
			LocalPlayer.CharacterFindFirstChildOfClass(Shirt).ShirtTemplate =       
		end      
	end      
	if LocalPlayer.CharacterFindFirstChildOfClass(Pants) then      
		local String = INST(StringValue)      
		String.Name = OriginalTexture      
		String.Value = LocalPlayer.CharacterFindFirstChildOfClass(Pants).PantsTemplate      
		String.Parent = LocalPlayer.CharacterFindFirstChildOfClass(Pants)      

		if TBLFIND(values.visuals.effects.removals.Jumbobox, clothes) then      
			LocalPlayer.CharacterFindFirstChildOfClass(Pants).PantsTemplate =       
		end      
	end      
	for i,v in pairs(LocalPlayer.CharacterGetChildren()) do      
		if vIsA(BasePart) and v.Transparency ~= 1 then      
			INSERT(SelfObj, v)      
			local Color = INST(Color3Value)      
			Color.Name = OriginalColor      
			Color.Value = v.Color      
			Color.Parent = v      

			local String = INST(StringValue)      
			String.Name = OriginalMaterial      
			String.Value = v.Material.Name      
			String.Parent = v      
		elseif vIsA(Accessory) and v.Handle.Transparency ~= 1 then      
			INSERT(SelfObj, v.Handle)      
			local Color = INST(Color3Value)      
			Color.Name = OriginalColor      
			Color.Value = v.Handle.Color      
			Color.Parent = v.Handle      

			local String = INST(StringValue)      
			String.Name = OriginalMaterial      
			String.Value = v.Handle.Material.Name      
			String.Parent = v.Handle      
		end      
	end      

	if values.visuals.self[self chams].Toggle then      
		for _,obj in pairs(SelfObj) do      
			if obj.Parent ~= nil then      
				obj.Material = Enum.Material.ForceField      
				obj.Color = values.visuals.self[self chams].Color     
			end      
		end      
	end      
end      
local function GetDeg(pos1, pos2)      
	local start = pos1.LookVector      
	local vector = CF(pos1.Position, pos2).LookVector      
	local angle = ACOS(startDot(vector))      
	local deg = DEG(angle)      
	return deg      
end      
local Ping = game.Stats.PerformanceStats.PingGetValue()      

for i,v in pairs(ViewmodelsGetChildren()) do      
	if vFindFirstChild(HumanoidRootPart) and v.HumanoidRootPart.Transparency ~= 1 then      
		v.HumanoidRootPart.Transparency = 1      
	end      
end      

local Models = gameGetObjects(rbxassetid7285197035)[1]      
repeat wait() until Models ~= nil      
local ChrModels = gameGetObjects(rbxassetid7265740528)[1]      
repeat wait() until ChrModels ~= nil      


local AllKnives = {      
	CT Knife,      
	T Knife,      
	Banana,      
	Bayonet,      
	Bearded Axe,      
	Butterfly Knife,      
	Cleaver,      
	Crowbar,      
	Falchion Knife,      
	Flip Knife,      
	Gut Knife,      
	Huntsman Knife,      
	Karambit,      
	Sickle,      
}      

local AllGloves = {}      


for _,fldr in pairs(GlovesGetChildren()) do      
	if fldr ~= GloveModels and fldr.Name ~= Racer then      
		AllGloves[fldr.Name] = {}      
		for _2,modl in pairs(fldrGetChildren()) do      
			INSERT(AllGloves[fldr.Name], modl.Name)      
		end      
	end      
end      

for i,v in pairs(Models.KnivesGetChildren()) do      
	INSERT(AllKnives, v.Name)      
end      

local AllSkins = {}      
local AllWeapons = {}      
local AllCharacters = {}      

for i,v in pairs(ChrModelsGetChildren()) do      
	INSERT(AllCharacters, v.Name)      
end      

local skins = {      
	{[Weapon] = AWP, [SkinName] = Bot, [Skin] = {[Scope] = 6572594838, [Handle] = 6572594077}}      
}      

for _,skin in pairs (skins) do      
	local Folder = INST(Folder)      
	Folder.Name = skin[SkinName]      
	Folder.Parent = Skins[skin[Weapon]]      

	for _,model in pairs (skin[Skin]) do      
		local val = INST(StringValue)      
		val.Name = _      
		val.Value = rbxassetid..model      
		val.Parent = Folder      
	end      
end      

for i,v in pairs(SkinsGetChildren()) do      
	INSERT(AllWeapons, v.Name)      
end      

TBLSORT(AllWeapons, function(a,b)      
	return a  b      
end)      

for i,v in ipairs(AllWeapons) do      
	AllSkins[v] = {}      
	INSERT(AllSkins[v], Inventory)      
	for _,v2 in pairs(Skins[v]GetChildren()) do      
		if not v2FindFirstChild(Animated) then      
			INSERT(AllSkins[v], v2.Name)      
		end      
	end      
end      

makefolder(ovalua)      

local allluas = {}      

for _,lua in pairs(listfiles(ovalua)) do      
	local luaname = GSUB(lua, ovalua, )      
	INSERT(allluas, luaname)      
end      

RunService.RenderSteppedWait()      

local gui = libraryNew(Memzhack.Pasted)      
local legit = guiTab(legit)      
local rage = guiTab(rage)      
local visuals = guiTab(visuals)      
local misc = guiTab(misc)      
local skins = guiTab(skins)      
local luas = guiTab(luas)      

getgenv().api = {}      
api.newtab = function(name)      
	return guiTab(name)      
end      
api.newsection = function(tab, name, side)      
	return tabSector(name, side)      
end      
api.newelement = function(section, type, name, data, callback)      
	sectionElement(type, name, data, callback)      
end      


local luascripts = luasSector(lua scripts, Left)      
luascriptsElement(Scroll, lua, {options = allluas, Amount = 5})      
luascriptsElement(Button, load, {}, function()      
	loadstring(readfile(ovalua..values.luas[lua scripts].lua.Scroll))()      
end)      

local knife = skinsSector(knife, Left)      
knifeElement(Toggle, knife changer)      
knifeElement(Scroll, model, {options = AllKnives, Amount = 15})      

local glove = skinsSector(glove, Left)      
gloveElement(Toggle, glove changer)      
gloveElement(ScrollDrop, model, {options = AllGloves, Amount = 9})      

local skin = skinsSector(skins, Right)      
skinElement(Toggle, skin changer)      
skinElement(ScrollDrop, skin, {options = AllSkins, Amount = 15, alphabet = true})      

local characters = skinsSector(characters, Right)      
charactersElement(Toggle, character changer, nil, function(tbl)      
	if tbl.Toggle then      
		if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(Gun) then      
			ChangeCharacter(ChrModelsFindFirstChild(values.skins.characters.skin.Scroll))      
		end      
	end      
end)      
charactersElement(Scroll, skin, {options = AllCharacters, Amount = 9, alphabet = true}, function(tbl)      
	if values.skins.characters[character changer].Toggle then      
		if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(Gun) then      
			ChangeCharacter(ChrModelsFindFirstChild(tbl.Scroll))      
		end      
	end      
end)      

local aimbot = legitSector(aimbot, Left)      
aimbotElement(ToggleKeybind, aim assist)      
aimbotElement(ToggleKeybind, silent aim)      
aimbotElement(ToggleKeybind, triggerbot)      

local main = legitMSector(main, Left)      
local default = mainTab(default)      
local pistol = mainTab(pistol)      
local smg = mainTab(smg)      
local rifle = mainTab(rifle)      
local sniper = mainTab(sniper)      

local function AddLegit(Tab)      
	TabElement(Jumbobox, conditions, {options = {visible, standing, blind, smoke}})      
	TabElement(Dropdown, target, {options = {crosshair, health, distance}})      
	TabElement(Dropdown, hitbox, {options = {closest, head, chest}})      
	TabElement(Slider, field of view, {min = 30, max = 420, default = 120})      
	TabElement(Slider, smoothing, {min = 1, max = 50, default = 1})      
	TabElement(Toggle, silent aim)      
	TabElement(Slider, hitchance, {min = 1, max = 100, default = 100})      
	TabElement(Dropdown, priority, {options = {closest, head, chest}})      
	TabElement(Toggle, triggerbot)      
	TabElement(Slider, delay (ms), {min = 0, max = 300, default = 200})      
	TabElement(Slider, minimum dmg, {min = 0, max = 100, default = 15})      
end      

AddLegit(default)      

pistolElement(Toggle, override default)      
AddLegit(pistol)      

smgElement(Toggle, override default)      
AddLegit(smg)      

rifleElement(Toggle, override default)      
AddLegit(rifle)      

sniperElement(Toggle, override default)      
AddLegit(sniper)      

local settings = legitSector(settings, Right)      
settingsElement(Toggle, free for all)      
settingsElement(Toggle, forcefield check)      
settingsElement(ToggleColor, draw fov)      

local aimbot = rageSector(aimbot, Left)      
aimbotElement(Toggle, enabled)      
aimbotElement(Dropdown, origin, {options = {character, camera}})      
aimbotElement(Toggle, silent aim)      
aimbotElement(Dropdown, automatic fire, {options = {off, standard, hitpart, gun-aura, instant-shoot}})     
aimbotElement(Toggle, wallbang)    
aimbotElement('Toggle', 'resolver offset')
aimbotElement('Jumbobox', 'resolver', {options = {'pitch', 'roll', 'arms', 'animation', 'forward track'}})
aimbotElement('Slider', 'resolver offset distance', {min = 6, max = 1000, default = 6})
aimbotElement(Toggle, prediction)   
aimbotElement(Toggle, force hit)
aimbotElement(Dropdown, force mode, {options = {'hit', 'headshot'}})
aimbotElement('ToggleKeybind', 'raycast')
aimbotElement('Slider', 'rayamount', {min = 1, max = 10})     
aimbotElement(Toggle, teammates)      
aimbotElement(Toggle, auto baim)
aimbotElement(Toggle, shoot before round start)
aimbotElement(Toggle, hit logs)
aimbotElement('Slider', 'log time', {min = 1, max = 10, default = 2})  
aimbotElement(Toggle, HS) 
aimbotElement('Slider', HPS Speed, {min = 1, max = 66, default = 1}) 
aimbotElement(Toggle, knifebot)
aimbotElement(Toggle, delay shot)     

local weapons = rageMSector(weapons, Left)      
local default = weaponsTab(default)      
local pistol = weaponsTab(pistol)      
local rifle = weaponsTab(rifle)      
local scout = weaponsTab(scout)      
local awp = weaponsTab(awp)      
local auto = weaponsTab(auto)      

local function AddRage(Tab)      
	TabElement('Jumbobox', 'hitboxes', {options = {'head', 'torso', 'pelvis', 'arms', 'hand'}})     
	TabElement(Toggle, prefer body)      
	TabElement(Slider, 'hitchance', {min = 1, max = 102, default = 1})
	TabElement(Slider, minimum damage, {min = 1, max = 100, default = 20})      
	TabElement(Slider, max fov, {min = 1, max = 180, default = 180})      
end      

AddRage(default)      

pistolElement(Toggle, override default)      
AddRage(pistol)      

rifleElement(Toggle, override default)      
AddRage(rifle)      

scoutElement(Toggle, override default)      
AddRage(scout)      

awpElement(Toggle, override default)      
AddRage(awp)      

autoElement(Toggle, override default)      
AddRage(auto)      

local antiaim = rageSector(angles, Right)      
antiaimElement(Toggle, enabled)      
antiaimElement(Dropdown, yaw base, {options = {camera, targets, spin, random}})      
antiaimElement(Slider, yaw offset, {min = -180, max = 180, default = 0})      
antiaimElement(Toggle, jitter)      
antiaimElement(Slider, jitter offset, {min = -180, max = 180, default = 0})      
antiaimElement(Dropdown, pitch, {options = {none, up, down, zero, 180, random}})      
antiaimElement(Toggle, extend pitch)      
antiaimElement(Dropdown, body roll, {options = {off, 180}})      
antiaimElement(Slider, spin speed, {min = 0.5, max = 48, default = 4})      
antiaimElement('ToggleKeybind', 'onshot anti-aim')
antiaimElement('Dropdown', 'onshot mode', {options = {none, up, down, zero, 180, random}})

local others = rageSector(others, Right)      
othersElement(Toggle, remove head)      
othersElement(Toggle, no animations)      
othersElement(Dropdown, leg movement, {options = {off, slide}})      

local LagTick = 0
			local fakelag = rageSector('fakelag', 'Right')

			fakelagElement('Slider', 'set ping', {min = -100, max = 100, default = 0})
			gameGetService('Players').LocalPlayer.Ping.ChangedConnect(function()
				if values.rage.fakelag['set ping'].Slider ~= 0 then 
					gameGetService('ReplicatedStorage').Events.UpdatePingFireServer( values.rage.fakelag['set ping'].Slider10)
				end
			end)
			fakelagElement('ToggleKeybind', 'enabled', {default = {Toggle = false}}, function(tbl)
				if tbl.Toggle then
				else
					FakelagFolderClearAllChildren()
					gameGetService('NetworkClient')SetOutgoingKBPSLimit(9e9)
				end
			end)
			fakelagElement(Toggle, fakelag indicator, {}, function(tbl)    
				gameGetService(CoreGui)[fl indicator].Enabled = tbl.Toggle
			end)
			fakelagElement('Dropdown', 'amount', {options = {'static', 'freeze', 'tfreeze', 'underfreeze'}})
			fakelagElement('Slider', 'limit', {min = 1, max = 106, default = 8})
			fakelagElement('Slider', 'under y', {min = 1, max = 50, default = 8})
			fakelagElement('Toggle', 'random')
			fakelagElement('ToggleColor', 'visualize lag', {default = {Toggle = false, Color = COL3RGB(255,255,255)}}, function(tbl)
				if tbl.Toggle then
					for _,obj in pairs(FakelagFolderGetChildren()) do
						obj.Color = tbl.Color
					end
				else
					FakelagFolderClearAllChildren()
				end
			end)
			

			local savedcamerapart = Instance.new('Part', RayIgnore)
			savedcamerapart.Anchored = true
			savedcamerapart.CanCollide = false
			savedcamerapart.Size = Vector3.new(1, 1, 1)
			savedcamerapart.Transparency = 1
			fakelagElement('ToggleKeybind', 'ping spike')
			coroutine.wrap(function()
				local flindicator = Instance.new(ScreenGui)
				local wgrgerqgerq = Instance.new(TextLabel)
				local grgrgr = Instance.new(UIGradient)
				local gradins = Instance.new(Frame)
				local qewgrqgwrgqr = Instance.new(TextLabel)
				local niggerhaha = Instance.new(Frame)
				local lolfaggot = Instance.new(Frame)
				local gergergre = Instance.new(UIGradient)

				flindicator.Name = fl indicator
				flindicator.Enabled = false
				flindicator.Parent = game.CoreGui
				flindicator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

				wgrgerqgerq.Name = wgrgerqgerq
				wgrgerqgerq.Parent = flindicator
				wgrgerqgerq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				wgrgerqgerq.BorderColor3 = Color3.fromRGB(14, 29, 32)
				wgrgerqgerq.Position = UDim2.new(0.161994383, 0, 0.437578738, 0)
				wgrgerqgerq.Size = UDim2.new(0, 62, 0, 22)
				wgrgerqgerq.Font = Enum.Font.Ubuntu
				wgrgerqgerq.Text = 
				wgrgerqgerq.AutomaticSize = Enum.AutomaticSize.X
				wgrgerqgerq.TextColor3 = Color3.fromRGB(255, 255, 255)
				wgrgerqgerq.TextSize = 10.000
				wgrgerqgerq.TextStrokeTransparency = 0.000
				wgrgerqgerq.TextXAlignment = Enum.TextXAlignment.Left

				grgrgr.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(46, 43, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 24, 24))}
				grgrgr.Rotation = 90
				grgrgr.Name = grgrgr
				grgrgr.Parent = wgrgerqgerq

				gradins.Name = gradins
				gradins.Parent = wgrgerqgerq
				gradins.AutomaticSize = Enum.AutomaticSize.X
				gradins.BackgroundColor3 = Color3.fromRGB(222, 232, 255)
				gradins.BorderSizePixel = 0
				gradins.Size = UDim2.new(0, 62, 0, 2)

				qewgrqgwrgqr.Name = qewgrqgwrgqr
				qewgrqgwrgqr.Parent = gradins
				qewgrqgwrgqr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				qewgrqgwrgqr.BackgroundTransparency = 1.000
				qewgrqgwrgqr.BorderColor3 = Color3.fromRGB(27, 42, 53)
				qewgrqgwrgqr.Position = UDim2.new(0, 0, 1, 0)
				qewgrqgwrgqr.Size = UDim2.new(0, 62, 0, 19)
				qewgrqgwrgqr.Font = Enum.Font.Ubuntu
				qewgrqgwrgqr.AutomaticSize = Enum.AutomaticSize.X
				qewgrqgwrgqr.Text =    Fakelag Indicator
				qewgrqgwrgqr.TextColor3 = Color3.fromRGB(255, 255, 255)
				qewgrqgwrgqr.TextSize = 10.000
				qewgrqgwrgqr.TextStrokeTransparency = 0.000
				qewgrqgwrgqr.TextXAlignment = Enum.TextXAlignment.Left

				niggerhaha.Name = niggerhaha
				niggerhaha.Parent = gradins
				niggerhaha.BackgroundColor3 = Color3.fromRGB(25, 24, 24)
				niggerhaha.BorderColor3 = Color3.fromRGB(25, 24, 24)
				niggerhaha.AutomaticSize = Enum.AutomaticSize.X
				niggerhaha.Position = UDim2.new(0, 0, 9.90899658, 2)
				niggerhaha.Size = UDim2.new(0, 102, 0, 14)

				lolfaggot.Name = lolfaggot
				lolfaggot.Parent = niggerhaha
				lolfaggot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				lolfaggot.BorderSizePixel = 0
				lolfaggot.Position = UDim2.new(0, 0, 0, -1)
				lolfaggot.Size = UDim2.new(0, 0, 0, 14)

				gergergre.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
				gergergre.Rotation = 90
				gergergre.Name = gergergre
				gergergre.Parent = lolfaggot

				local function OWOK_fake_script() -- wgrgerqgerq.LocalScript 
					local script = Instance.new('LocalScript', wgrgerqgerq)

					local watermark = script.Parent
					watermark.Draggable = true
					watermark.Active = true
				end
				coroutine.wrap(OWOK_fake_script)()

				while wait(116) do
					LagTick = CLAMP(LagTick + 1, 0, values.rage.fakelag.limit.Slider)
					if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild('UpperTorso') and LocalPlayer.CharacterFindFirstChild('HumanoidRootPart') and values.rage.fakelag.enabled.Toggle and values.rage.fakelag.enabled.Active then
						if LagTick = (values.rage.fakelag.random.Toggle and math.random(0, values.rage.fakelag.limit.Slider) or values.rage.fakelag.limit.Slider)  then
							if values.rage.fakelag.amount.Dropdown == 'static' then 
								gameGetService('NetworkClient')SetOutgoingKBPSLimit(9e9)
								FakelagFolderClearAllChildren()
								LagTick = 0
								if values.rage.fakelag['visualize lag'].Toggle then
									for _,hitbox in pairs(LocalPlayer.CharacterGetChildren()) do
										if hitboxIsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
											local Part = Instance.new(Part)
											Part.BottomSurface = Enum.SurfaceType.Smooth
											Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
											Part.Color = values.rage.fakelag['visualize lag'].Color
											Part.Material = Enum.Material.ForceField
											Part.Shape = Enum.PartType.Ball
											Part.Size = Vector3.new(2, 2, 2)
											Part.TopSurface = Enum.SurfaceType.Smooth
											Part.Parent = FakelagFolder
											Part.Anchored = true
											Part.CanCollide = false
											Part.Position = LocalPlayer.Character.HumanoidRootPart.Position
										end
									end
								end
							elseif values.rage.fakelag.amount.Dropdown == 'freeze' and allowedtofreeze then 
								LagTick = 0
								FakelagFolderClearAllChildren()

								pcall(function()
									workspace.FreezeCharacter2Remove()
								end)
								wait(0.1)
								lolfaggotTweenSize(UDim2.new(0, 102, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
								pcall(function()
									local part = INST('Part', workspace)

									part.Size = Vector3.new(30, 1, 30) 


									part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
									part.CanCollide = false
									part.Transparency = 1
									part.Name = 'FreezeCharacter2'


									local weld = INST('Weld',part)
									weld.Part0 = part
									weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart


									if values.rage.fakelag['visualize lag'].Toggle then
										for _,hitbox in pairs(LocalPlayer.CharacterGetChildren()) do
											if hitboxIsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
												local Part = Instance.new(Part)
												Part.Anchored = true
												Part.BottomSurface = Enum.SurfaceType.Smooth
												Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
												Part.Color = values.rage.fakelag['visualize lag'].Color
												Part.Material = Enum.Material.ForceField
												Part.Reflectance = 1
												Part.Shape = Enum.PartType.Ball
												Part.Size = Vector3.new(2, 2, 2)
												Part.Transparency = 0.8
												Part.CanCollide = false
												Part.Parent = FakelagFolder
												Part.Position = LocalPlayer.Character.HumanoidRootPart.Position
											end
										end
									end
								end)

								wait(0.1)
								lolfaggotTweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
							elseif values.rage.fakelag.amount.Dropdown == 'tfreeze' and allowedtofreeze then 
								LagTick = 0
								FakelagFolderClearAllChildren()
								pcall(function()

								end)
								pcall(function()
									workspace.FreezeCharacter2Remove()
								end)
								local loopstuff
								pcall(function()
									saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									savedcamerapart.CFrame = workspace.Camera.Focus
									workspace.Camera.CameraSubject = savedcamerapart
									loopstuff = gameGetService('RunService').SteppedConnect(function()
										savedcamerapart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, savedcamerapart.CFrame.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
									end)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -values.rage.fakelag['under y'].Slider, 0)
								end)

								wait(0.15)
								lolfaggotTweenSize(UDim2.new(0, 102, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.15,true)
								pcall(function()
									local part = INST('Part', workspace)

									part.Size = Vector3.new(30, 1, 30) 


									part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
									part.CanCollide = false
									part.Transparency = 1
									part.Name = 'FreezeCharacter2'


									local weld = INST('Weld',part)
									weld.Part0 = part
									weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart


									if values.rage.fakelag['visualize lag'].Toggle then
										for _,hitbox in pairs(LocalPlayer.CharacterGetChildren()) do
											if hitboxIsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
												local part = INST('Part')
												part.CFrame = hitbox.CFrame
												part.Anchored = true
												part.CanCollide = false
												part.Material = Enum.Material.ForceField
												part.Color = values.rage.fakelag['visualize lag'].Color
												part.Name = hitbox.Name
												part.Transparency = 0
												part.Size = hitbox.Size
												part.Parent = FakelagFolder
											end
										end
									end
								end)

								wait(0.01)
								lolfaggotTweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01,true)
								pcall(function()
									loopstuffDisconnect()
									workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
									workspace.FreezeCharacter2.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, saved.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
								end)


								wait(0.1)
								lolfaggotTweenSize(UDim2.new(0, 102, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
							elseif values.rage.fakelag.amount.Dropdown == 'underfreeze'  and allowedtofreeze then 
								LagTick = 0
								FakelagFolderClearAllChildren()

								pcall(function()
									workspace.FreezeCharacter2Remove()
								end)
								local loopstuff
								pcall(function()
									saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									savedcamerapart.CFrame = workspace.Camera.Focus
									workspace.Camera.CameraSubject = savedcamerapart
									loopstuff = gameGetService('RunService').SteppedConnect(function()
										savedcamerapart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, savedcamerapart.CFrame.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
									end)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -values.rage.fakelag['under y'].Slider, 0)
								end)

								wait(0.15)
								lolfaggotTweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.15,true)
								pcall(function()
									local part = INST('Part', workspace)

									part.Size = Vector3.new(30, 1, 30) 


									part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
									part.CanCollide = false
									part.Transparency = 1
									part.Name = 'FreezeCharacter2'


									local weld = INST('Weld',part)
									weld.Part0 = part
									weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart


									if values.rage.fakelag['visualize lag'].Toggle then
										for _,hitbox in pairs(LocalPlayer.CharacterGetChildren()) do
											if hitboxIsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
												local part = INST('Part')
												part.CFrame = hitbox.CFrame
												part.Anchored = true
												part.CanCollide = false
												part.Material = Enum.Material.ForceField
												part.Color = values.rage.fakelag['visualize lag'].Color
												part.Name = hitbox.Name
												part.Transparency = 0
												part.Size = hitbox.Size
												part.Parent = FakelagFolder
											end
										end
									end
								end)

								wait(0.01)
								lolfaggotTweenSize(UDim2.new(0, 102, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01,true)
								pcall(function()
									loopstuffDisconnect()
									workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
									workspace.FreezeCharacter2.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, saved.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
								end)


								wait(0.1)
								lolfaggotTweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
							end
						else
							lolfaggotTweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
							if values.rage.fakelag.enabled.Toggle and values.rage.fakelag.amount.Dropdown == 'static' then
								gameGetService('NetworkClient')SetOutgoingKBPSLimit(1)
							end
						end
					else

						pcall(function()
							workspace.FreezeCharacter2Remove()
						end)
						FakelagFolderClearAllChildren()
						gameGetService('NetworkClient')SetOutgoingKBPSLimit(9e9)
					end
				end
			end)()      

local buybot = rageSector(Buy Bot, Right)
buybotElement('Button', 'Buy USP', {}, function()
	-- pasted from google
	local gun = USP
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)
buybotElement('Button', 'Buy P90', {}, function()
	-- pasted from google
	local gun = P90
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)
buybotElement('Button', 'Buy AWP', {}, function()
	-- pasted from google
	local gun = AWP
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)
buybotElement('Button', 'Buy AK47', {}, function()
	-- pasted from google
	local gun = AK47
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)
buybotElement('Button', 'Buy USP', {}, function()
	-- pasted from google
	local gun = USP
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)
buybotElement('Button', 'Buy Galil', {}, function()
	-- pasted from google
	local gun = Galil
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)
buybotElement('Button', 'Buy DesertEagle', {}, function()
	-- pasted from Earth
	local gun = DesertEagle
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)
buybotElement('Button', 'Buy C4', {}, function()
	-- pasted from Earth
	local gun = C4
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)
buybotElement('Button', 'Buy Tec9', {}, function()
	-- pasted from Earth
	local gun = Tec9
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), script)

		if type(v) == function and parentScript == gameGetService(Players).LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == giveTool then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
end)

local exploits = rageSector(exploits, Left)      
exploitsElement(ToggleKeybind, double tap)    
exploitsElement(ToggleKeybind, kill all)
exploitsElement(Slider, kill amount, {min = 1, max = 50, default = 1})
exploitsElement(Toggle, anti-ping, {}, function(tbl)      
	spawn(function()
		while values.rage.exploits[anti-ping].Toggle do
			pcall(function()
				gameGetService(RunService).RenderSteppedWait()
				for i,v in pairs(workspace[Ray_Ignore]GetChildren()) do
					if v.Name == MagDrop then
						vDestroy()
					end
				end
			end)
		end 
	end)    
end)
exploitsElement(Button, walkspeed speed, {}, function(tbl)
	-- Speed
	Speed = values.rage.exploits['speed speed'].Slider

	-- Variables
	local Plrs = gameGetService(Players)
	local MyPlr = Plrs.LocalPlayer
	local MyChar = MyPlr.Character

	-- Code
	if MyChar then
	local Hum = MyChar.Humanoid
	Hum.Changedconnect(function()
	Hum.WalkSpeed = Speed
	end)
	Hum.WalkSpeed = Speed
	end
	MyPlr.CharacterAddedconnect(function(Char)
	MyChar = Char
	repeat wait() until CharFindFirstChild(Humanoid)
	local Hum = Char.Humanoid
	Hum.Changedconnect(function()
	Hum.WalkSpeed = Speed
	end)
	Hum.WalkSpeed = Speed
	end)
end)
exploitsElement('Slider', 'speed speed', {min = 1, max = 100, default = 1}) 
exploitsElement(Button, God Mode, {}, function() 
	local ReplicatedStorage = gameGetService(ReplicatedStorage);
	local ApplyGun = ReplicatedStorage.Events.ApplyGun;
	ApplyGunFireServer({
		Model = ReplicatedStorage.Hostage.Hostage,
		Name = USP
	}, game.Players.LocalPlayer);
end)

local players = visualsSector(players, Left)      
playersElement(Toggle, teammates)      
playersElement(ToggleColor, box, {default = {Color = COL3RGB(255,255,255)}})      
playersElement(ToggleColor, name, {default = {Color = COL3RGB(255,255,255)}})      
playersElement(Toggle, health)      
playersElement(ToggleColor, weapon, {default = {Color = COL3RGB(255,255,255)}})      
playersElement(ToggleColor, weapon icon, {default = {Color = COL3RGB(255,255,255)}})      
playersElement(Jumbobox, indicators, {options = {armor}})      
playersElement(Jumbobox, outlines, {options = {drawings, text}, default = {Jumbobox = {drawings, text}}})      
playersElement(Dropdown, font, {options = {Plex, Monospace, System, UI}})      
playersElement(Slider, size, {min = 12, max = 16, default = 13})      
playersElement(ToggleColor, chams, nil, function(tbl)      
	for _,Player in pairs(PlayersGetPlayers()) do      
		if Player.Character then      
			for _2,Obj in pairs(Player.CharacterGetDescendants()) do      
				if Obj.Name == VisibleCham or Obj.Name == WallCham then      
					if tbl.Toggle then      
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then      
							Obj.Visible = true      
						else      
							Obj.Visible = false      
						end      
					else      
						Obj.Visible = false      
					end      
					Obj.Color3 = tbl.Color      
				end      
			end      
		end      
	end      
end)      

local effects = visualsSector(effects, Right)      
effectsElement(ToggleTrans, weapon chams, {default = {Color = COL3RGB(255,255,255), Transparency = 0}}, function(tbl)      
	if WeaponObj == nil then return end      
	if tbl.Toggle then      
		for i,v in pairs(WeaponObj) do      
			UpdateWeapon(v)      
		end      
	else      
		for i,v in pairs(WeaponObj) do      
			if vIsA(MeshPart) then v.TextureID = v.OriginalTexture.Value end      
			if vIsA(Part) and vFindFirstChild(Mesh) and not vIsA(BlockMesh) then      
				v.Mesh.TextureId = v.Mesh.OriginalTexture.Value      
				v.Mesh.VertexColor = Vec3(1,1,1)      
			end      
			v.Color = v.OriginalColor.Value      
			v.Material = v.OriginalMaterial.Value      
			v.Transparency = 0      
		end      
	end      
end)      
effectsElement(Dropdown, weapon material, {options = {Smooth, Flat, ForceField, Glass}}, function(tbl) 
	if WeaponObj == nil then return end 
	if values.visuals.effects[weapon chams].Toggle then 
		for i,v in pairs(WeaponObj) do 
			UpdateWeapon(v) 
		end 
	end 
end)
effectsElement('Dropdown', 'forcefield type', {options = {'normal', 'bloxsenseripoff', 'drugs', 'disgusting'}})      
effectsElement(Slider, reflectance, {min = 0, max = 100, default = 0}, function(tbl)      
	if values.visuals.effects[weapon chams].Toggle then      
		for i,v in pairs(WeaponObj) do      
			UpdateWeapon(v)      
		end      
	end      
end)      
effectsElement(ToggleTrans, accessory chams, {default = {Color = COL3RGB(255,255,255)}}, function(val)      
	if RArm == nil or LArm == nil then return end      
	if val.Toggle then      
		if RGlove ~= nil then      
			UpdateAccessory(RGlove)      
		end      
		if RSleeve ~= nil then      
			UpdateAccessory(RSleeve)      
		end      
		if LGlove ~= nil then      
			UpdateAccessory(LGlove)      
		end      
		if LSleeve ~= nil then      
			UpdateAccessory(LSleeve)      
		end      
	else      
		if RGlove then      
			ReverseAccessory(RGlove)      
		end      
		if LGlove then      
			ReverseAccessory(LGlove)      
		end      
		if RSleeve then      
			ReverseAccessory(RSleeve)      
		end      
		if LSleeve then      
			ReverseAccessory(LSleeve)      
		end      
	end      
end)      
effectsElement(Dropdown, accessory material, {options = {Smooth,ForceField}}, function(val)      
	if RArm == nil or LArm == nil then return end      
	if values.visuals.effects[accessory chams].Toggle then      
		if RGlove ~= nil then      
			UpdateAccessory(RGlove)      
		end      
		if RSleeve ~= nil then      
			UpdateAccessory(RSleeve)      
		end      
		if LGlove ~= nil then      
			UpdateAccessory(LGlove)      
		end      
		if LSleeve ~= nil then      
			UpdateAccessory(LSleeve)      
		end      
	end      
end)      
effectsElement(ToggleTrans, arm chams, {default = {Color = COL3RGB(255,255,255)}}, function(val)      
	if RArm == nil then return end      
	if LArm == nil then return end      
	if val.Toggle then      
		RArm.Color = val.Color      
		LArm.Color = val.Color      
		RArm.Transparency = val.Transparency      
		LArm.Transparency = val.Transparency      
	else      
		RArm.Color = RArm.Color3Value.Value      
		LArm.Color = RArm.Color3Value.Value      
		RArm.Transparency = 0      
		LArm.Transparency = 0      
	end      
end)      
effectsElement(Jumbobox, removals, {options = {scope, scope lines, flash, smoke, decals, shadows, clothes}}, function(val)      
	local tbl = val.Jumbobox      
	if TBLFIND(tbl, decals) then      
		Client.createbullethole = function() end      
		for i,v in pairs(workspace.DebrisGetChildren()) do      
			if v.Name == Bullet or v.Name == SurfaceGui then      
				vDestroy()      
			end      
		end      
	else      
		Client.createbullethole = oldcreatebullethole      
	end      
	if TBLFIND(tbl, clothes) then      
		if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(UpperTorso) then      
			if LocalPlayer.CharacterFindFirstChild(Shirt) then      
				LocalPlayer.CharacterFindFirstChild(Shirt).ShirtTemplate =       
			end      
			if LocalPlayer.CharacterFindFirstChild(Pants) then      
				LocalPlayer.CharacterFindFirstChild(Pants).PantsTemplate =       
			end      
		end      
	else      
		if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(UpperTorso) then      
			if LocalPlayer.CharacterFindFirstChild(Shirt) then      
				LocalPlayer.CharacterFindFirstChild(Shirt).ShirtTemplate = LocalPlayer.CharacterFindFirstChild(Shirt).OriginalTexture.Value      
			end      
			if LocalPlayer.CharacterFindFirstChild(Pants) then      
				LocalPlayer.CharacterFindFirstChild(Pants).PantsTemplate = LocalPlayer.CharacterFindFirstChild(Pants).OriginalTexture.Value      
			end      
		end      
	end      
	if TBLFIND(tbl, scope) then      
		Crosshairs.Scope.ImageTransparency = 1      
		Crosshairs.Scope.Scope.ImageTransparency = 1      
		Crosshairs.Frame1.Transparency = 1      
		Crosshairs.Frame2.Transparency = 1      
		Crosshairs.Frame3.Transparency = 1      
		Crosshairs.Frame4.Transparency = 1      
	else      
		Crosshairs.Scope.ImageTransparency = 0      
		Crosshairs.Scope.Scope.ImageTransparency = 0      
		Crosshairs.Frame1.Transparency = 0      
		Crosshairs.Frame2.Transparency = 0      
		Crosshairs.Frame3.Transparency = 0      
		Crosshairs.Frame4.Transparency = 0      
	end      
	PlayerGui.Blnd.Enabled = not TBLFIND(tbl, flash) and true or false      
	Lighting.GlobalShadows = not TBLFIND(tbl, shadows) and true or false      
	if RayIgnoreFindFirstChild(Smokes) then      
		if TBLFIND(tbl, smoke) then      
			for i,smoke in pairs(RayIgnore.SmokesGetChildren()) do      
				smoke.ParticleEmitter.Rate = 0      
			end      
		else      
			for i,smoke in pairs(RayIgnore.SmokesGetChildren()) do      
				smoke.ParticleEmitter.Rate = smoke.OriginalRate.Value      
			end      
		end      
	end      
end)      
effectsElement(Toggle, force crosshair)      
effectsElement(ToggleColor, world color, {default = {Color = COL3RGB(255,255,255)}}, function(val)      
	if val.Toggle then      
		Camera.ColorCorrection.TintColor = val.Color      
	else      
		Camera.ColorCorrection.TintColor = COL3RGB(255,255,255)      
	end      
end)      
effectsElement(Toggle, shadowmap technology, nil, function(val) sethiddenproperty(Lighting, Technology, val.Toggle and ShadowMap or Legacy) end)      

local self = visualsSector(self, Right)      
selfElement(ToggleKeybind, third person, {}, function(tbl)      
	if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(Humanoid) then      
		if tbl.Toggle then      
			if tbl.Active then      
				LocalPlayer.CameraMaxZoomDistance = values.visuals.self.distance.Slider      
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider      
				LocalPlayer.CameraMaxZoomDistance = values.visuals.self.distance.Slider      
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider      
			else      
				LocalPlayer.CameraMaxZoomDistance = 0      
				LocalPlayer.CameraMinZoomDistance = 0      
				LocalPlayer.CameraMaxZoomDistance = 0      
				LocalPlayer.CameraMinZoomDistance = 0      
			end      
		else      
			LocalPlayer.CameraMaxZoomDistance = 0      
			LocalPlayer.CameraMinZoomDistance = 0      
		end      
	end      
end)
selfElement('Toggle', 'hide arms')
     
selfElement(Slider, distance, {min = 6, max = 18, default = 12}, function(tbl)      
	if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(Humanoid) then      
		if values.visuals.self[third person].Toggle then      
			if values.visuals.self[third person].Active then      
				LocalPlayer.CameraMaxZoomDistance = tbl.Slider      
				LocalPlayer.CameraMinZoomDistance = tbl.Slider      
				LocalPlayer.CameraMaxZoomDistance = tbl.Slider      
				LocalPlayer.CameraMinZoomDistance = tbl.Slider      
			else      
				LocalPlayer.CameraMaxZoomDistance = 0      
				LocalPlayer.CameraMinZoomDistance = 0      
			end      
		else      
			LocalPlayer.CameraMaxZoomDistance = 0      
			LocalPlayer.CameraMinZoomDistance = 0      
		end      
	end      
end)      
LocalPlayerGetPropertyChangedSignal(CameraMinZoomDistance)Connect(function(current)      
	if values.visuals.self[third person].Toggle then      
		if values.visuals.self[third person].Active then      
			if current ~= values.visuals.self.distance.Slider then      
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider      
			end      
		end      
	end      
end)
selfElement(Toggle, visualize silent angle)
selfElement(Slider, silent angle speed, {min = 0, max = 10, default = 5})      
selfElement(Slider, fov changer, {min = 0, max = 120, default = 80}, function(value)      
	RunService.RenderSteppedWait()      
	if LocalPlayer.Character == nil then return end      
	if fov == value.Slider then return end      
	if values.visuals.self[on scope].Toggle or not LocalPlayer.CharacterFindFirstChild(AIMING) then      
		Camera.FieldOfView = value.Slider      
	end      
end)      
selfElement(Toggle, on scope)      
selfElement(Toggle, viewmodel changer)      
selfElement(Slider, viewmodel x, {min = -20, max = 20}, function(val)      
	ViewmodelOffset = CF(values.visuals.self[viewmodel x].Slider7, values.visuals.self[viewmodel y].Slider7, values.visuals.self[viewmodel z].Slider7)  CFAngles(0, 0, values.visuals.self.roll.Slider50)      
end)      
selfElement(Slider, viewmodel y, {min = -20, max = 20}, function(val)      
	ViewmodelOffset = CF(values.visuals.self[viewmodel x].Slider7, values.visuals.self[viewmodel y].Slider7, values.visuals.self[viewmodel z].Slider7)  CFAngles(0, 0, values.visuals.self.roll.Slider50)      
end)      
selfElement(Slider, viewmodel z, {min = -20, max = 20}, function(val)      
	ViewmodelOffset = CF(values.visuals.self[viewmodel x].Slider7, values.visuals.self[viewmodel y].Slider7, values.visuals.self[viewmodel z].Slider7)  CFAngles(0, 0, values.visuals.self.roll.Slider50)      
end)      
selfElement(Slider, roll, {min = -100, max = 100}, function(val)      
	ViewmodelOffset = CF(values.visuals.self[viewmodel x].Slider7, values.visuals.self[viewmodel y].Slider7, values.visuals.self[viewmodel z].Slider7)  CFAngles(0, 0, values.visuals.self.roll.Slider50)      
end)      
selfElement(ToggleTrans, self chams, {default = {Color = COL3RGB(255,255,255), Transparency = 0}}, function(tbl)      
	if tbl.Toggle then      
		for _,obj in pairs(SelfObj) do      
			if obj.Parent ~= nil then      
				obj.Material = Enum.Material.ForceField      
				obj.Color = tbl.Color
				obj.Transparency = tbl.Transparency  
			end      
		end      
	else      
		for _,obj in pairs(SelfObj) do      
			if obj.Parent ~= nil then      
				obj.Material = obj.OriginalMaterial.Value      
				obj.Color = obj.OriginalColor.Value 
				obj.Transparency = tbl.Transparency     
			end      
		end      
	end      
end)      
selfElement(Slider, scope blend, {min = 0, max = 100, default = 0})      

local ads = Client.updateads      
Client.updateads = function(self, ...)      
	local args = {...}      
	coroutine.wrap(function()      
		wait()      
		if LocalPlayer.Character ~= nil then      
			for _,part in pairs(LocalPlayer.CharacterGetDescendants()) do      
				if partIsA(Part) or partIsA(MeshPart) then      
					if part.Transparency ~= 1 then      
						part.Transparency = LocalPlayer.CharacterFindFirstChild(AIMING) and values.visuals.self[scope blend].Slider100 or 0      
					end      
				end      
				if partIsA(Accessory) then      
					part.Handle.Transparency = LocalPlayer.CharacterFindFirstChild(AIMING) and values.visuals.self[scope blend].Slider100 or 0      
				end      
			end      
		end      
	end)()      
	return ads(self, ...)      
end      

local world = visualsSector(world, Left)      
worldElement(ToggleTrans, molly radius, {default = {Color = COL3RGB(255,0,0)}}, function(tbl)      
	if RayIgnoreFindFirstChild(Fires) == nil then return end      
	if tbl.Toggle then      
		for i,fire in pairs(RayIgnoreFindFirstChild(Fires)GetChildren()) do      
			fire.Transparency = tbl.Transparency      
			fire.Color = tbl.Color      
		end      
	else      
		for i,fire in pairs(RayIgnoreFindFirstChild(Fires)GetChildren()) do      
			fire.Transparency = 1      
		end      
	end      
end)

		-- bullet tracer from rit
		worldElement('ToggleColor', 'color_for_bullet_tracer', {default = {Color = Color3.fromRGB(0, 255, 0)}})
		worldElement(Toggle, bullet Tracer ,  nil, function(tbl)
				if tbl.Toggle then
					local nigger1 = true
					   if nigger1 == true then
						local Services = {
							Players = gameGetService(Players),
							UserInputService = gameGetService(UserInputService),
							RunService = gameGetService(RunService),
							}

							local Local = {
							Player = Services.Players.LocalPlayer,
							Mouse = Services.Players.LocalPlayerGetMouse(),
							}

							--Local.Mouse.TargetFilter = workspace.BeamPart

							local Other = {
							Camera = workspace.CurrentCamera,
							BeamPart = Instance.new(Part, workspace)
							}

							Other.BeamPart.Name = BeamPart
							Other.BeamPart.Transparency = 1

							local Settings = {
							StartColor = Color3.new(1, 1, 1),
							EndColor = Color3.new(1, 0, 0),
							StartWidth = 1,
							EndWidth = 0.20,
							ShowImpactPoint = false,
							ImpactTransparency = 0,
							ImpactColor = Color3.new(1, 1, 1),
							Time = 0.5,
							}


						local mt = getrawmetatable(game)
						local old = mt.__namecall
						local lp = gameGetService(Players).LocalPlayer
						local rs = gameGetService(RunService).RenderStepped
						local lasthittick = tick()

							local funcs = {}
							local Silent = false

							function funcsBeam(v1, v2)
								local colorSequence = ColorSequence.new({
									ColorSequenceKeypoint.new(0, Settings.StartColor),
									ColorSequenceKeypoint.new(1, Settings.EndColor),
									})
							local Part = Instance.new(Part, Other.BeamPart)
							Part.Size = Vector3.new(0, 0, 0)
							Part.Transparency = 1
							Part.CanCollide = false
							Part.CFrame = CFrame.new(v1)
							Part.Anchored = true
							local Attachment = Instance.new(Attachment, Part)
							local Part2 = Instance.new(Part, Other.BeamPart)
							Part2.Size = Vector3.new(0, 0, 0)
							Part2.Transparency = ShowImpactPoint and Settings.ImpactTransparency or 1
							Part2.CanCollide = false
							Part2.CFrame = CFrame.new(v2)
							Part2.Anchored = true
							Part2.Color = Settings.ImpactColor
							local Attachment2 = Instance.new(Attachment, Part2)
							local Beam = Instance.new(Beam, Part)
							Beam.FaceCamera = true
							Beam.Texture = rbxassetid446111271
							Beam.TextureLength = 1
							Beam.TextureMode = Enum.TextureMode.Stretch
							Beam.TextureSpeed = 2.4
							Beam.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, values.visuals.world['color_for_bullet_tracer'].Color), ColorSequenceKeypoint.new(1, values.visuals.world['color_for_bullet_tracer'].Color)}
							Beam.Attachment0 = Attachment
							Beam.Attachment1 = Attachment2
							Beam.LightEmission = 6
							Beam.LightInfluence = 1
							Beam.Width0 = Settings.StartWidth
							Beam.Width1 = Settings.EndWidth
							delay(Settings.Time, function()
							for i = 0.5, 1, 0.02 do
							wait()
							Beam.Transparency = NumberSequence.new(i)
							end
							PartDestroy()
							Part2Destroy()
							end)
							end

							setreadonly(mt, false)
						mt.__namecall = newcclosure(function(self, ...)
							local args = {...}
							if getnamecallmethod() == FireServer and self.Name == HitPart and tick() - lasthittick  0.005 then
								lasthittick = tick()
								spawn(function()
									local Beam = funcsBeam(lp.Character.Gun.Flash.CFrame.p, args[2])
									for i = 1, 1  lifetime do
										rsWait()
										Beam.Transparency = i  (1  lifetime)
									end
									BeamDestroy()
								end)
							end
							return old(self, ...)
						end)
						setreadonly(mt, true)


				end
			end
			end)      
worldElement(ToggleColor, smoke radius, {default = {Color = COL3RGB(0, 255, 0)}}, function(tbl)      
	if RayIgnoreFindFirstChild(Smokes) == nil then return end      
	if tbl.Toggle then      
		for i,smoke in pairs(RayIgnoreFindFirstChild(Smokes)GetChildren()) do      
			smoke.Transparency = 0      
			smoke.Color = tbl.Color      
		end      
	else      
		for i,smoke in pairs(RayIgnoreFindFirstChild(Smokes)GetChildren()) do      
			smoke.Transparency = 1      
		end      
	end      
end)      
      
worldElement(ToggleColor, impacts, {default = {Color = COL3RGB(255, 0, 0)}})     
worldElement(Dropdown, hitsound, {options = {none, skeet, neverlose, rust, bag, baimware}})      
worldElement(Slider, sound volume, {min = 1, max = 5, default = 3})      
worldElement(Dropdown, skybox, {options = {none, nebula, vaporwave, clouds}}, function(tbl)      
	local sky = tbl.Dropdown      
	if sky ~= none then      
		if LightingFindFirstChildOfClass(Sky) then LightingFindFirstChildOfClass(Sky)Destroy() end      
		local skybox = INST(Sky)      
		skybox.SkyboxLf = Skyboxes[sky].SkyboxLf      
		skybox.SkyboxBk = Skyboxes[sky].SkyboxBk      
		skybox.SkyboxDn = Skyboxes[sky].SkyboxDn      
		skybox.SkyboxFt = Skyboxes[sky].SkyboxFt      
		skybox.SkyboxRt = Skyboxes[sky].SkyboxRt      
		skybox.SkyboxUp = Skyboxes[sky].SkyboxUp      
		skybox.Name = override      
		skybox.Parent = Lighting      
	else      
		if LightingFindFirstChildOfClass(Sky) then LightingFindFirstChildOfClass(Sky)Destroy() end      
		if oldSkybox ~= nil then oldSkyboxClone().Parent = Lighting end      
	end      
end)      
worldElement(ToggleColor, item esp, {default = {Color = COL3RGB(255, 255, 255)}}, function(tbl)      
	for i,weapon in pairs(workspace.DebrisGetChildren()) do      
		if weaponIsA(BasePart) and WeaponsFindFirstChild(weapon.Name) then      
			weapon.BillboardGui.ImageLabel.Visible = tbl.Toggle and TBLFIND(values.visuals.world[types].Jumbobox, icon) and true or false      
		end      
	end      
end)      
worldElement(Jumbobox, types, {options = {icon}}, function(tbl)      
	for i,weapon in pairs(workspace.DebrisGetChildren()) do      
		if weaponIsA(BasePart) and WeaponsFindFirstChild(weapon.Name) then      
			weapon.BillboardGui.ImageLabel.Visible = values.visuals.world[item esp].Toggle and TBLFIND(tbl.Jumbobox, icon) and true or false      
			weapon.BillboardGui.ImageLabel.ImageColor3 = values.visuals.world[item esp].Color      
		end      
	end      
end)      
local configs = miscSector(configs, Left)      
configsElement(TextBox, config, {placeholder = config name})      
configsElement(Button, save, {}, function() if values.misc.configs.config.Text ~=  then librarySaveConfig(values.misc.configs.config.Text) end end)      
configsElement(Button, load, {}, function() if values.misc.configs.config.Text ~=  then ConfigLoadFire(values.misc.configs.config.Text) end end)      
configsElement(Toggle, keybind list, nil, function(tbl)      
	librarySetKeybindVisible(tbl.Toggle)      
end)      

local crosshaireditor = miscSector(crosshair editor, Right)      
local function UpdateCrosshair()      
	if values.misc[crosshair editor].enabled.Toggle then      
		local length = values.misc[crosshair editor].length.Slider      
		Crosshair.LeftFrame.Size = UDIM2(0, length, 0, 2)      
		Crosshair.RightFrame.Size = UDIM2(0, length, 0, 2)      
		Crosshair.TopFrame.Size = UDIM2(0, 2, 0, length)      
		Crosshair.BottomFrame.Size = UDIM2(0, 2, 0, length)      
		for _,frame in pairs(CrosshairGetChildren()) do      
			if FIND(frame.Name, Frame) then      
				frame.BorderColor3 = COL3(0,0,0)      
				if values.misc[crosshair editor].border.Toggle then      
					frame.BorderSizePixel = 1      
				else      
					frame.BorderSizePixel = 0      
				end      
			end      
		end      
	else      
		Crosshair.LeftFrame.Size = UDIM2(0, 10, 0, 2)      
		Crosshair.RightFrame.Size = UDIM2(0, 10, 0, 2)      
		Crosshair.TopFrame.Size = UDIM2(0, 2, 0, 10)      
		Crosshair.BottomFrame.Size = UDIM2(0, 2, 0, 10)      
		for _,frame in pairs(CrosshairGetChildren()) do      
			if FIND(frame.Name, Frame) then      
				frame.BorderSizePixel = 0      
			end      
		end      
	end      
end      
crosshaireditorElement(Toggle, enabled, nil, UpdateCrosshair)      
crosshaireditorElement(Slider, length, {min = 1, max = 15, default = 10}, UpdateCrosshair)      
crosshaireditorElement(Toggle, border, nil, UpdateCrosshair)      

local client = miscSector(client, Right)      
clientElement(Toggle, infinite cash, nil, function(tbl)      
	if tbl.Toggle then      
		LocalPlayer.Cash.Value = 8000      
	end      
end)      
clientElement(Toggle, infinite crouch)      
clientElement(Jumbobox, damage bypass, {options = {fire, fall}})      
clientElement(Jumbobox, gun modifiers, {options = {recoil, spread, reload, equip, ammo, automatic, penetration, firerate}})      
clientElement(Toggle, remove killers, {}, function(tbl)      
	if tbl.Toggle then      
		if workspaceFindFirstChild(Map) and workspaceFindFirstChild(Map)FindFirstChild(Killers) then      
			local clone = workspaceFindFirstChild(Map)FindFirstChild(Killers)Clone()      
			clone.Name = KillersClone      
			clone.Parent = workspaceFindFirstChild(Map)      

			workspaceFindFirstChild(Map)FindFirstChild(Killers)Destroy()      
		end      
	else      
		if workspaceFindFirstChild(Map) and workspaceFindFirstChild(Map)FindFirstChild(KillersClone) then      
			workspaceFindFirstChild(Map)FindFirstChild(KillersClone).Name = Killers      
		end      
	end      
end)      
clientElement(ToggleColor, hitmarker, {default = {Color = COL3RGB(255,255,255)}})      
clientElement(Toggle, buy any grenade)      
clientElement(Toggle, chat alive)      
clientElement(Jumbobox, shop, {options = {inf time, anywhere}})      
clientElement(Toggle, anti spectate)      

local oldgrenadeallowed = Client.grenadeallowed      
Client.grenadeallowed = function(...)      
	if values.misc.client[buy any grenade].Toggle then      
		return true      
	end      

	return oldgrenadeallowed(...)      
end      

local movement = miscSector(movement, Left)      
movementElement(Toggle, bunny hop)      
movementElement(Dropdown, direction, {options = {forward, directional, directional 2}})      
movementElement(Dropdown, type, {options = {gyro, cframe, velocity, idk}})     
movementElement(Slider, speed, {min = 15, max = 100, default = 40})
movementElement(Toggle, cancel hop)
movementElement('ToggleKeybind', 'overwrite')
movementElement('Slider', 'overwrite speed', {min = 0, max = 200, default = 40})
movementElement(ToggleKeybind, walkspeed) 
movementElement(Slider, walkspeed speed, {min = 15, max = 250, default = 40})
movementElement(ToggleKeybind, jump bug)      
movementElement(ToggleKeybind, edge jump)

local chat = miscSector(chat, Left)      
chatElement(Toggle, chat spam, nil, function(tbl)      
	if tbl.Toggle then      
		while values.misc.chat[chat spam].Toggle do      
			gameGetService(ReplicatedStorage).Events.PlayerChattedFireServer(values.misc.chat.type.Dropdown == standard and hi or buy stormy.solutions, false, Innocent, false, true)      
			wait(values.misc.chat[speed (ms)].Slider1000)      
			      
		end      
	end      
end)      
chatElement(Dropdown, type, {options = {standard, stormy}})      
chatElement(Slider, speed (ms), {min = 150, max = 1000, default = 500})      
chatElement(Toggle, kill say)      
chatElement(TextBox, message, {placeholder = message})      
chatElement(Toggle, no filter)      

local grenades = miscSector(grenades, Right)      
grenadesElement(ToggleKeybind, spam grenades)      
coroutine.wrap(function()      
	while true do      
		wait(0.5)      
		if values.misc.grenades[spam grenades].Toggle and values.misc.grenades[spam grenades].Active then      
			local oh1 = gameGetService(ReplicatedStorage).Weapons[values.misc.grenades.grenade.Dropdown].Model      
			local oh3 = 25      
			local oh4 = 35      
			local oh6 =       
			local oh7 =       
			gameGetService(ReplicatedStorage).Events.ThrowGrenadeFireServer(oh1, nil, oh3, oh4, Vec3(0,-100,0), oh6, oh7)      
		end      
	end      
end)()      
grenadesElement(Dropdown, grenade, {options = {Flashbang, Smoke Grenade, Molotov, HE Grenade, Decoy Grenade}})      
grenadesElement('Button', 'crash server', {}, function()
	while true do
        pcall(function()
            gameGetService('RunService').RenderSteppedWait()
            for i = 1,100,1 do
                local ohInstance1 = LocalPlayer.Character.Gun.Mag
                gameGetService('ReplicatedStorage').Events.DropMagFireServer(ohInstance1)
            end
        end)
	end
end)      

local Dance = INST(Animation)      
Dance.AnimationId = rbxassetid5917459365      

local LoadedAnim      

local animations = miscSector(animations, Right)      
animationsElement(ToggleKeybind, enabled, nil, function(tbl)      
	pcall(function()      
		LoadedAnimStop()      
	end)      
	if not tbl.Toggle or tbl.Toggle and not tbl.Active then      
	else      
		if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(Humanoid) then      
			LoadedAnim = LocalPlayer.Character.HumanoidLoadAnimation(Dance)      
			LoadedAnim.Priority = Enum.AnimationPriority.Action      
			LoadedAnimPlay()      
		end      
	end      
end)      
animationsElement(Dropdown, animation, {options = {floss, default, lil nas x, dolphin, monkey}}, function(tbl)      
	Dance.AnimationId = tbl.Dropdown == floss and rbxassetid5917459365 or tbl.Dropdown == default and rbxassetid3732699835 or tbl.Dropdown == lil nas x and rbxassetid5938396308 or tbl.Dropdown == dolphin and rbxassetid5938365243 or tbl.Dropdown == monkey and rbxassetid3716636630      

	pcall(function()      
		LoadedAnimStop()      
	end)      

	if values.misc.animations.enabled.Toggle and values.misc.animations.enabled.Active then      
		if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(Humanoid) then      
			LoadedAnim = LocalPlayer.Character.HumanoidLoadAnimation(Dance)      
			LoadedAnim.Priority = Enum.AnimationPriority.Action      
			LoadedAnimPlay()      
		end      
	end      
end)      

local ui = miscSector(ui, Left)      
uiElement(Toggle, scaling)      
uiElement(Slider, amount, {min = 5, max = 11, default = 10})      

local objects = {}      
local utility = {}      
do      
	utility.default = {      
		Line = {      
			Thickness = 1.5,      
			Color = COL3RGB(255, 255, 255),      
			Visible = false      
		},      
		Text = {      
			Size = 13,      
			Center = true,      
			Outline = true,      
			Font = Drawing.Fonts.Plex,      
			Color = COL3RGB(255, 255, 255),      
			Visible = false      
		},      
		Square = {      
			Thickness = 1.5,      
			Filled = false,      
			Color = COL3RGB(255, 255, 255),      
			Visible = false      
		},      
	}      
	function utility.create(type, isOutline)      
		local drawing = Drawing.new(type)      
		for i, v in pairs(utility.default[type]) do      
			drawing[i] = v      
		end      
		if isOutline then      
			drawing.Color = COL3(0,0,0)      
			drawing.Thickness = 3      
		end      
		return drawing      
	end      
	function utility.add(plr)      
		if not objects[plr] then      
			objects[plr] = {      
				Name = utility.create(Text),      
				Weapon = utility.create(Text),      
				Armor = utility.create(Text),      
				BoxOutline = utility.create(Square, true),      
				Box = utility.create(Square),      
				HealthOutline = utility.create(Line, true),      
				Health = utility.create(Line),      
			}      
		end      
	end      
	for _,plr in pairs(PlayersGetPlayers()) do      
		if Player ~= LocalPlayer then      
			utility.add(plr)      
		end      
	end      
	Players.PlayerAddedConnect(utility.add)      
	Players.PlayerRemovingConnect(function(plr)      
		wait()      
		if objects[plr] then      
			for i,v in pairs(objects[plr]) do      
				for i2,v2 in pairs(v) do      
					if v then      
						vRemove()      
					end      
				end      
			end      

			objects[plr] = nil      
		end      
	end)      
end      
local Items = INST(ScreenGui)      
Items.Name = Items      
Items.Parent = game.CoreGui      
Items.ResetOnSpawn = false      
Items.ZIndexBehavior = Global      
do      
	function add(plr)      
		local ImageLabel = INST(ImageLabel)      
		ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
		ImageLabel.BackgroundTransparency = 1.000      
		ImageLabel.Size = UDIM2(0, 62, 0, 25)      
		ImageLabel.Visible = false      
		ImageLabel.Image = rbxassetid1784884358      
		ImageLabel.ScaleType = Enum.ScaleType.Fit      
		ImageLabel.Name = plr.Name      
		ImageLabel.AnchorPoint = Vec2(0.5,0.5)      
		ImageLabel.Parent = Items      
	end      
	for _,plr in pairs(PlayersGetPlayers()) do      
		if Player ~= LocalPlayer then      
			add(plr)      
		end      
	end      
	Players.PlayerAddedConnect(add)      
	Players.PlayerRemovingConnect(function(plr)      
		wait()      
		Items[plr.Name]Destroy()      
	end)      
end      
local debrisitems = {}      
workspace.Debris.ChildAddedConnect(function(obj)      
	if objIsA(BasePart) and WeaponsFindFirstChild(obj.Name) then      
		RunService.RenderSteppedWait()      

		local BillboardGui = INST(BillboardGui)      
		BillboardGui.AlwaysOnTop = true      
		BillboardGui.Size = UDIM2(0, 40, 0, 40)      
		BillboardGui.Adornee = obj      

		local ImageLabel = INST(ImageLabel)      
		ImageLabel.Parent = BillboardGui      
		ImageLabel.BackgroundTransparency = 1      
		ImageLabel.Size = UDIM2(1, 0, 1, 0)      
		ImageLabel.ImageColor3 = values.visuals.world[item esp].Color      
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name)      
		ImageLabel.ScaleType = Enum.ScaleType.Fit      
		ImageLabel.Visible = values.visuals.world[item esp].Toggle and TBLFIND(values.visuals.world[types].Jumbobox, icon) and true or false      

		BillboardGui.Parent = obj      
	end      
end)      
for _, obj in pairs(workspace.DebrisGetChildren()) do      
	if objIsA(BasePart) and WeaponsFindFirstChild(obj.Name) then      
		RunService.RenderSteppedWait()      

		local BillboardGui = INST(BillboardGui)      
		BillboardGui.AlwaysOnTop = true      
		BillboardGui.Size = UDIM2(0, 40, 0, 40)      
		BillboardGui.Adornee = obj      

		local ImageLabel = INST(ImageLabel)      
		ImageLabel.Parent = BillboardGui      
		ImageLabel.BackgroundTransparency = 1      
		ImageLabel.Size = UDIM2(1, 0, 1, 0)      
		ImageLabel.ImageColor3 = values.visuals.world[item esp].Color      
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name)      
		ImageLabel.ScaleType = Enum.ScaleType.Fit      
		ImageLabel.Visible = values.visuals.world[item esp].Toggle and TBLFIND(values.visuals.world[types].Jumbobox, icon) and true or false      

		BillboardGui.Parent = obj      
	end      
end      
local function YROTATION(cframe)      
	local x, y, z = cframeToOrientation()      
	return CF(cframe.Position)  CFAngles(0,y,0)      
end      
local function XYROTATION(cframe)      
	local x, y, z = cframeToOrientation()      
	return CF(cframe.Position)  CFAngles(x,y,0)      
end      
local weps = {      
	Pistol = {USP, P2000, Glock, DualBerettas, P250, FiveSeven, Tec9, CZ, DesertEagle, R8},      
	SMG = {MP9, MAC10, MP7, UMP, P90, Bizon},      
	Rifle = {M4A4, M4A1, AK47, Famas, Galil, AUG, SG},      
	Sniper = {AWP, Scout, G3SG1}      
}      
local weps2 = {      
	Pistol = {USP, P2000, Glock, DualBerettas, P250, FiveSeven, Tec9, CZ, DesertEagle, R8},      
	SMG = {MP9, MAC10, MP7, UMP, P90, Bizon},      
	Rifle = {M4A4, M4A1, AK47, Famas, Galil, AUG, SG},      
	Sniper = {AWP, Scout, G3SG1}      
}      
local function GetWeaponRage(weapon)      
	return TBLFIND(weps.Pistol, weapon) and pistol or TBLFIND(weps.Rifle, weapon) and rifle or weapon == AWP and awp or weapon == G3SG1  and auto or weapon == Scout and scout or default      
end      
local function GetStatsRage(weapon)      
	if weapon == default then      
		return values.rage.weapons.default      
	else      
		if values.rage.weapons[weapon][override default].Toggle then      
			return values.rage.weapons[weapon]      
		else      
			return values.rage.weapons.default      
		end      
	end      
end      
local function GetWeaponLegit(weapon)      
	return TBLFIND(weps2.Pistol, weapon) and pistol or TBLFIND(weps2.Rifle, weapon) and rifle or TBLFIND(weps2.SMG, weapon) and smg or TBLFIND(weps2.Sniper, weapon) and sniper or default      
end      
local function GetStatsLegit(weapon)      
	if weapon == default then      
		return values.legit.main.default      
	else      
		if values.legit.main[weapon][override default].Toggle then      
			return values.legit.main[weapon]      
		else      
			return values.legit.main.default      
		end      
	end      
end      
local Jitter = false 
allowedtofreeze = true     
local Spin = 0      
local RageTarget      
local Filter = false      
local LastStep      
local TriggerDebounce = false      
local DisableAA = false      

local Fov = Drawing.new(Circle)      
Fov.Filled = true      
Fov.Color = COL3RGB(15,15,15)      
Fov.Transparency = 0.5      
Fov.Position = Vec2(Mouse.X, Mouse.Y + 16)      
Fov.Radius = 120      
RunService.RenderSteppedConnect(function(step)      
	Fov.Visible = false      
	LastStep = step      
	Ping = game.Stats.PerformanceStats.PingGetValue()      
	RageTarget = nil      
	local CamCFrame = Camera.CFrame      
	local CamLook = CamCFrame.LookVector      
	local PlayerIsAlive = false      
	local Character = LocalPlayer.Character      
	RageTarget = nil      
	Spin = CLAMP(Spin + values.rage.angles[spin speed].Slider, 0, 360)      
	if Spin == 360 then Spin = 0 end      
	if LocalPlayer.Character and LocalPlayer.CharacterFindFirstChild(Humanoid) and LocalPlayer.CharacterFindFirstChild(Humanoid).Health  0 and LocalPlayer.CharacterFindFirstChild(UpperTorso) then      
		PlayerIsAlive = true      
	end      
	for i,v in pairs(ChamItems) do      
		if v.Parent == nil then      
			TBLREMOVE(ChamItems, i)      
		end      
	end      
	Fov.Position = Vec2(Camera.ViewportSize.X2, Camera.ViewportSize.Y2)      
	if PlayerIsAlive then      
		local SelfVelocity = LocalPlayer.Character.HumanoidRootPart.Velocity      
		if values.rage.fakelag[ping spike].Toggle and values.rage.fakelag[ping spike].Active then      
			for count = 1, 20  do      
				gameGetService(ReplicatedStorage).Events.RemoteEventFireServer({[1] = createparticle, [2] = bullethole, [3] = LocalPlayer.Character.Head, [4] = Vec3(0,0,0)})       
			end      
		end      
		local Root = LocalPlayer.Character.HumanoidRootPart      
		if values.misc.client[infinite crouch].Toggle then      
			Client.crouchcooldown = 0      
		end      
		if TBLFIND(values.misc.client[gun modifiers].Jumbobox, firerate) then      
			Client.DISABLED = false      
		end            
		if TBLFIND(values.visuals.effects.removals.Jumbobox, scope lines) then       
			NewScope.Enabled = LocalPlayer.CharacterFindFirstChild(AIMING) and true or false      
			Crosshairs.Scope.Visible = false      
		else      
			NewScope.Enabled = false      
		end      
		local RageGuy      
		if workspaceFindFirstChild(Map) and Client.gun ~= none and Client.gun.Name ~= C4 then      
			if values.rage.aimbot.enabled.Toggle and (LocalPlayer.Character.Humanoid.WalkSpeed ~= 0 or values.rage.aimbot['shoot before round start'].Toggle) then     
				local Origin = values.rage.aimbot.origin.Dropdown == character and LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0) or CamCFrame.p      
				local Stats = GetStatsRage(GetWeaponRage(Client.gun.Name))      
				for _,Player in pairs(PlayersGetPlayers()) do      
					if TBLFIND(values.misc.client[gun modifiers].Jumbobox, firerate) then      
						Client.DISABLED = false      
					end      
					if Player.Character and Player.CharacterFindFirstChild(Humanoid) and Player.CharacterFindFirstChild(Humanoid).Health  0 and Player.Team ~= TTT and Player ~= LocalPlayer then      
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'pitch') then
							Player.Character.UpperTorso.Waist.C0 = CFrame.new(0, 0.5  (values.rage.aimbot['resolver offset distance'].Slider  10), 0)
							Player.Character.Head.Neck.C0 = CFrame.new(0, 0.7  (values.rage.aimbot['resolver offset distance'].Slider  10), 0)
						end
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'roll') then
							Player.Character.Humanoid.MaxSlopeAngle = 0
						end
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'arms') then
							Player.Character.RightUpperArmFindFirstChildWhichIsA('Motor6D').C0 = CFrame.new(1.5  (values.rage.aimbot['resolver offset distance'].Slider  10), 0.549999952, -0.2)
							Player.Character.LeftUpperArmFindFirstChildWhichIsA('Motor6D').C0 = CFrame.new(-(1.5  (values.rage.aimbot['resolver offset distance'].Slider  10)), 0.549999952, -0.2)
						end
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'animation') then
							for a, b in next, Player.Character.HumanoidGetPlayingAnimationTracks() do
								bStop()
							end
						end
						if table.find(values.rage.aimbot.resolver.Jumbobox, forward track) then
							if Player.Team ~= LocalPlayer.Team then
								local a = Player.Character.HumanoidRootPart.CFrame
								wait()
								local b = Player.Character.HumanoidRootPart.CFrame

								if ( b.x ~= a.x ) and ( b.z ~= a.z ) then
									if ( b.x  a.x ) and ( b.z  a.z ) then 
										Player.Character.Head.Neck.C0 = CFrame.new(13, 0, 13)
									elseif ( b.x  a.x ) and ( b.z  a.z ) then
										Player.Character.Head.Neck.C0 = CFrame.new(-13, 0, -13)
									elseif ( b.x  a.x ) and ( b.z  a.z ) then 
										Player.Character.Head.Neck.C0 = CFrame.new(13, 0, -13)
									else
										Player.Character.Head.Neck.C0 = CFrame.new(-13, 0, 13)
									end
								elseif (  b.x ~= a.x ) then
									if ( b.x  a.x ) then 
										Player.Character.Head.Neck.C0 = CFrame.new(13, 0, 0)
									else
										Player.Character.Head.Neck.C0 = CFrame.new(-13, 0, 0)
									end
								else
									if ( b.z  a.z ) then 
										Player.Character.Head.Neck.C0 = CFrame.new(0, 0, 13)
									else
										Player.Character.Head.Neck.C0 = CFrame.new(0, 0, -13)
									end
								end
							end
						end
					end      
					if Player.Character and Player.CharacterFindFirstChild(Humanoid) and not Client.DISABLED and Player.CharacterFindFirstChild(Humanoid).Health  0 and Player.Team ~= TTT and not Player.CharacterFindFirstChildOfClass(ForceField) and GetDeg(CamCFrame, Player.Character.Head.Position) = Stats[max fov].Slider and Player ~= LocalPlayer then      
						if Player.Team ~= LocalPlayer.Team or values.rage.aimbot.teammates.Toggle and PlayerFindFirstChild(Status) and Player.Status.Team.Value ~= LocalPlayer.Status.Team.Value and Player.Status.Alive.Value then      
							if Client.gunFindFirstChild(Melee) and values.rage.aimbot[knifebot].Toggle then      
								local Ignore = {unpack(Collision)}      
								INSERT(Ignore, workspace.Map.Clips)      
								INSERT(Ignore, workspace.Map.SpawnPoints)      
								INSERT(Ignore, LocalPlayer.Character)      
								INSERT(Ignore, Player.Character.HumanoidRootPart)      
								if Player.CharacterFindFirstChild(BackC4) then      
									INSERT(Ignore, Player.Character.BackC4)      
								end      
								if Player.CharacterFindFirstChild(Gun) then      
									INSERT(Ignore, Player.Character.Gun)      
								end      
					
								local Ray = RAY(Origin, (Player.Character.Head.Position - Origin).unit  10000)      
								local Hit, Pos = workspaceFindPartOnRayWithIgnoreList(Ray, Ignore, false, true)      
					
								if Hit and Hit.Parent == Player.Character then      
									RageGuy = Hit      
									RageTarget = Hit         
					
									local Arguments = {      
										[1] = Hit,      
										[2] = Hit.Position,      
										[3] = Client.gun.Name,      
										[4] = 1,      
										[5] = nil,      
										[8] = 1,      
										[9] = false,      
										[10] = false,      
										[11] = Vec3(),      
										[12] = 1,      
										[13] = Vec3()      
									}      
									if values.rage.aimbot[HS].Toggle then
										for i = 1, values.rage.aimbot[HPS Speed].Slider, 1 do
											Client.firebullet()
											game.ReplicatedStorage.Events.HitPartFireServer(unpack(Arguments))
										end
									else
										Client.firebullet()
										game.ReplicatedStorage.Events.HitPartFireServer(unpack(Arguments))
									end
								end      
							else      
								local Ignore = {unpack(Collision)}      
								INSERT(Ignore, workspace.Map.Clips)      
								INSERT(Ignore, workspace.Map.SpawnPoints)      
								INSERT(Ignore, LocalPlayer.Character)      
								INSERT(Ignore, Player.Character.HumanoidRootPart)      
								if Player.CharacterFindFirstChild(BackC4) then      
									INSERT(Ignore, Player.Character.BackC4)      
								end      
								if Player.CharacterFindFirstChild(Gun) then      
									INSERT(Ignore, Player.Character.Gun)      
								end      

								local Hitboxes = {}
								for _,Hitbox in ipairs(Stats.hitboxes.Jumbobox) do
									if Stats['prefer body'].Toggle then
										if Hitbox == 'torso' then
											INSERT(Hitboxes, Player.Character.UpperTorso)
										elseif Hitbox == 'arms' then
											INSERT(Hitboxes, Player.Character.LeftUpperArm)
											INSERT(Hitboxes, Player.Character.RightUpperArm)
										elseif Hitbox == 'hand' then
											INSERT(Hitboxes, Player.Character.LeftHand)
											INSERT(Hitboxes, Player.Character.RightHand)
									    elseif Hitbox == 'head' and (not values.rage.aimbot['auto baim'].Toggle and not values.rage.aimbot['auto baim'].Active or Player.CharacterFindFirstChild('FakeHead')) then
											INSERT(Hitboxes, Player.Character.Head)
										else
											INSERT(Hitboxes, Player.Character.LowerTorso) 
										end
									else
										if Hitbox == 'head' then
											INSERT(Hitboxes, Player.CharacterFindFirstChild('Head'))
									    elseif Hitbox == 'torso' then
											INSERT(Hitboxes, Player.Character.UpperTorso)
										elseif Hitbox == 'arms' then
											INSERT(Hitboxes, Player.Character.LeftUpperArm)
											INSERT(Hitboxes, Player.Character.RightUpperArm)
										elseif Hitbox == 'hand' then
											INSERT(Hitboxes, Player.Character.LeftHand)
											INSERT(Hitboxes, Player.Character.RightHand)
										else
											INSERT(Hitboxes, Player.Character.LowerTorso) 
										end
									end
								end

								for _,Hitbox in ipairs(Hitboxes) do
									local wallbang = false
									local Ignore2 = {unpack(Ignore)}
									for _,Part in next, Player.CharacterGetChildren() do
										if Part ~= Hitbox then INSERT(Ignore2, Part) end
									end

									for a,b in next, game.PlayersGetChildren() do 
										if b ~= Player and b.Character then
											for i, h in next, b.CharacterGetChildren() do 
												INSERT(Ignore2, h)
											end
										end 
									end

									if values.rage.aimbot['wallbang'].Toggle then
										local Hits = {}
										local EndHit, Hit, Pos
										
										local Ray1 = RAY(Origin, (Hitbox.Position  - Origin).unit  (Hitbox.Position - Origin).magnitude)
										repeat
											Hit, Pos = workspaceFindPartOnRayWithIgnoreList(Ray1, Ignore2, false, true)
											if Hit ~= nil and Hit.Parent ~= nil then
												if Hit and Multipliers[Hit.Name] ~= nil then
													EndHit = Hit
												else
													INSERT(Ignore2, Hit)
													INSERT(Hits, {['Position'] = Pos,['Hit'] = Hit})
												end
											end
										until EndHit ~= nil or #Hits = 4 or Hit == nil 

										if EndHit ~= nil and Multipliers[EndHit.Name] ~= nil and #Hits = 4 then      
											if #Hits == 0 then      
												local Damage = Client.gun.DMG.Value  Multipliers[EndHit.Name]      
												if PlayerFindFirstChild(Kevlar) then      
													if FIND(EndHit.Name, Head) then      
														if PlayerFindFirstChild(Helmet) then      
															Damage = (Damage  100)  Client.gun.ArmorPenetration.Value      
														end      
													else      
														Damage = (Damage  100)  Client.gun.ArmorPenetration.Value      
													end      
												end      
												Damage = Damage  (Client.gun.RangeModifier.Value100 ^ ((Origin - EndHit.Position).Magnitude500))100      
												if Damage = Stats[minimum damage].Slider then      
													RageGuy = EndHit      
													RageTarget = EndHit      
													if not values.rage.aimbot[silent aim].Toggle then      
														Camera.CFrame = CF(CamCFrame.Position, EndHit.Position)      
													end      
													Filter = true      
													if values.rage.aimbot[automatic fire].Dropdown == standard then      
														if values.rage.aimbot[HS].Toggle then
															for i = 1, values.rage.aimbot[HPS Speed].Slider, 1 do
																Client.firebullet()      
															end
														else
															Client.firebullet()      
														end
														        
														if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
															Client.firebullet()      
														end
													if values.rage.aimbot[hit logs].Toggle then
														CreateHitElement( Hit ..EndHit.Parent.Name.. in the ..EndHit.Name.. target  head, 'shoot  backtrack. 150 ticks' ,Color3.new(1,1,1),1  values.rage.aimbot[log time].Slider, 0, 280, 0, 22)
													end
													elseif values.rage.aimbot[automatic fire].Dropdown == instant-shoot then      
													if values.rage.aimbot[HS].Toggle then
														for i = 1, values.rage.aimbot[HPS Speed].Slider, 1 do
															Client.firebullet()      
														end
													else
														Client.firebullet()      
													end
													      
													if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
														Client.firebullet()      
													end
													if values.rage.aimbot[hit logs].Toggle then
														CreateHitElement( Hit ..EndHit.Parent.Name.. in the ..EndHit.Name.. target  head, 'shoot  backtrack. 150 ticks' ,Color3.new(1,1,1),1  values.rage.aimbot[log time].Slider, 0, 280, 0, 22)
													end    
													elseif values.rage.aimbot[automatic fire].Dropdown == hitpart then      
														Client.firebullet()      
														local Arguments = {      
															[1] = EndHit,      
															[2] = EndHit.Position,      
															[3] = LocalPlayer.Character.EquippedTool.Value,      
															[4] = 100,      
															[5] = LocalPlayer.Character.Gun,      
															[8] = 1,      
															[9] = false,      
															[10] = false,      
															[11] = Vec3(),      
															[12] = 100,      
															[13] = Vec3()      
														}
													elseif values.rage.aimbot['automatic fire'].Dropdown == 'silent' and values.rage.aimbot['enabled'].Toggle then
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = 1,
															[9] = false,
															[10] = false,
															[11] = Vec3(),
															[12] = 100,
															[13] = Vec3()
														}
														game.ReplicatedStorage.Events.HitPartFireServer(unpack(Arguments))      
														if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
															Client.firebullet()      
															local Arguments = {      
																[1] = EndHit,      
																[2] = EndHit.Position,      
																[3] = LocalPlayer.Character.EquippedTool.Value,      
																[4] = 100,      
																[5] = LocalPlayer.Character.Gun,      
																[8] = 1,      
																[9] = false,      
																[10] = false,      
																[11] = Vec3(),      
																[12] = 100,      
																[13] = Vec3()      
															}      
															game.ReplicatedStorage.Events.HitPartFireServer(unpack(Arguments))      
														end      
													end      
													Filter = false      
													break      
												end      
											else      
												local penetration = Client.gun.Penetration.Value  0.01
												
												if values.rage.aimbot['raycast'].Toggle then
													penetration = Client.gun.Penetration.Value  0.1 + (values.rage.aimbot['rayamount'].Slider)
												end

												local limit = 0      
												local dmgmodifier = 1      
												for i = 1, #Hits do      
													local data = Hits[i]      
													local part = data[Hit]      
													local pos = data[Position]      
													local modifier = 1      
													if part.Material == Enum.Material.DiamondPlate then      
														modifier = 3      
													end      
													if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then      
														modifier = 2      
													end      
													if part.Name == Grate or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then      
														modifier = 0.1      
													end      
													if part.Name == nowallbang then      
														modifier = 100      
													end      
													if partFindFirstChild(PartModifier) then      
														modifier = part.PartModifier.Value      
													end      
													if part.Transparency == 1 or part.CanCollide == false or part.Name == Glass or part.Name == Cardboard then      
														modifier = 0      
													end      
													local direction = (Hitbox.Position - pos).unit  CLAMP(Client.gun.Range.Value, 1, 100)      
													local ray = RAY(pos + direction  1, direction  -2)      
													local _,endpos = workspaceFindPartOnRayWithWhitelist(ray, {part}, true)      
													local thickness = (endpos - pos).Magnitude      
													thickness = thickness  modifier      
													limit = MIN(penetration, limit + thickness)      
													dmgmodifier = 1 - limit  penetration      
												end      
												local Damage = Client.gun.DMG.Value  Multipliers[EndHit.Name]  dmgmodifier      
												if PlayerFindFirstChild(Kevlar) then      
													if FIND(EndHit.Name, Head) then      
														if PlayerFindFirstChild(Helmet) then      
															Damage = (Damage  100)  Client.gun.ArmorPenetration.Value      
														end      
													else      
														Damage = (Damage  100)  Client.gun.ArmorPenetration.Value      
													end      
												end      
												Damage = Damage  (Client.gun.RangeModifier.Value100 ^ ((Origin - EndHit.Position).Magnitude500))100      
												if Damage = Stats[minimum damage].Slider then      
													RageGuy = EndHit      
													RageTarget = EndHit      
													if not values.rage.aimbot[silent aim].Toggle then      
														Camera.CFrame = CF(CamCFrame.Position, EndHit.Position)      
													end      
													Filter = true      
													if values.rage.aimbot[automatic fire].Dropdown == standard then      
														if values.rage.aimbot[HS].Toggle then
															for i = 1, values.rage.aimbot[HPS Speed].Slider, 1 do
																Client.firebullet()      
															end
														else
															Client.firebullet()      
														end  
														       
														if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
															Client.firebullet()      
														end
													if values.rage.aimbot[hit logs].Toggle then
														CreateHitElement( Hit ..EndHit.Parent.Name.. in the ..EndHit.Name.. target  head, 'shoot  backtrack. 150 ticks' ,Color3.new(1,1,1),1  values.rage.aimbot[log time].Slider, 0, 280, 0, 22)
													end
													elseif values.rage.aimbot[automatic fire].Dropdown == instant-shoot then      
													if values.rage.aimbot[HS].Toggle then
														for i = 1, values.rage.aimbot[HPS Speed].Slider, 1 do
															Client.firebullet()      
														end
													else
														Client.firebullet()      
													end   
													       
													if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
														Client.firebullet()      
													end
													if values.rage.aimbot[hit logs].Toggle then
														CreateHitElement( Hit ..EndHit.Parent.Name.. in the ..EndHit.Name.. target  head, 'shoot  backtrack. 150 ticks' ,Color3.new(1,1,1),1  values.rage.aimbot[log time].Slider, 0, 280, 0, 22)
													end    
													elseif values.rage.aimbot[automatic fire].Dropdown == hitpart then      
														Client.firebullet()      
														local Arguments = {      
															[1] = EndHit,      
															[2] = EndHit.Position,      
															[3] = LocalPlayer.Character.EquippedTool.Value,      
															[4] = 100,      
															[5] = LocalPlayer.Character.Gun,      
															[8] = 1,      
															[9] = false,      
															[10] = false,      
															[11] = Vec3(),      
															[12] = 100,      
															[13] = Vec3()      
														}
													elseif values.rage.aimbot['automatic fire'].Dropdown == 'silent' and values.rage.aimbot['enabled'].Toggle then
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = 1,
															[9] = false,
															[10] = false,
															[11] = Vec3(),
															[12] = 100,
															[13] = Vec3()
														}
														game.ReplicatedStorage.Events.HitPartFireServer(unpack(Arguments))   
														if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
															Client.firebullet()      
															local Arguments = {      
																[1] = EndHit,      
																[2] = EndHit.Position,      
																[3] = LocalPlayer.Character.EquippedTool.Value,      
																[4] = 100,      
																[5] = LocalPlayer.Character.Gun,      
																[8] = 1,      
																[9] = false,      
																[10] = false,      
																[11] = Vec3(),      
																[12] = 100,      
																[13] = Vec3()      
															}      
															game.ReplicatedStorage.Events.HitPartFireServer(unpack(Arguments))      
														end      
													end      
													Filter = false      
													break      
												end      
											end      
										end      
									else      
										local Ray = RAY(Origin, (Hitbox.Position - Origin).unit  (Hitbox.Position - Origin).magnitude)      
										local Hit, Pos = workspaceFindPartOnRayWithIgnoreList(Ray, Ignore2, false, true)      
										if Hit and Multipliers[Hit.Name] ~= nil then      
											local Damage = Client.gun.DMG.Value  Multipliers[Hit.Name]      
											if PlayerFindFirstChild(Kevlar) then      
												if FIND(Hit.Name, Head) then      
													if PlayerFindFirstChild(Helmet) then      
														Damage = (Damage  100)  Client.gun.ArmorPenetration.Value      
													end      
												else      
													Damage = (Damage  100)  Client.gun.ArmorPenetration.Value      
												end      
											end      
											Damage = Damage  (Client.gun.RangeModifier.Value100 ^ ((Origin - Hit.Position).Magnitude500))      
											if Damage = Stats[minimum damage].Slider then      
												RageGuy = Hit      
												RageTarget = Hit      
												if not values.rage.aimbot[silent aim].Toggle then      
													Camera.CFrame = CF(CamCFrame.Position, Hit.Position)      
												end      
												Filter = true      
												if values.rage.aimbot[automatic fire].Dropdown == standard then      
													if values.rage.aimbot[HS].Toggle then
														for i = 1, values.rage.aimbot[HPS Speed].Slider, 1 do
															Client.firebullet()      
														end
													else
														Client.firebullet()      
													end 
													  
													if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
														Client.firebullet()      
													end 
												if values.rage.aimbot[hit logs].Toggle then
													CreateHitElement( Hit ..EndHit.Parent.Name.. in the ..EndHit.Name.. target  head, 'shoot  backtrack. 150 ticks' ,Color3.new(1,1,1),1  values.rage.aimbot[log time].Slider, 0, 280, 0, 22)
												end
												elseif values.rage.aimbot[automatic fire].Dropdown == instant-shoot then      
												if values.rage.aimbot[HS].Toggle then
													for i = 1, values.rage.aimbot[HPS Speed].Slider, 1 do
														Client.firebullet()      
													end
												else
													Client.firebullet()      
												end 
												     
												if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
													Client.firebullet()      
												end
												if values.rage.aimbot[hit logs].Toggle then
													CreateHitElement( Hit ..EndHit.Parent.Name.. in the ..EndHit.Name.. target  head, 'shoot  backtrack. 150 ticks' ,Color3.new(1,1,1),1  values.rage.aimbot[log time].Slider, 0, 280, 0, 22)
												end    
												elseif values.rage.aimbot[automatic fire].Dropdown == hitpart then      
													Client.firebullet()      
													local Arguments = {      
														[1] = EndHit,      
														[2] = EndHit.Position,      
														[3] = LocalPlayer.Character.EquippedTool.Value,      
														[4] = 100,      
														[5] = LocalPlayer.Character.Gun,      
														[8] = 1,      
														[9] = false,      
														[10] = false,      
														[11] = Vec3(),      
														[12] = 100,      
														[13] = Vec3()      
													}
												elseif values.rage.aimbot['automatic fire'].Dropdown == 'silent' and values.rage.aimbot['enabled'].Toggle then
													local Arguments = {
														[1] = EndHit,
														[2] = EndHit.Position,
														[3] = LocalPlayer.Character.EquippedTool.Value,
														[4] = 100,
														[5] = LocalPlayer.Character.Gun,
														[8] = 1,
														[9] = false,
														[10] = false,
														[11] = Vec3(),
														[12] = 100,
														[13] = Vec3()
													}
													game.ReplicatedStorage.Events.HitPartFireServer(unpack(Arguments))     
													if values.rage.exploits[double tap].Toggle and values.rage.exploits[double tap].Active then      
														Client.firebullet()      
														local Arguments = {      
															[1] = EndHit,      
															[2] = EndHit.Position,      
															[3] = LocalPlayer.Character.EquippedTool.Value,      
															[4] = 100,      
															[5] = LocalPlayer.Character.Gun,      
															[8] = 1,      
															[9] = false,      
															[10] = false,      
															[11] = Vec3(),      
															[12] = 100,      
															[13] = Vec3()      
														}      
														game.ReplicatedStorage.Events.HitPartFireServer(unpack(Arguments))      
													end      
												end      
												Filter = false      
												break      
											end      
										end      
									end      
								end      
							end      
						end      
					end      
				end      
			elseif values.legit.aimbot[aim assist].Toggle and values.legit.aimbot[aim assist].Active and not library.uiopen then      
				local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))      
				local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris}      
				local Closest = 9999      
				local Target      

				Fov.Radius = Stats[field of view].Slider      
				Fov.Visible =  values.legit.settings[draw fov].Toggle      
				Fov.Color =  values.legit.settings[draw fov].Color      

				if not TBLFIND(Stats.conditions.Jumbobox, smoke) then      
					INSERT(Ignore, workspace.Ray_Ignore)      
				end      

				if not TBLFIND(Stats.conditions.Jumbobox, blind) or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency  0.9 then      
					if not TBLFIND(Stats.conditions.Jumbobox, standing) or SelfVelocity.Magnitude  3 then      
						for _,Player in pairs(PlayersGetPlayers()) do      
							if Player.Character and Player.CharacterFindFirstChild(Humanoid) and Player.CharacterFindFirstChild(Humanoid).Health  0 then      
								if not values.legit.settings[forcefield check].Toggle or not Player.CharacterFindFirstChildOfClass(ForceField) then      
									if Player.Team ~= LocalPlayer.Team or values.legit.settings[free for all].Toggle then      
										local Pos, onScreen = CameraWorldToViewportPoint(Player.Character.HumanoidRootPart.Position)      
										if onScreen then      
											local Magnitude = (Vec2(Pos.X, Pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude      
											if Magnitude  Stats[field of view].Slider then      
												local Hitbox = Stats.hitbox.Dropdown == head and Player.Character.Head or Stats.hitbox.Dropdown == chest and Player.Character.UpperTorso      
												if Stats.hitbox.Dropdown == closest then      
													local HeadPos = CameraWorldToViewportPoint(Player.Character.Head.Position)      
													local TorsoPos = CameraWorldToViewportPoint(Player.Character.UpperTorso.Position)      
													local HeadDistance = (Vec2(HeadPos.X, HeadPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude      
													local TorsoDistance = (Vec2(TorsoPos.X, TorsoPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude      
													if HeadDistance  TorsoDistance then      
														Hitbox = Player.Character.Head      
													else      
														Hitbox = Player.Character.UpperTorso      
													end      
												end      
												if Hitbox ~= nil then      
													if not TBLFIND(Stats.conditions.Jumbobox, visible) then      
														Target = Hitbox      
													else      
														local Ray1 = RAY(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit  (Hitbox.Position - Camera.CFrame.Position).magnitude)      
														local Hit, Pos = workspaceFindPartOnRayWithIgnoreList(Ray1, Ignore, false, true)      
														if Hit and HitFindFirstAncestor(Player.Name) then      
															Target = Hitbox      
														end      
													end      
												end      
											end      
										end      
									end      
								end      
							end      
						end      
					end      
				end      

				if Target ~= nil then      
					local Pos = CameraWorldToScreenPoint(Target.Position)      
					local Magnitude = Vec2(Pos.X - Mouse.X, Pos.Y - Mouse.Y)      
					mousemoverel(Magnitude.xStats.smoothing.Slider, Magnitude.yStats.smoothing.Slider)      
				end      
			end      
			if not values.rage.aimbot.enabled.Toggle and values.legit.aimbot[triggerbot].Toggle and values.legit.aimbot[triggerbot].Active and not TriggerDebounce then      
				local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))      
				if Stats.triggerbot.Toggle then      
					if not TBLFIND(Stats.conditions.Jumbobox, blind) or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency  0.9 then      
						if not TBLFIND(Stats.conditions.Jumbobox, standing) or SelfVelocity.Magnitude  3 then      
							if Mouse.Target and Mouse.Target.Parent and PlayersGetPlayerFromCharacter(Mouse.Target.Parent) and Multipliers[Mouse.Target.Name] ~= nil and Client.gun.DMG.Value  Multipliers[Mouse.Target.Name] = Stats[minimum dmg].Slider then      
								local OldTarget = Mouse.Target      
								local Player = PlayersGetPlayerFromCharacter(Mouse.Target.Parent)      
								if Player.Team ~= LocalPlayer.Team or values.legit.settings[free for all].Toggle then      
									coroutine.wrap(function()      
										TriggerDebounce = true      
										wait(Stats[delay (ms)].Slider1000)      
										repeat RunService.RenderSteppedWait()      
											if not Client.DISABLED then      
												Client.firebullet()      
											end      
										until Mouse.Target == nil or Player ~= PlayersGetPlayerFromCharacter(Mouse.Target.Parent)      
										TriggerDebounce = false      
									end)()      
								end      
							end      
						end      
					end      
				end      
			end       
		end      
		BodyVelocityDestroy()
		BodyVelocity = INST('BodyVelocity')
		BodyVelocity.MaxForce = Vec3(HUGE,0,HUGE)
		if UserInputServiceIsKeyDown('Space') and values.misc.movement['bunny hop'].Toggle then
			local add = 0
			if values.misc.movement.direction.Dropdown == 'directional' or values.misc.movement.direction.Dropdown == 'directional 2' then
				if UserInputServiceIsKeyDown('A') then add = 90 end
				if UserInputServiceIsKeyDown('S') then add = 180 end
				if UserInputServiceIsKeyDown('D') then add = 270 end
				if UserInputServiceIsKeyDown('A') and UserInputServiceIsKeyDown('W') then add = 45 end
				if UserInputServiceIsKeyDown('D') and UserInputServiceIsKeyDown('W') then add = 315 end
				if UserInputServiceIsKeyDown('D') and UserInputServiceIsKeyDown('S') then add = 225 end
				if UserInputServiceIsKeyDown('A') and UserInputServiceIsKeyDown('S') then add = 145 end
			end
			local rot = YROTATION(CamCFrame)  CFAngles(0,RAD(add),0)
			local bhopspeed = values.misc.movement['overwrite'].Toggle and values.misc.movement['overwrite'].Active and values.misc.movement['overwrite speed'].Slider or values.misc.movement['speed'].Slider
			BodyVelocity.Parent = LocalPlayer.Character.UpperTorso
			LocalPlayer.Character.Humanoid.Jump = true
			BodyVelocity.Velocity = Vec3(rot.LookVector.X,0,rot.LookVector.Z)  (bhopspeed  2)
			if add == 0 and values.misc.movement.direction.Dropdown == 'directional' and not UserInputServiceIsKeyDown('W') then
				BodyVelocityDestroy()
			else


				if values.misc.movement.type.Dropdown == 'cframe' then
					BodyVelocityDestroy()      
					Root.CFrame = Root.CFrame + Vec3(rot.LookVector.X,0,rot.LookVector.Z)  bhopspeed50
				elseif values.misc.movement.type.Dropdown == 'velocity' then
					BodyVelocityDestroy()
					Root.Velocity = Vec3(rot.LookVector.X  (bhopspeed  2), Root.Velocity.y, rot.LookVector.Z  (bhopspeed  2))
				elseif values.misc.movement.type.Dropdown == 'idk' then
					BodyVelocityDestroy()
					spawn(function()
						if not switchtrigger[1]  then 
							switchtrigger[1] = true
							wait(0.5)
							switchtrigger[3] = Root.CFrame
							Root.CFrame = switchtrigger[2]
	
							wait(0.1)
							Root.CFrame = switchtrigger[3]
							switchtrigger[1] = false
						end
					end)
					
					Root.CFrame = Root.CFrame + Vec3(rot.LookVector.X, 0, rot.LookVector.Z)  bhopspeed15
				end
			end
		end
		if values.misc.movement[edge jump].Toggle and values.misc.movement[edge jump].Active then      
			if LocalPlayer.Character.HumanoidGetState() ~= Enum.HumanoidStateType.Freefall and LocalPlayer.Character.HumanoidGetState() ~= Enum.HumanoidStateType.Jumping then      
				coroutine.wrap(function()      
					RunService.RenderSteppedWait()      
					if LocalPlayer.Character ~= nil and LocalPlayer.CharacterFindFirstChild(Humanoid) and LocalPlayer.Character.HumanoidGetState() == Enum.HumanoidStateType.Freefall and LocalPlayer.Character.HumanoidGetState() ~= Enum.HumanoidStateType.Jumping then      
						LocalPlayer.Character.HumanoidChangeState(Jumping)      
					end      
				end)()      
			end      
		end      
		Jitter = not Jitter      
		LocalPlayer.Character.Humanoid.AutoRotate = false      
		if values.rage.angles.enabled.Toggle and not DisableAA then      
			local Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90)      
			if values.rage.angles[yaw base].Dropdown == spin then      
				Angle = Angle + RAD(Spin)      
			end      
			if values.rage.angles[yaw base].Dropdown == random then      
				Angle = Angle + RAD(RANDOM(0, 360))      
			end      
			local Offset = RAD(-values.rage.angles[yaw offset].Slider - (values.rage.angles.jitter.Toggle and Jitter and values.rage.angles[jitter offset].Slider or 0))      
			local CFramePos = CF(Root.Position)  CFAngles(0, Angle + Offset, 0)      
			if values.rage.angles[yaw base].Dropdown == targets then      
				local part      
				local closest = 9999      
				for _,plr in pairs(PlayersGetPlayers()) do      
					if plr.Character and plr.CharacterFindFirstChild(Humanoid) and plr.CharacterFindFirstChild(Humanoid).Health  0 and plr.Team ~= LocalPlayer.Team then      
						local pos, onScreen = CameraWorldToViewportPoint(plr.Character.HumanoidRootPart.Position)      
						local magnitude = (Vec2(pos.X, pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude      
						if closest  magnitude then      
							part = plr.Character.HumanoidRootPart      
							closest = magnitude      
						end      
					end      
				end      
				if part ~= nil then      
					CFramePos = CF(Root.Position, part.Position)  CFAngles(0, Offset, 0)      
				end      
			end      

			Root.CFrame = YROTATION(CFramePos)      
			if values.rage.angles[body roll].Dropdown == 180 then      
				Root.CFrame = Root.CFrame  CFAngles(values.rage.angles[body roll].Dropdown == 180 and RAD(180) or 0, 1, 0)      
				LocalPlayer.Character.Humanoid.HipHeight = 4      
			else      
				LocalPlayer.Character.Humanoid.HipHeight = 2      
			end      

			local Pitch = values.rage.angles[pitch].Dropdown == none and CamLook.Y or values.rage.angles[pitch].Dropdown == up and 1 or values.rage.angles[pitch].Dropdown == down and -1 or values.rage.angles[pitch].Dropdown == zero and 0 or values.rage.angles[pitch].Dropdown == random and RANDOM(-10, 10)10 or 2.5      
			if values.rage.angles[extend pitch].Toggle and (values.rage.angles[pitch].Dropdown == up or values.rage.angles[pitch].Dropdown == down) then      
				Pitch = (Pitch2)1.6      
			end
			
			if values.rage.angles['onshot anti-aim'].Toggle and values.rage.angles['onshot anti-aim'].Active then
				Pitch = values.rage.angles['onshot mode'].Dropdown == 'none' and CamLook.Y or values.rage.angles['onshot mode'].Dropdown == 'up' and 1 or values.rage.angles['onshot mode'].Dropdown == 'down' and -1 or values.rage.angles['onshot mode'].Dropdown == 'zero' and 0 or values.rage.angles['onshot mode'].Dropdown == 'random' and Random.new()NextNumber(0.01,10) and savedspinpitch
		    end
			
			game.ReplicatedStorage.Events.ControlTurnFireServer(Pitch, LocalPlayer.CharacterFindFirstChild(Climbing) and true or false)      
		else      
			LocalPlayer.Character.Humanoid.HipHeight = 2      
			Root.CFrame = CF(Root.Position)  CFAngles(0, -ATAN2(CamLook.Z, CamLook.X) + RAD(270), 0)      
			game.ReplicatedStorage.Events.ControlTurnFireServer(CamLook.Y, LocalPlayer.CharacterFindFirstChild(Climbing) and true or false)      
		end      
		if values.rage.others[remove head].Toggle then      
			if LocalPlayer.CharacterFindFirstChild(FakeHead) then      
				LocalPlayer.Character.FakeHeadDestroy()      
			end      
			if LocalPlayer.CharacterFindFirstChild(HeadHB) then      
				LocalPlayer.Character.HeadHBDestroy()      
			end      
		end      
		if TBLFIND(values.misc.client[gun modifiers].Jumbobox, recoil) then      
			Client.resetaccuracy()      
			Client.RecoilX = 0      
			Client.RecoilY = 0      
		end      
	end      
	for _,Player in pairs(PlayersGetPlayers()) do      
		if Player.Character and Player ~= LocalPlayer and Player.CharacterFindFirstChild(HumanoidRootPart) and Player.Character.HumanoidRootPartFindFirstChild(OldPosition) then      
			coroutine.wrap(function()      
				local Position = Player.Character.HumanoidRootPart.Position      
				RunService.RenderSteppedWait()      
				if Player.Character and Player ~= LocalPlayer and Player.CharacterFindFirstChild(HumanoidRootPart) then      
					if Player.Character.HumanoidRootPartFindFirstChild(OldPosition) then      
						Player.Character.HumanoidRootPart.OldPosition.Value = Position      
					else      
						local Value = INST(Vector3Value)      
						Value.Name = OldPosition      
						Value.Value = Position      
						Value.Parent = Player.Character.HumanoidRootPart      
					end      
				end      
			end)()      
		end      
	end      
	for _,Player in pairs(PlayersGetPlayers()) do      
		local tbl = objects[Player]      
		if tbl == nil then return end      
		if Player.Character and Player.CharacterFindFirstChild(HumanoidRootPart) and Player.Team ~= TTT and (Player.Team ~= LocalPlayer.Team or values.visuals.players.teammates.Toggle) and Player.CharacterFindFirstChild(Gun) and Player.CharacterFindFirstChild(Humanoid) and Player ~= LocalPlayer then      
			local HumanoidRootPart = Player.Character.HumanoidRootPart      
			local RootPosition = HumanoidRootPart.Position      
			local Pos, OnScreen = CameraWorldToViewportPoint(RootPosition)      
			local Size = (CameraWorldToViewportPoint(RootPosition - Vec3(0, 3, 0)).Y - CameraWorldToViewportPoint(RootPosition + Vec3(0, 2.6, 0)).Y)  2      

			local Drawings, Text = TBLFIND(values.visuals.players.outlines.Jumbobox, drawings) ~= nil, TBLFIND(values.visuals.players.outlines.Jumbobox, text) ~= nil      

			tbl.Box.Color = values.visuals.players.box.Color      
			tbl.Box.Size = Vec2(Size  1.5, Size  1.9)      
			tbl.Box.Position = Vec2(Pos.X - Size1.5  2, (Pos.Y - Size1.6  2))      

			if values.visuals.players.box.Toggle then      
				tbl.Box.Visible = OnScreen      
				if Drawings then      
					tbl.BoxOutline.Size = tbl.Box.Size      
					tbl.BoxOutline.Position = tbl.Box.Position      
					tbl.BoxOutline.Visible = OnScreen      
				else      
					tbl.BoxOutline.Visible = false      
				end      
			else      
				tbl.Box.Visible = false      
				tbl.BoxOutline.Visible = false      
			end      

			if values.visuals.players.health.Toggle then      
				tbl.Health.Color = COL3(0,1,0)      
				tbl.Health.From = Vec2((tbl.Box.Position.X - 5), tbl.Box.Position.Y + tbl.Box.Size.Y)      
				tbl.Health.To = Vec2(tbl.Health.From.X, tbl.Health.From.Y - CLAMP(Player.Character.Humanoid.Health  Player.Character.Humanoid.MaxHealth, 0, 1)  tbl.Box.Size.Y)      
				tbl.Health.Visible = OnScreen      
				if Drawings then      
					tbl.HealthOutline.From = Vec2(tbl.Health.From.X, tbl.Box.Position.Y + tbl.Box.Size.Y + 1)      
					tbl.HealthOutline.To = Vec2(tbl.Health.From.X, (tbl.Health.From.Y - 1  tbl.Box.Size.Y) -1)      
					tbl.HealthOutline.Visible = OnScreen      
				else      
					tbl.HealthOutline.Visible = false      
				end      
			else      
				tbl.Health.Visible = false      
				tbl.HealthOutline.Visible = false      
			end      

			if values.visuals.players.weapon.Toggle then      
				tbl.Weapon.Color = values.visuals.players.weapon.Color      
				tbl.Weapon.Text = Player.Character.EquippedTool.Value      
				tbl.Weapon.Position = Vec2(tbl.Box.Size.X2 + tbl.Box.Position.X, tbl.Box.Size.Y + tbl.Box.Position.Y + 1)      
				tbl.Weapon.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]      
				tbl.Weapon.Outline = Text      
				tbl.Weapon.Size = values.visuals.players.size.Slider      
				tbl.Weapon.Visible = OnScreen      
			else      
				tbl.Weapon.Visible = false      
			end      

			if values.visuals.players[weapon icon].Toggle then      
				Items[Player.Name].ImageColor3 = values.visuals.players[weapon icon].Color      
				Items[Player.Name].Image = GetIcon.getWeaponOfKiller(Player.Character.EquippedTool.Value)      
				Items[Player.Name].Position = UDIM2(0, tbl.Box.Size.X2 + tbl.Box.Position.X, 0, tbl.Box.Size.Y + tbl.Box.Position.Y + (values.visuals.players.weapon.Toggle and -10 or -22))      
				Items[Player.Name].Visible = OnScreen      
			else      
				Items[Player.Name].Visible = false      
			end      

			if values.visuals.players.name.Toggle then      
				tbl.Name.Color = values.visuals.players.name.Color      
				tbl.Name.Text = Player.Name      
				tbl.Name.Position = Vec2(tbl.Box.Size.X2 + tbl.Box.Position.X,  tbl.Box.Position.Y - 16)      
				tbl.Name.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]      
				tbl.Name.Outline = Text      
				tbl.Name.Size = values.visuals.players.size.Slider      
				tbl.Name.Visible = OnScreen      
			else      
				tbl.Name.Visible = false      
			end      
			local LastInfoPos = tbl.Box.Position.Y - 1      
			if TBLFIND(values.visuals.players.indicators.Jumbobox, armor) and PlayerFindFirstChild(Kevlar) then      
				tbl.Armor.Color = COL3RGB(0, 150, 255)      
				tbl.Armor.Text = PlayerFindFirstChild(Helmet) and HK or K      
				tbl.Armor.Position = Vec2(tbl.Box.Size.X + tbl.Box.Position.X + 12, LastInfoPos)      
				tbl.Armor.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]      
				tbl.Armor.Outline = Text      
				tbl.Armor.Size = values.visuals.players.size.Slider      
				tbl.Armor.Visible = OnScreen      

				LastInfoPos = LastInfoPos + values.visuals.players.size.Slider      
			else      
				tbl.Armor.Visible = false      
			end      
		else      
			if Player.Name ~= LocalPlayer.Name then      
				Items[Player.Name].Visible = false      
				for i,v in pairs(tbl) do      
					v.Visible = false      
				end      
			end      
		end      
	end      

	if (values.misc.ui.scaling.Toggle) then      
		guiSetScale(values.misc.ui.amount.Slider  10)      
	else      
		guiSetScale(1)      
	end      
end)      

local visualsilentangle = nil
local speed = values.visuals.self[silent angle speed].Slider35
local last = tick()
RunService.RenderSteppedConnect(function()
    if RageTarget then
        visualsilentangle = RageTarget.Position
        last = tick()
    else
        if tick() - last  speed then
            visualsilentangle = nil
        end
    end
end)

local mt = getrawmetatable(game)      
local oldNamecall = mt.__namecall      
local oldIndex = mt.__index      
local oldNewIndex = mt.__newindex      
setreadonly(mt,false)      
mt.__namecall = function(self, ...)      
	local method = tostring(getnamecallmethod())      
	local args = {...}      

	if method == SetPrimaryPartCFrame and self.Name == Arms then      
		if values.visuals.self[third person].Toggle and values.visuals.self[third person].Active and LocalPlayer.Character then      
			args[1] = args[1]  CF(99, 99, 99)      
		else      
			if values.visuals.self[viewmodel changer].Toggle then      
				args[1] = args[1]  ViewmodelOffset      
			end
			if values.visuals.self[visualize silent angle].Toggle and visualsilentangle then
				args[1] = CFrame.lookAt(args[1].p, visualsilentangle)
			end      
		end      
	end      
	if method == SetPrimaryPartCFrame and self.Name ~= Arms then      
		args[1] = args[1] + Vec3(0, 3, 0)      
		coroutine.wrap(function()      
			DisableAA = true      
			wait(2)      
			DisableAA = false      
		end)()      
	end      
	if method == Kick then      
		return      
	end      
	if method == FireServer then      
		if LEN(self.Name) == 38 then      
			return      
		elseif self.Name == FallDamage and TBLFIND(values.misc.client[damage bypass].Jumbobox, fall) or values.misc.movement[jump bug].Toggle and values.misc.movement[jump bug].Active then      
			return      
		elseif self.Name == BURNME and TBLFIND(values.misc.client[damage bypass].Jumbobox, fire) then      
			return      
		elseif self.Name == ControlTurn and not checkcaller() then      
			return      
		end      
		if self.Name == PlayerChatted and values.misc.client[chat alive].Toggle then      
			args[2] = false      
			args[3] = Innocent      
			args[4] = false      
			args[5] = false      
		end      
		if self.Name == ReplicateCamera and values.misc.client[anti spectate].Toggle then      
			args[1] = CF()      
		end      
	end      
	if method == FindPartOnRayWithWhitelist and not checkcaller() and Client.gun ~= none and Client.gun.Name ~= C4 then      
		if #args[2] == 1 and args[2][1].Name == SpawnPoints then      
			local Team = LocalPlayer.Status.Team.Value      

			if TBLFIND(values.misc.client.shop.Jumbobox, anywhere) then      
				return Team == T and args[2][1].BuyArea or args[2][1].BuyArea2      
			end      
		end      
	end      
	if method == FindPartOnRayWithIgnoreList and args[2][1] == workspace.Debris then      
		if not checkcaller() or Filter then      
			if TBLFIND(values.misc.client[gun modifiers].Jumbobox, penetration) then      
				INSERT(args[2], workspace.Map)      
			end      
			if TBLFIND(values.misc.client[gun modifiers].Jumbobox, spread) then      
				args[1] = RAY(Camera.CFrame.p, Camera.CFrame.LookVector  Client.gun.Range.Value)      
			end      
			local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))      
			if values.legit.aimbot[silent aim].Toggle and values.legit.aimbot[silent aim].Active and Stats[silent aim].Toggle then      
				local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris}      
				local Closest = 9999      
				local Target      

				if not TBLFIND(Stats.conditions.Jumbobox, smoke) then      
					INSERT(Ignore, workspace.Ray_Ignore)      
				end      

				coroutine.wrap(function()      
					if not TBLFIND(Stats.conditions.Jumbobox, blind) or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency  0.9 then      
						if not TBLFIND(Stats.conditions.Jumbobox, blind) or SelfVelocity.Magnitude  3 then      
							for _,Player in pairs(PlayersGetPlayers()) do      
								if Player.Character and Player.CharacterFindFirstChild(Humanoid) and Player.CharacterFindFirstChild(Humanoid).Health  0 then      
									if not values.legit.settings[forcefield check].Toggle or not Player.CharacterFindFirstChildOfClass(ForceField) then      
										if Player.Team ~= LocalPlayer.Team or values.legit.settings[free for all].Toggle then      
											local Pos, onScreen = CameraWorldToViewportPoint(Player.Character.HumanoidRootPart.Position)      
											if onScreen then      
												local Magnitude = (Vec2(Pos.X, Pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude      
												if Magnitude  Stats[field of view].Slider then      
													local Hitbox = Stats.priority.Dropdown == head and Player.Character.Head or Stats.priority.Dropdown == chest and Player.Character.UpperTorso      
													if Stats.priority.Dropdown == closest then      
														local HeadPos = CameraWorldToViewportPoint(Player.Character.Head.Position)      
														local TorsoPos = CameraWorldToViewportPoint(Player.Character.UpperTorso.Position)      
														local HeadDistance = (Vec2(HeadPos.X, HeadPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude      
														local TorsoDistance = (Vec2(TorsoPos.X, TorsoPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude      
														if HeadDistance  TorsoDistance then      
															Hitbox = Player.Character.Head      
														else      
															Hitbox = Player.Character.UpperTorso      
														end      
													end      
													if Hitbox ~= nil then      
														if not TBLFIND(Stats.conditions.Jumbobox, visible) then      
															Target = Hitbox      
														else      
															local Ray1 = RAY(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit  (Hitbox.Position - Camera.CFrame.Position).magnitude)      
															local Hit, Pos = workspaceFindPartOnRayWithIgnoreList(Ray1, Ignore, false, true)      
															if Hit and HitFindFirstAncestor(Player.Name) then      
																Target = Hitbox      
															end      
														end      
													end      
												end      
											end      
										end      
									end      
								end      
							end      
						end      
					end      

					local Hit = RANDOM(1, 100) = Stats.hitchance.Slider      
					if Target ~= nil and Hit then      
						args[1] = RAY(Camera.CFrame.Position, (Target.Position - Camera.CFrame.Position).unit  (Target.Position - Camera.CFrame.Position).magnitude)      
					end      
				end)()      
			end      
			if RageTarget ~= nil then      
				local Origin = values.rage.aimbot.origin.Dropdown == character and LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0) or Camera.CFrame.p      
				if values.rage.aimbot[delay shot].Toggle then      
					spawn(function()      
						args[1] = RAY(Origin, (RageTarget.Position - Origin).unit  (RageTarget.Position - Origin).magnitude)      
					end)      
				else      
					args[1] = RAY(Origin, (RageTarget.Position - Origin).unit  (RageTarget.Position - Origin).magnitude)      
				end      
			end      
		end      
	end      
	if method == InvokeServer then      
		if self.Name == Moolah then      
			return      
		elseif self.Name == Hugh then      
			return      
		elseif self.Name == Filter and values.misc.chat[no filter].Toggle then      
			return args[1]      
		end      
	end      
	if method == LoadAnimation and self.Name == Humanoid then      
		if values.rage.others[leg movement].Dropdown == slide then      
			if FIND(args[1].Name, Walk) or FIND(args[1].Name, Run) then      
				args[1] = FakeAnim      
			end      
		end      
		if values.rage.others[no animations].Toggle then      
			args[1] = FakeAnim      
		end      
	end      
	if method == FireServer and self.Name == HitPart then      
		if values.rage.aimbot['force mode'].Dropdown == 'hit' and values.rage.aimbot['force hit'].Toggle then
			args[1] = RageTarget
			args[2] = RageTarget.Position
		end
		if values.rage.aimbot['force mode'].Dropdown == 'headshot' and values.rage.aimbot['force hit'].Toggle then
			args[1] = RageTarget.Parent.Head
			args[2] = RageTarget.Position
		end
		if values.rage.exploits[kill all] or values.rage.exploits[kill all] then
			coroutine.wrap(function()
				if game.PlayersGetPlayerFromCharacter(args[1].Parent) then RageTarget = args[1] end
					if PlayersGetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
						if values.rage.aimbot['prediction'].Toggle then
							if PlayersGetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then 
								local hrp = RageTarget.Parent.HumanoidRootPart.Position 
								local oldHrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value 
			
								local vel = (Vector3.new(hrp.X, 0, hrp.Z) - Vector3.new(oldHrp.X, 0, oldHrp.Z))  LastStep 
								local dir = Vector3.new(vel.X  vel.magnitude, 0, vel.Z  vel.magnitude) 
			
								
								args[2] = args[2] + dir  (Ping  (math.pow(Ping, 1.5))  (dir  (dir  2))) 
								args[4] = 0 
								args[12] = args[12] - 500 
							end
						else
							local Velocity = RageTarget.Parent.HumanoidRootPart.Velocity
							local Direction = Vector3.new(Velocity.XVelocity.magnitude, 0, Velocity.ZVelocity.magnitude)
							if Velocity.magnitude = 8 then
								args[2] = args[2] + Direction  (Velocity.magnitude(Ping1000)  (Ping  200 and 1.5 or 2))
								args[4] = 0
								args[12] = args[12] - 500
							end
						end
					end
				end)()
			end     
		if (values.rage.aimbot[prediction].Toggle and RageTarget ~= nil) then      
			coroutine.wrap(function()      
				if PlayersGetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then      
					local hrp = RageTarget.Parent.HumanoidRootPart.Position      
					local oldHrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value      

					local vel = (Vec3(hrp.X, 0, hrp.Z) - Vec3(oldHrp.X, 0, oldHrp.Z))  LastStep      
					local dir = Vec3(vel.X  vel.magnitude, 0, vel.Z  vel.magnitude)      

					      
					args[2] = args[2] + dir  (Ping  (POW(Ping, 1.5))  (dir  (dir  2)))      
					args[4] = 0      
					args[12] = args[12] - 500      
				end      
			end)()      
		end 	
		if values.visuals.world[impacts].Toggle then 
			coroutine.wrap(function() 
				local hit = Instance.new(Part) 
				hit.Transparency = 1 
				hit.Anchored = true 
				hit.CanCollide = false 
				hit.Size = Vector3.new(0.3,0.3,0.3) 
				hit.Position = args[2] 
				local selection = Instance.new(SelectionBox) 
				selection.LineThickness = 0 
				selection.SurfaceTransparency = 0.5 
				selection.Color3 = values.visuals.world[impacts].Color 
				selection.SurfaceColor3 = values.visuals.world[impacts].Color 
				selection.Parent = hit 
				selection.Adornee = hit 
				hit.Parent = workspace.Debris 
				wait(5.9) 
				libraryTween(selection, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {SurfaceTransparency = 1}) 
				hitDestroy() 
			end)() 
		end
	end      

	return oldNamecall(self, unpack(args))      
end      
mt.__index = function(self, key)      
	local CallingScript = getcallingscript()      

	if not checkcaller() and self == Viewmodels and LocalPlayer.Character ~= nil and LocalPlayer.CharacterFindFirstChild(UpperTorso) then      
		local WeaponName = GSUB(key, v_, )      
		if not FIND(WeaponName, Arms) then      
			if Weapons[WeaponName]FindFirstChild(Melee) and values.skins.knife[knife changer].Toggle then      
				if ViewmodelsFindFirstChild(v_..values.skins.knife.model.Scroll) then      
					return ViewmodelsFindFirstChild(v_..values.skins.knife.model.Scroll)      
				else      
					local Clone = Models.Knives[values.skins.knife.model.Scroll]Clone()      
					return Clone      
				end      
			end      
		end      
	end      
	if key == Value then      
		if self.Name == Auto and TBLFIND(values.misc.client[gun modifiers].Jumbobox, automatic) then      
			return true      
		elseif self.Name == ReloadTime and TBLFIND(values.misc.client[gun modifiers].Jumbobox, reload) then      
			return 0.001      
		elseif self.Name == EquipTime and TBLFIND(values.misc.client[gun modifiers].Jumbobox, equip) then      
			return 0.001      
		elseif self.Name == BuyTime and TBLFIND(values.misc.client.shop.Jumbobox, inf time) then      
			return 5      
		end      
	end      

	return oldIndex(self, key)      
end      

local perf__ = LocalPlayer.PlayerGui.Performance.Perf      

mt.__newindex = function(self, i, v)      
	if selfIsA(Humanoid) and i == JumpPower and not checkcaller() then      
		if values.misc.movement[jump bug].Toggle and values.misc.movement[jump bug].Active then 
			v = 24 
		end 
		if values.misc.movement[cancel hop].Toggle and values.misc.movement[cancel hop].Active then 
			v = 0 
		end
	elseif selfIsA(Humanoid) and i == WalkSpeed and not checkcaller() then 
		if values.misc.movement[walkspeed].Toggle and values.misc.movement[walkspeed].Active then 
			v = values.misc.movement[walkspeed speed].Slider
		end
	elseif selfIsA(Humanoid) and i == CameraOffset then      
		if values.rage.angles.enabled.Toggle and values.rage.angles[body roll].Dropdown == 180 and not DisableAA then      
			v = v + Vec3(0, -3.5, 0)      
		end      
	end      

	return oldNewIndex(self, i, v)      
end      
Crosshairs.ScopeGetPropertyChangedSignal(Visible)Connect(function(current)      
	if not TBLFIND(values.visuals.effects.removals.Jumbobox, scope lines) then return end      

	if current ~= false then      
		Crosshairs.Scope.Visible = false      
	end      
end)      
CrosshairGetPropertyChangedSignal(Visible)Connect(function(current)      
	if not LocalPlayer.Character then return end      
	if not values.visuals.effects[force crosshair].Toggle then return end      
	if LocalPlayer.CharacterFindFirstChild(AIMING) then return end      

	Crosshair.Visible = true      
end)      

LocalPlayer.Additionals.TotalDamageGetPropertyChangedSignal(Value)Connect(function(current)      
	if current == 0 then return end      
	coroutine.wrap(function()      
		if values.misc.client.hitmarker.Toggle then      
			local Line = Drawing.new(Line)      
			local Line2 = Drawing.new(Line)      
			local Line3 = Drawing.new(Line)      
			local Line4 = Drawing.new(Line)      

			local x, y = Camera.ViewportSize.X2, Camera.ViewportSize.Y2      

			Line.From = Vec2(x + 4, y + 4)      
			Line.To = Vec2(x + 10, y + 10)      
			Line.Color = values.misc.client.hitmarker.Color      
			Line.Visible = true       

			Line2.From = Vec2(x + 4, y - 4)      
			Line2.To = Vec2(x + 10, y - 10)      
			Line2.Color = values.misc.client.hitmarker.Color      
			Line2.Visible = true       

			Line3.From = Vec2(x - 4, y - 4)      
			Line3.To = Vec2(x - 10, y - 10)      
			Line3.Color = values.misc.client.hitmarker.Color      
			Line3.Visible = true       

			Line4.From = Vec2(x - 4, y + 4)      
			Line4.To = Vec2(x - 10, y + 10)      
			Line4.Color = values.misc.client.hitmarker.Color      
			Line4.Visible = true      

			Line.Transparency = 1      
			Line2.Transparency = 1      
			Line3.Transparency = 1      
			Line4.Transparency = 1      

			Line.Thickness = 1      
			Line2.Thickness = 1      
			Line3.Thickness = 1      
			Line4.Thickness = 1      

			wait(0.3)      
			for i = 1,0,-0.1 do      
				wait()      
				Line.Transparency = i       
				Line2.Transparency = i      
				Line3.Transparency = i      
				Line4.Transparency = i      
			end      
			LineRemove()      
			Line2Remove()      
			Line3Remove()      
			Line4Remove()      
		end      
	end)()      
	if values.visuals.world.hitsound.Dropdown == none then return end      

	local sound = INST(Sound)      
	sound.Parent = gameGetService(SoundService)      
	sound.SoundId = values.visuals.world.hitsound.Dropdown == skeet and rbxassetid5447626464 or values.visuals.world.hitsound.Dropdown == rust and rbxassetid5043539486 or values.visuals.world.hitsound.Dropdown == bag and rbxassetid364942410 or values.visuals.world.hitsound.Dropdown == baimware and rbxassetid6607339542 or rbxassetid6607204501      
	sound.Volume = values.visuals.world[sound volume].Slider      
	sound.PlayOnRemove = true      
	soundDestroy()      
end)      
LocalPlayer.Status.KillsGetPropertyChangedSignal(Value)Connect(function(current)      
	if current == 0 then return end      
	if values.misc.chat[kill say].Toggle then      
		gameGetService(ReplicatedStorage).Events.PlayerChattedFireServer(values.misc.chat[message].Text ~=  and values.misc.chat[message].Text or looks like you don't have stormy.solutions, false, Innocent, false, true)      
	end      
end)      
RayIgnore.ChildAddedConnect(function(obj)      
	if obj.Name == Fires then      
		obj.ChildAddedConnect(function(fire)      
			if values.visuals.world[molly radius].Toggle then      
				fire.Transparency = values.visuals.world[molly radius].Transparency      
				fire.Color = values.visuals.world[molly radius].Color      
			end      
		end)      
	end      
	if obj.Name == Smokes then      
		obj.ChildAddedConnect(function(smoke)      
			RunService.RenderSteppedWait()      
			local OriginalRate = INST(NumberValue)      
			OriginalRate.Value = smoke.ParticleEmitter.Rate      
			OriginalRate.Name = OriginalRate      
			OriginalRate.Parent = smoke      
			if TBLFIND(values.visuals.effects.removals.Jumbobox, smokes) then      
				smoke.ParticleEmitter.Rate = 0      
			end      
			smoke.Material = Enum.Material.ForceField      
			if values.visuals.world[smoke radius].Toggle then      
				smoke.Transparency = 0      
				smoke.Color = values.visuals.world[smoke radius].Color      
			end      
		end)      
	end      
end)      
if RayIgnoreFindFirstChild(Fires) then      
	RayIgnoreFindFirstChild(Fires).ChildAddedConnect(function(fire)      
		if values.visuals.world[molly radius].Toggle then      
			fire.Transparency = values.visuals.world[molly radius].Transparency      
			fire.Color = values.visuals.world[molly radius].Color      
		end      
	end)      
end      
if RayIgnoreFindFirstChild(Smokes) then      
	for _,smoke in pairs(RayIgnoreFindFirstChild(Smokes)GetChildren()) do      
		local OriginalRate = INST(NumberValue)      
		OriginalRate.Value = smoke.ParticleEmitter.Rate      
		OriginalRate.Name = OriginalRate      
		OriginalRate.Parent = smoke      
		smoke.Material = Enum.Material.ForceField      
	end      
	RayIgnoreFindFirstChild(Smokes).ChildAddedConnect(function(smoke)      
		RunService.RenderSteppedWait()      
		local OriginalRate = INST(NumberValue)      
		OriginalRate.Value = smoke.ParticleEmitter.Rate      
		OriginalRate.Name = OriginalRate      
		OriginalRate.Parent = smoke      
		if TBLFIND(values.visuals.effects.removals.Jumbobox, smokes) then      
			smoke.ParticleEmitter.Rate = 0      
		end      
		smoke.Material = Enum.Material.ForceField      
		if values.visuals.world[smoke radius].Toggle then      
			smoke.Transparency = 0      
			smoke.Color = values.visuals.world[smoke radius].Color      
		end      
	end)      
end      
Camera.ChildAddedConnect(function(obj)      
	if TBLFIND(values.misc.client[gun modifiers].Jumbobox, ammo) then      
		Client.ammocount = 999999      
		Client.primarystored = 999999      
		Client.ammocount2 = 999999      
		Client.secondarystored = 999999      
	end      
	RunService.RenderSteppedWait()      
	if obj.Name ~= Arms then return end      
	local Model      
	for i,v in pairs(objGetChildren()) do      
		if vIsA(Model) and (vFindFirstChild(Right Arm) or vFindFirstChild(Left Arm)) then      
			Model = v      
		end      
	end      
	if Model == nil then return end      
	for i,v in pairs(objGetChildren()) do      
		if (vIsA(BasePart) or vIsA(Part)) and v.Transparency ~= 1 and v.Name ~= Flash then      
			local valid = true      
			if vIsA(Part) and vFindFirstChild(Mesh) and not vIsA(BlockMesh) then      
				valid = false      
				local success, err = pcall(function()      
					local OriginalTexture = INST(StringValue)      
					OriginalTexture.Value = v.Mesh.TextureId      
					OriginalTexture.Name = OriginalTexture      
					OriginalTexture.Parent = v.Mesh      
				end)      
				local success2, err2 = pcall(function()      
					local OriginalTexture = INST(StringValue)      
					OriginalTexture.Value = v.Mesh.TextureID      
					OriginalTexture.Name = OriginalTexture      
					OriginalTexture.Parent = v.Mesh      
				end)      
				if success or success2 then valid = true end      
			end      

			for i2,v2 in pairs(vGetChildren()) do      
				if (v2IsA(BasePart) or v2IsA(Part)) then      
					INSERT(WeaponObj, v2)      
				end      
			end      

			if valid then      
				INSERT(WeaponObj, v)      
			end      
		end      
	end      

	local gunname = Client.gun ~= none and values.skins.knife[knife changer].Toggle and Client.gunFindFirstChild(Melee) and values.skins.knife.model.Scroll or Client.gun ~= none and Client.gun.Name      
	if values.skins.skins[skin changer].Toggle and gunname ~= nil and SkinsFindFirstChild(gunname) then      
		if values.skins.skins.skin.Scroll[gunname] ~= Inventory then      
			MapSkin(gunname, values.skins.skins.skin.Scroll[gunname])      
		end      
	end      
	for _,v in pairs(WeaponObj) do      
		if vIsA(MeshPart) then      
			local OriginalTexture = INST(StringValue)      
			OriginalTexture.Value = v.TextureID      
			OriginalTexture.Name = OriginalTexture      
			OriginalTexture.Parent = v      
		end      

		local OriginalColor = INST(Color3Value)      
		OriginalColor.Value = v.Color      
		OriginalColor.Name = OriginalColor      
		OriginalColor.Parent = v      

		local OriginalMaterial = INST(StringValue)      
		OriginalMaterial.Value = v.Material.Name      
		OriginalMaterial.Name = OriginalMaterial      
		OriginalMaterial.Parent = v      

		if values.visuals.effects[weapon chams].Toggle then      
			UpdateWeapon(v)      
		end      
	end      
	RArm = ModelFindFirstChild(Right Arm); LArm = ModelFindFirstChild(Left Arm)      
	if RArm then      
		local OriginalColor = INST(Color3Value)      
		OriginalColor.Value = RArm.Color      
		OriginalColor.Name = Color3Value      
		OriginalColor.Parent = RArm      
		if values.visuals.effects[arm chams].Toggle then      
			RArm.Color = values.visuals.effects[arm chams].Color      
			RArm.Transparency = values.visuals.effects[arm chams].Transparency      
		end      
		RGlove = RArmFindFirstChild(Glove) or RArmFindFirstChild(RGlove)      
		if values.skins.glove[glove changer].Toggle and Client.gun ~= none then      
			if RGlove then RGloveDestroy() end      
			RGlove = GloveModels[values.skins.glove.model.Dropdown].RGloveClone()      
			RGlove.Mesh.TextureId = Gloves[values.skins.glove.model.Dropdown][values.skins.glove.model.Scroll[values.skins.glove.model.Dropdown]].Textures.TextureId      
			RGlove.Parent = RArm      
			RGlove.Transparency = 0      
			RGlove.Welded.Part0 = RArm      
		end      
		if RGlove.Transparency == 1 then      
			RGloveDestroy()      
			RGlove = nil      
		else      
			local GloveTexture = INST(StringValue)      
			GloveTexture.Value = RGlove.Mesh.TextureId      
			GloveTexture.Name = StringValue      
			GloveTexture.Parent = RGlove      

			if values.visuals.effects[accessory chams].Toggle then      
				UpdateAccessory(RGlove)      
			end      
		end      
		RSleeve = RArmFindFirstChild(Sleeve)      
		if RSleeve ~= nil then      
			local SleeveTexture = INST(StringValue)      
			SleeveTexture.Value = RSleeve.Mesh.TextureId      
			SleeveTexture.Name = StringValue      
			SleeveTexture.Parent = RSleeve      
			if values.visuals.effects[arm chams].Toggle then      
				LArm.Color = values.visuals.effects[arm chams].Color      
			end      
			if values.visuals.effects[accessory chams].Toggle then      
				UpdateAccessory(RSleeve)      
			end      
		end      
	end      
	if LArm then      
		local OriginalColor = INST(Color3Value)      
		OriginalColor.Value = LArm.Color      
		OriginalColor.Name = Color3Value      
		OriginalColor.Parent = LArm      
		if values.visuals.effects[arm chams].Toggle then      
			LArm.Color = values.visuals.effects[arm chams].Color      
			LArm.Transparency = values.visuals.effects[arm chams].Transparency      
		end      
		LGlove = LArmFindFirstChild(Glove) or LArmFindFirstChild(LGlove)      
		if values.skins.glove[glove changer].Toggle and Client.gun ~= none then      
			if LGlove then LGloveDestroy() end      
			LGlove = GloveModels[values.skins.glove.model.Dropdown].LGloveClone()      
			LGlove.Mesh.TextureId = Gloves[values.skins.glove.model.Dropdown][values.skins.glove.model.Scroll[values.skins.glove.model.Dropdown]].Textures.TextureId      
			LGlove.Transparency = 0      
			LGlove.Parent = LArm      
			LGlove.Welded.Part0 = LArm      
		end      
		if LGlove.Transparency == 1 then      
			LGloveDestroy()      
			LGlove =  nil      
		else      
			local GloveTexture = INST(StringValue)      
			GloveTexture.Value = LGlove.Mesh.TextureId      
			GloveTexture.Name = StringValue      
			GloveTexture.Parent = LGlove      

			if values.visuals.effects[accessory chams].Toggle then      
				UpdateAccessory(LGlove)      
			end      
		end      
		LSleeve = LArmFindFirstChild(Sleeve)      
		if LSleeve ~= nil then      
			local SleeveTexture = INST(StringValue)      
			SleeveTexture.Value = LSleeve.Mesh.TextureId      
			SleeveTexture.Name = StringValue      
			SleeveTexture.Parent = LSleeve      

			if values.visuals.effects[accessory chams].Toggle then      
				UpdateAccessory(LSleeve)      
			end      
		end      
	end      
end)      
Camera.ChildAddedConnect(function(obj)      
	if obj.Name == Arms then      
		RArm, LArm, RGlove, RSleeve, LGlove, LSleeve = nil, nil, nil, nil, nil, nil      
		WeaponObj = {}      
	end      
end)      
CameraGetPropertyChangedSignal(FieldOfView)Connect(function(fov)      
	if LocalPlayer.Character == nil then return end      
	if fov == values.visuals.self[fov changer].Slider then return end      
	if values.visuals.self[on scope].Toggle or not LocalPlayer.CharacterFindFirstChild(AIMING) then      
		Camera.FieldOfView = values.visuals.self[fov changer].Slider      
	end      
end)      
LocalPlayer.CashGetPropertyChangedSignal(Value)Connect(function(cash)      
	if values.misc.client[infinite cash].Toggle and cash ~= 8000 then      
		LocalPlayer.Cash.Value = 8000      
	end      
end)      
if workspaceFindFirstChild(Map) and workspaceFindFirstChild(Map)FindFirstChild(Origin) then      
	if workspace.Map.Origin.Value == de_cache or workspace.Map.Origin.Value == de_vertigo or workspace.Map.Origin.Value == de_nuke or workspace.Map.Origin.Value == de_aztec then      
		oldSkybox = LightingFindFirstChildOfClass(Sky)Clone()      
	end      
end      
workspace.ChildAddedConnect(function(obj)      
	if obj.Name == Map then      
		wait(5)      
		if values.misc.client[remove killers].Toggle then      
			if workspaceFindFirstChild(Map) and workspaceFindFirstChild(Map)FindFirstChild(Killers) then      
				local clone = workspaceFindFirstChild(Map)FindFirstChild(Killers)Clone()      
				clone.Name = KillersClone      
				clone.Parent = workspaceFindFirstChild(Map)      

				workspaceFindFirstChild(Map)FindFirstChild(Killers)Destroy()      
			end      
		end      
		if oldSkybox ~= nil then      
			oldSkyboxDestroy()      
			oldSkybox = nil      
		end      
		local Origin = workspace.MapWaitForChild(Origin)      
		if workspace.Map.Origin.Value == de_cache or workspace.Map.Origin.Value == de_vertigo or workspace.Map.Origin.Value == de_nuke or workspace.Map.Origin.Value == de_aztec then      
			oldSkybox = LightingFindFirstChildOfClass(Sky)Clone()      

			local sky = values.visuals.world.skybox.Dropdown      
			if sky ~= none then      
				LightingFindFirstChildOfClass(Sky)Destroy()      
				local skybox = INST(Sky)      
				skybox.SkyboxLf = Skyboxes[sky].SkyboxLf      
				skybox.SkyboxBk = Skyboxes[sky].SkyboxBk      
				skybox.SkyboxDn = Skyboxes[sky].SkyboxDn      
				skybox.SkyboxFt = Skyboxes[sky].SkyboxFt      
				skybox.SkyboxRt = Skyboxes[sky].SkyboxRt      
				skybox.SkyboxUp = Skyboxes[sky].SkyboxUp      
				skybox.Name = override      
				skybox.Parent = Lighting      
			end      
		else      
			local sky = values.visuals.world.skybox.Dropdown      
			if sky ~= none then      
				local skybox = INST(Sky)      
				skybox.SkyboxLf = Skyboxes[sky].SkyboxLf      
				skybox.SkyboxBk = Skyboxes[sky].SkyboxBk      
				skybox.SkyboxDn = Skyboxes[sky].SkyboxDn      
				skybox.SkyboxFt = Skyboxes[sky].SkyboxFt      
				skybox.SkyboxRt = Skyboxes[sky].SkyboxRt      
				skybox.SkyboxUp = Skyboxes[sky].SkyboxUp      
				skybox.Name = override      
				skybox.Parent = Lighting      
			end      
		end      
	end      
end)      
Lighting.ChildAddedConnect(function(obj)      
	if objIsA(Sky) and obj.Name ~= override then      
		oldSkybox = objClone()      
	end      
end)      

local function CollisionTBL(obj)      
	if objIsA(Accessory) then      
		INSERT(Collision, obj)      
	end      
	if objIsA(Part) then      
		if obj.Name == HeadHB or obj.Name == FakeHead then      
			INSERT(Collision, obj)      
		end      
	end      
end      
LocalPlayer.CharacterAddedConnect(function(char)      
	repeat RunService.RenderSteppedWait()      
	until charFindFirstChild(Gun)      
	SelfObj = {}      
	if values.skins.characters[character changer].Toggle then      
		ChangeCharacter(ChrModelsFindFirstChild(values.skins.characters.skin.Scroll))      
	end      
	if charFindFirstChildOfClass(Shirt) then      
		local String = INST(StringValue)      
		String.Name = OriginalTexture      
		String.Value = charFindFirstChildOfClass(Shirt).ShirtTemplate      
		String.Parent = charFindFirstChildOfClass(Shirt)      

		if TBLFIND(values.visuals.effects.removals.Jumbobox, clothes) then      
			charFindFirstChildOfClass(Shirt).ShirtTemplate =       
		end      
	end      
	if charFindFirstChildOfClass(Pants) then      
		local String = INST(StringValue)      
		String.Name = OriginalTexture      
		String.Value = charFindFirstChildOfClass(Pants).PantsTemplate      
		String.Parent = charFindFirstChildOfClass(Pants)      

		if TBLFIND(values.visuals.effects.removals.Jumbobox, clothes) then      
			charFindFirstChildOfClass(Pants).PantsTemplate =       
		end      
	end      
	for i,v in pairs(charGetChildren()) do      
		if vIsA(BasePart) and v.Transparency ~= 1 then      
			INSERT(SelfObj, v)      
			local Color = INST(Color3Value)      
			Color.Name = OriginalColor      
			Color.Value = v.Color      
			Color.Parent = v      

			local String = INST(StringValue)      
			String.Name = OriginalMaterial      
			String.Value = v.Material.Name      
			String.Parent = v      
		elseif vIsA(Accessory) and v.Handle.Transparency ~= 1 then      
			INSERT(SelfObj, v.Handle)      
			local Color = INST(Color3Value)      
			Color.Name = OriginalColor      
			Color.Value = v.Handle.Color      
			Color.Parent = v.Handle      

			local String = INST(StringValue)      
			String.Name = OriginalMaterial      
			String.Value = v.Handle.Material.Name      
			String.Parent = v.Handle      
		end      
	end      
	if values.visuals.self[self chams].Toggle then      
		for _,obj in pairs(SelfObj) do      
			if obj.Parent ~= nil then      
				obj.Material = Enum.Material.ForceField      
				obj.Color = values.visuals.self[self chams].Color      
			end      
		end      
	end      
	LocalPlayer.Character.ChildAddedConnect(function(Child)      
		if ChildIsA(Accessory) and Child.Handle.Transparency ~= 1 then      
			INSERT(SelfObj, Child.Handle)      
			local Color = INST(Color3Value)      
			Color.Name = OriginalColor      
			Color.Value = Child.Handle.Color      
			Color.Parent = Child.Handle      

			local String = INST(StringValue)      
			String.Name = OriginalMaterial      
			String.Value = Child.Handle.Material.Name      
			String.Parent = Child.Handle      

			if values.visuals.self[self chams].Toggle then      
				for _,obj in pairs(SelfObj) do      
					if obj.Parent ~= nil then      
						obj.Material = Enum.Material.ForceField      
						obj.Color = values.visuals.self[self chams].Color      
					end      
				end      
			end      
		end      
	end)      

	if values.misc.animations.enabled.Toggle and values.misc.animations.enabled.Active then      
		LoadedAnim = LocalPlayer.Character.HumanoidLoadAnimation(Dance)      
		LoadedAnim.Priority = Enum.AnimationPriority.Action      
		LoadedAnimPlay()      
	end      
end)      
if LocalPlayer.Character ~= nil then      
	for i,v in pairs(LocalPlayer.CharacterGetChildren()) do      
		if vIsA(BasePart) and v.Transparency ~= 1 then      
			INSERT(SelfObj, v)      
			local Color = INST(Color3Value)      
			Color.Name = OriginalColor      
			Color.Value = v.Color      
			Color.Parent = v      

			local String = INST(StringValue)      
			String.Name = OriginalMaterial      
			String.Value = v.Material.Name      
			String.Parent = v      
		elseif vIsA(Accessory) and v.Handle.Transparency ~= 1 then      
			INSERT(SelfObj, v.Handle)      
			local Color = INST(Color3Value)      
			Color.Name = OriginalColor      
			Color.Value = v.Handle.Color      
			Color.Parent = v.Handle      

			local String = INST(StringValue)      
			String.Name = OriginalMaterial      
			String.Value = v.Handle.Material.Name      
			String.Parent = v.Handle      
		end      
	end      
	if values.visuals.self[self chams].Toggle then      
		for _,obj in pairs(SelfObj) do      
			if obj.Parent ~= nil then      
				obj.Material = Enum.Material.ForceField      
				obj.Color = values.visuals.self[self chams].Color      
			end      
		end      
	end      
	LocalPlayer.Character.ChildAddedConnect(function(Child)      
		if ChildIsA(Accessory) and Child.Handle.Transparency ~= 1 then      
			INSERT(SelfObj, Child.Handle)      
			local Color = INST(Color3Value)      
			Color.Name = OriginalColor      
			Color.Value = Child.Handle.Color      
			Color.Parent = Child.Handle      

			local String = INST(StringValue)      
			String.Name = OriginalMaterial      
			String.Value = Child.Handle.Material.Name      
			String.Parent = Child.Handle      

			if values.visuals.self[self chams].Toggle then      
				for _,obj in pairs(SelfObj) do      
					if obj.Parent ~= nil then      
						obj.Material = Enum.Material.ForceField      
						obj.Color = values.visuals.self[self chams].Color      
					end      
				end      
			end      
		end      
	end)      
end      
Players.PlayerAddedConnect(function(Player)      
	PlayerGetPropertyChangedSignal(Team)Connect(function(new)      
		wait()      
		if Player.Character and Player.CharacterFindFirstChild(HumanoidRootPart) then      
			for _2,Obj in pairs(Player.CharacterGetDescendants()) do      
				if Obj.Name == VisibleCham or Obj.Name == WallCham then      
					if values.visuals.players.chams.Toggle then      
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then      
							Obj.Visible = true      
						else      
							Obj.Visible = false      
						end      
					else      
						Obj.Visible = false      
					end      
					Obj.Color3 = values.visuals.players.chams.Color      
				end      
			end      
		end      
	end)      
	Player.CharacterAddedConnect(function(Character)      
		Character.ChildAddedConnect(function(obj)      
			wait(1)      
			CollisionTBL(obj)      
		end)      
		wait(1)      
		if Character ~= nil then      
			local Value = INST(Vector3Value)      
			Value.Name = OldPosition      
			Value.Value = Character.HumanoidRootPart.Position      
			Value.Parent = Character.HumanoidRootPart      
			for _,obj in pairs(CharacterGetChildren()) do      
				if objIsA(BasePart) and Player ~= LocalPlayer and obj.Name ~= HumanoidRootPart and obj.Name ~= Head and obj.Name ~= BackC4 and obj.Name ~= HeadHB then      
					local VisibleCham = INST(BoxHandleAdornment)      
					VisibleCham.Name = VisibleCham      
					VisibleCham.AlwaysOnTop = false      
					VisibleCham.ZIndex = 8      
					VisibleCham.Size = obj.Size + Vec3(0.1,0.1,0.1)      
					VisibleCham.AlwaysOnTop = false      
					VisibleCham.Transparency = 0      

					local WallCham = INST(BoxHandleAdornment)      
					WallCham.Name = WallCham      
					WallCham.AlwaysOnTop = true      
					WallCham.ZIndex = 5      
					WallCham.Size = obj.Size + Vec3(0.1,0.1,0.1)      
					WallCham.AlwaysOnTop = true      
					WallCham.Transparency = 0.7      

					if values.visuals.players.chams.Toggle then      
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then      
							VisibleCham.Visible = true      
							WallCham.Visible = true      
						else      
							VisibleCham.Visible = false      
							WallCham.Visible = false      
						end      
					else      
						VisibleCham.Visible = false      
						WallCham.Visible = false      
					end      

					INSERT(ChamItems, VisibleCham)      
					INSERT(ChamItems, WallCham)      

					VisibleCham.Color3 = values.visuals.players.chams.Color      
					WallCham.Color3 = values.visuals.players.chams.Color      

					VisibleCham.AdornCullingMode = Never      
					WallCham.AdornCullingMode = Never      

					VisibleCham.Adornee = obj      
					VisibleCham.Parent = obj      

					WallCham.Adornee = obj      
					WallCham.Parent = obj      
				end      
			end      
		end      
	end)      
end)      
for _,Player in pairs(PlayersGetPlayers()) do      
	if Player ~= LocalPlayer then      
		PlayerGetPropertyChangedSignal(Team)Connect(function(new)      
			wait()      
			if Player.Character and Player.CharacterFindFirstChild(HumanoidRootPart) then      
				for _2,Obj in pairs(Player.CharacterGetDescendants()) do      
					if Obj.Name == VisibleCham or Obj.Name == WallCham then      
						if values.visuals.players.chams.Toggle then      
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then      
								Obj.Visible = true      
							else      
								Obj.Visible = false      
							end      
						else      
							Obj.Visible = false      
						end      
						Obj.Color3 = values.visuals.players.chams.Color      
					end      
				end      
			end      
		end)      
	else      
		LocalPlayerGetPropertyChangedSignal(Team)Connect(function(new)      
			wait()      
			for _,Player in pairs(PlayersGetPlayers()) do      
				if Player.Character then      
					for _2,Obj in pairs(Player.CharacterGetDescendants()) do      
						if Obj.Name == VisibleCham or Obj.Name == WallCham then      
							if values.visuals.players.chams.Toggle then      
								if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then      
									Obj.Visible = true      
								else      
									Obj.Visible = false      
								end      
							else      
								Obj.Visible = false      
							end      
							Obj.Color3 = values.visuals.players.chams.Color      
						end      
					end      
				end      
			end      
		end)      
	end      
	Player.CharacterAddedConnect(function(Character)      
		Character.ChildAddedConnect(function(obj)      
			wait(1)      
			CollisionTBL(obj)      
		end)      
		wait(1)      
		if Player.Character ~= nil and Player.CharacterFindFirstChild(HumanoidRootPart) then      
			local Value = INST(Vector3Value)      
			Value.Value = Player.Character.HumanoidRootPart.Position      
			Value.Name = OldPosition      
			Value.Parent = Player.Character.HumanoidRootPart      
			for _,obj in pairs(Player.CharacterGetChildren()) do      
				if objIsA(BasePart) and Player ~= LocalPlayer and obj.Name ~= HumanoidRootPart and obj.Name ~= Head and obj.Name ~= BackC4 and obj.Name ~= HeadHB then      
					local VisibleCham = INST(BoxHandleAdornment)      
					VisibleCham.Name = VisibleCham      
					VisibleCham.AlwaysOnTop = false      
					VisibleCham.ZIndex = 5      
					VisibleCham.Size = obj.Size + Vec3(0.1,0.1,0.1)      
					VisibleCham.AlwaysOnTop = false      
					VisibleCham.Transparency = 0      

					local WallCham = INST(BoxHandleAdornment)      
					WallCham.Name = WallCham      
					WallCham.AlwaysOnTop = true      
					WallCham.ZIndex = 5      
					WallCham.Size = obj.Size + Vec3(0.1,0.1,0.1)      
					WallCham.AlwaysOnTop = true      
					WallCham.Transparency = 0.7      

					if values.visuals.players.chams.Toggle then      
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then      
							VisibleCham.Visible = true      
							WallCham.Visible = true      
						else      
							VisibleCham.Visible = false      
							WallCham.Visible = false      
						end      
					else      
						VisibleCham.Visible = false      
						WallCham.Visible = false      
					end      

					INSERT(ChamItems, VisibleCham)      
					INSERT(ChamItems, WallCham)      

					VisibleCham.Color3 = values.visuals.players.chams.Color      
					WallCham.Color3 = values.visuals.players.chams.Color      

					VisibleCham.AdornCullingMode = Never      
					WallCham.AdornCullingMode = Never      

					VisibleCham.Adornee = obj      
					VisibleCham.Parent = obj      

					WallCham.Adornee = obj      
					WallCham.Parent = obj      
				end      
			end      
		end      
	end)      
	if Player.Character ~= nil and Player.CharacterFindFirstChild(UpperTorso) then      
		local Value = INST(Vector3Value)      
		Value.Name = OldPosition      
		Value.Value = Player.Character.HumanoidRootPart.Position      
		Value.Parent = Player.Character.HumanoidRootPart      
		for _,obj in pairs(Player.CharacterGetChildren()) do      
			CollisionTBL(obj)      
			if objIsA(BasePart) and Player ~= LocalPlayer and obj.Name ~= HumanoidRootPart and obj.Name ~= Head and obj.Name ~= BackC4 and obj.Name ~= HeadHB then      
				local VisibleCham = INST(BoxHandleAdornment)      
				VisibleCham.Name = VisibleCham      
				VisibleCham.AlwaysOnTop = false      
				VisibleCham.ZIndex = 5      
				VisibleCham.Size = obj.Size + Vec3(0.1,0.1,0.1)      
				VisibleCham.AlwaysOnTop = false      
				VisibleCham.Transparency = 0      

				local WallCham = INST(BoxHandleAdornment)      
				WallCham.Name = WallCham      
				WallCham.AlwaysOnTop = true      
				WallCham.ZIndex = 5      
				WallCham.Size = obj.Size + Vec3(0.1,0.1,0.1)      
				WallCham.AlwaysOnTop = true      
				WallCham.Transparency = 0.7      

				if values.visuals.players.chams.Toggle then      
					if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then      
						VisibleCham.Visible = true      
						WallCham.Visible = true      
					else      
						VisibleCham.Visible = false      
						WallCham.Visible = false      
					end      
				else      
					VisibleCham.Visible = false      
					WallCham.Visible = false      
				end      

				INSERT(ChamItems, VisibleCham)      
				INSERT(ChamItems, WallCham)      

				VisibleCham.Color3 = values.visuals.players.chams.Color      
				WallCham.Color3 = values.visuals.players.chams.Color      

				VisibleCham.AdornCullingMode = Never      
				WallCham.AdornCullingMode = Never      

				VisibleCham.Adornee = obj      
				VisibleCham.Parent = obj      

				WallCham.Adornee = obj      
				WallCham.Parent = obj      
			end      
		end      
	end      
end
