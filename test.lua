local cc = {"berke081", "LoftyEvil"}

local function ea(name)
    for _, v in ipairs(cc) do
        if v == name then
            return true
        end
    end
    return false
end

if ea(game:GetService("Players").LocalPlayer.Name) then
	print("eh")
else
  return
end

warn("levii göt")
