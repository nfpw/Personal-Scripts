while wait() do
    local lp = game.Players.LocalPlayer
    local lpCh = lp.Character
    local Human = lpCh.HumanoidRootPart
    local NoTES = game.Workspace.Notes

    _G.Farm = true
    _G.WaitTime = 1.3
    _G.GetTime = 0.3
    _G.Method = "Tp" -- Change to "Tp" if you want teleportation

    for i, v in pairs(NoTES:GetDescendants()) do
        if v:IsA("BasePart") then

            wait(_G.GetTime)

            if _G.Farm then
                if _G.Method == "Tp" then
                    Human.CFrame = v.CFrame
                    fireproximityprompt(v.ProximityPrompt)
                    wait(_G.WaitTime)
                else
                    v.CFrame = Human.CFrame
                    wait(_G.WaitTime)
                end
            end
        end
    end
end
