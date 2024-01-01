while wait() do
	local lp = game.Players.LocalPlayer
	local lpCh = lp.Character
	local Human = lpCh.HumanoidRootPart
	local humancf = Human.CFrame
	local NoTES = game.Workspace.Notes
end

local esp = Instance.new("Highlight")

_G.Farm = true
_G.WaitTime = 0.3
_G.GetTime = 0.3
_G.Method = "Bring" -- eğer Tp istiyosan değiştir

for i, v in pairs(NoTES:GetDescendants()) do
	_G.GidilicekYer = v.CFrame
	if v.Name:FindFirstChild("esp") then
		print("it has esp")
		wait(.1)
	else
		esp.FillTransparency = 1
		esp:Clone().Parent = v.Name
		esp.OutlineColor = Color3.fromRGB(255, 255, 255)
		wait(.1)
	end
	wait(_G.GetTime)
end

while _G.Farm == true do
	if _G.Method == "Tp" then
		humancf = _G.GidilicekYer
		wait(_G.WaitTime)
	else
		_G.GidilicekYer = humancf
		wait(_G.WaitTime)
	end
end
