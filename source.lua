--[[ NOTE: This is just a file made by me to test myself in lua and luau ( Roblox version of lua ), if you want to test it, put it in a local script in roblox studio and run it,
it shall work. -Dev&Fire ]]--

-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ColorChangeGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame with a black background and red border
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black background
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(1, 0, 0) -- Red border
frame.Parent = screenGui

-- Create a Button in the middle of the Frame
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.2, 0, 0.1, 0)
button.Position = UDim2.new(0.4, 0, 0.45, 0)
button.BackgroundColor3 = Color3.new(1, 1, 1) -- White background
button.TextColor3 = Color3.new(0, 0, 0) -- Black text
button.Text = "Change Color"
button.Parent = frame

-- Create a Part in the game world
local part = Instance.new("Part")
part.Size = Vector3.new(4, 1, 4)
part.Position = Vector3.new(0, 5, 0)
part.Anchored = true
part.BrickColor = BrickColor.new("Bright red")
part.Parent = game.Workspace

-- Function to change the part's color
local function changeColor()
    part.BrickColor = BrickColor.random()
end

-- Connect the Button click event to the changeColor function
button.MouseButton1Click:Connect(changeColor)
