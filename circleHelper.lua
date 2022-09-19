local MakeCircle = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local lbox = Instance.new("TextBox")
local abox = Instance.new("TextBox")
local hbox = Instance.new("TextBox")
local hbutton = Instance.new("TextButton")
local lbutton = Instance.new("TextButton")
local abutton = Instance.new("TextButton")

--Properties:

MakeCircle.Name = "MakeCircle"
MakeCircle.Parent = game.StarterGui.CalcTool
MakeCircle.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = MakeCircle
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(1, -310, 0.331816077, 0)
ImageLabel.Size = UDim2.new(0, 310, 0, 208)
ImageLabel.Image = "rbxassetid://10957486003"
ImageLabel.ScaleType = Enum.ScaleType.Fit

lbox.Name = "lbox"
lbox.Parent = ImageLabel
lbox.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
lbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
lbox.Position = UDim2.new(1, -160, 0, 13)
lbox.Size = UDim2.new(0, 120, 0, 25)
lbox.ClearTextOnFocus = false
lbox.Font = Enum.Font.SourceSans
lbox.PlaceholderText = "l in points"
lbox.Text = ""
lbox.TextColor3 = Color3.fromRGB(0, 0, 0)
lbox.TextSize = 22.000
lbox.TextWrapped = true

abox.Name = "abox"
abox.Parent = ImageLabel
abox.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
abox.BorderColor3 = Color3.fromRGB(0, 0, 0)
abox.Position = UDim2.new(1, -160, 0, 75)
abox.Size = UDim2.new(0, 120, 0, 25)
abox.ClearTextOnFocus = false
abox.Font = Enum.Font.SourceSans
abox.PlaceholderText = "a in degrees"
abox.Text = ""
abox.TextColor3 = Color3.fromRGB(0, 0, 0)
abox.TextSize = 22.000
abox.TextWrapped = true

hbox.Name = "hbox"
hbox.Parent = ImageLabel
hbox.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
hbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
hbox.Position = UDim2.new(1, -160, 0, 44)
hbox.Size = UDim2.new(0, 120, 0, 25)
hbox.ClearTextOnFocus = false
hbox.Font = Enum.Font.SourceSans
hbox.PlaceholderText = "h in points"
hbox.Text = ""
hbox.TextColor3 = Color3.fromRGB(0, 0, 0)
hbox.TextSize = 22.000
hbox.TextWrapped = true

hbutton.Name = "hbutton"
hbutton.Parent = ImageLabel
hbutton.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
hbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
hbutton.Position = UDim2.new(1, -35, 0, 44)
hbutton.Size = UDim2.new(0, 30, 0, 25)
hbutton.Font = Enum.Font.SourceSans
hbutton.Text = "Find"
hbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
hbutton.TextSize = 14.000
hbutton.TextWrapped = true

lbutton.Name = "lbutton"
lbutton.Parent = ImageLabel
lbutton.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
lbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
lbutton.Position = UDim2.new(1, -35, 0, 13)
lbutton.Size = UDim2.new(0, 30, 0, 25)
lbutton.Font = Enum.Font.SourceSans
lbutton.Text = "Find"
lbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
lbutton.TextSize = 14.000
lbutton.TextWrapped = true

abutton.Name = "abutton"
abutton.Parent = ImageLabel
abutton.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
abutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
abutton.LayoutOrder = 2
abutton.Position = UDim2.new(1, -35, 0, 75)
abutton.Size = UDim2.new(0, 30, 0, 25)
abutton.ZIndex = 2
abutton.Font = Enum.Font.SourceSans
abutton.Text = "Find"
abutton.TextColor3 = Color3.fromRGB(0, 0, 0)
abutton.TextSize = 14.000
abutton.TextWrapped = true

-- Scripts:

local function DFMMKGY_fake_script() -- ImageLabel.LocalScript 
  local script = Instance.new('LocalScript', ImageLabel)


local hbutton = script.Parent.hbutton
  local lbutton = script.Parent.lbutton
  local abutton = script.Parent.abutton
  local abox = script.Parent.abox
  local hbox = script.Parent.hbox
  local lbox = script.Parent.lbox
  
  --position = Udim2(numbers)
  
  
  local function acalc()
    local h = hbox.Text
    local l = lbox.Text
    local a = abox.Text
    
    abox.Text = math.round(1000*2*math.deg(math.atan(l/(2*h))))/10000
    
  end
  local function lcalc()
    local h = hbox.Text
    local l = lbox.Text
    local a = abox.Text
    
    lbox.Text = math.round(1000*2*h*math.tan(math.rad(a/2)))/10000
    
  end
  local function hcalc()
    local h = hbox.Text
    local l = lbox.Text
    local a = abox.Text
    
    hbox.Text = math.round(1000*l/2*math.tan(math.rad(a/2)))/10000
    
  end
  
  hbutton.Activated:Connect(hcalc)
  lbutton.Activated:Connect(lcalc)
  abutton.Activated:Connect(acalc)
end
coroutine.wrap(DFMMKGY_fake_script)()