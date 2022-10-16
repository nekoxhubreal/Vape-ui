function UI()
local PPP = {}

    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Character.Name then
            table.insert(PPP,v.Name)
        end
    end

    function Create_Part()
        local Part = Instance.new("Part",game.Workspace)
        Part.Size = Vector3.new(100,10,100)
        Part.Position = Vector3.new(196, -200, 73)
        Part.Anchored = true
        end
        
    Create_Part()

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Varomine Hub", "5149673492", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

local tab = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")

tab:Toggle("Auto Farm", "Auto teleport you to safe place",false,function(t)
    _G.Farm = t
end)

tab:Toggle("ANTI-AFK", " ",false,function(t)
    _G.Anti_AFK = t
end)

tab:Button("Teleport to safe place", "Teleport you to safe place", function()
    local Fall_Damage = game.Players.LocalPlayer.Character:FindFirstChild("FallDamageClient")
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(196, -190, 73)
        if Fall_Damage then
            
            Fall_Damage:Destroy()
        else
            print("Fall Damage Not Found!")
        end
end)

local tab2 = win:Tab("Players", "http://www.roblox.com/asset/?id=6023426915")

local drop = tab2:Dropdown("Select Player", PPP, function(t)
    _G.Players_Select = t
end)

tab2:Button("Teleport to player", "Teleport you to player that you select", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.Players_Select].Character.HumanoidRootPart.CFrame
end)

tab2:Button("Refresh Players", " ", function()
    _G.Players_Select = "NONE"
    drop:Clear()
    for i,v in pairs(game.Players:GetChildren()) do
        drop:Add(v.Name)
    end
end)

local tab3 = win:Tab("Credits", "http://www.roblox.com/asset/?id=6023426915")

tab3:Label("Script By : Nothing._lol#4267")

while wait() do
    pcall(function()
        if _G.Farm then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(196, -190, 73)
            game.Players.LocalPlayer.Character.FallDamageClient:Destroy()
        end
        if _G.Anti_AFK then
            local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            print("AFK : ON")
        end)
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