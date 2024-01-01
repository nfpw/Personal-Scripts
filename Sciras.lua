
local lp = game.Players.LocalPlayer
local lpCh = lp.Character
local Human = lpCh.HumanoidRootPart
local humancf = Human.CFrame
local NoTES = game.Workspace.Notes

_G.Farm = true
_G.WaitTime = 0.3
_G.GetTime = 0.3
_G.Method = "Bring" -- Change to "Tp" if you want teleportation

local esp = Instance.new("Highlight")

for i, v in pairs(NoTES:GetDescendants()) do
	if v:IsA("BasePart") then

		_G.Farm = true
		_G.WaitTime = 0.3
		_G.GetTime = 0.3
		_G.Method = "Bring" -- eğer Tp istiyosan değiştir
		wait(_G.GetTime)

		for i, v in pairs(NoTES:GetDescendants()) do
			if v.Name:FindFirstChild("esp") then
				print("it has esp")
				wait(.1)
			else
				esp:Clone().Parent = v.Name
				esp.FillTransparency = 1
				esp.OutlineColor = Color3.fromRGB(255, 255, 255)
				wait(.1)
			end
			wait(_G.GetTime)
		end
	end
end
