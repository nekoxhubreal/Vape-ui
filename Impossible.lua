function Win()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1106.57, 65.16, 115.97)
    end

function UI()
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Varomine Hub", "7952502098", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

local tab = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")

tab:Toggle("Auto Farm Coins", "Automatically collects coins for you!",false,function(t)
    _G.Farm = t
end)

local tab3 = win:Tab("Credits", "http://www.roblox.com/asset/?id=6023426915")

tab3:Label("Script By : Nothing._lol#4267")


while wait() do
    pcall(function()
        if _G.Farm then
            Win()
        end
    end)
end
end

local ui = game.CoreGui:FindFirstChild("FluxLib")

if ui then
	ui:Destroy()
    wait(0.1)
    UI()
else
    UI()
end