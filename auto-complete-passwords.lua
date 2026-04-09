-- for this item https://www.roblox.com/catalog/99390776933762/Roblox-Learn-Ducky-Head
-- https://www.roblox.com/games/130969810099507/The-Roblox-Learn-Experience

local players = game:GetService("Players")
local pedestals = workspace:FindFirstChild("Pedestals")

local player = players.LocalPlayer
local player_gui = player.PlayerGui

local passowrd_gui = player_gui.PromptInputGui.InputFrame
local password_box = passowrd_gui.PasswordBox
local submit_button = passowrd_gui.SubmitButton

local function handle_prompt(prompt)
	player.Character.HumanoidRootPart.CFrame = prompt.Parent.CFrame + Vector3.new(0, 10, 0)
	task.wait(1)
	fireproximityprompt(prompt)
	task.wait(.3)
	local password = prompt.Parent.UnlockPassword.Value
	password_box.Text = password
	task.wait(.3)
	firesignal(submit_button.MouseButton1Click)
end

for _, instance in ipairs(pedestals:GetDescendants()) do
	if instance:IsA("ProximityPrompt") and instance.Parent.Parent == pedestals then
		handle_prompt(instance)
	end
end
