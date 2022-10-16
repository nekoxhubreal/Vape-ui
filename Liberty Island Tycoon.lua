function UI()
function Gamepass()
    game:GetService("ReplicatedStorage").RemoteEvents.ProVIPEvent:FireServer()
    game:GetService("ReplicatedStorage").RemoteEvents.VIPEvent:FireServer()
    game:GetService("ReplicatedStorage").RemoteEvents.X2Coins:FireServer()
    game:GetService("ReplicatedStorage").RemoteEvents.X2Gems:FireServer()
    game:GetService("ReplicatedStorage").RemoteEvents.X2Speed:FireServer()
end


local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Varomine Hub", "8317914163", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

local tab = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")

tab:Button("Give all gamepass", "Some gamepass not working.", function()
    Gamepass()
end)

tab:Button("Give all badges", "give only hidden badges.", function()
    local givebadges = {"HiddenBadge1","HiddenBadge2"}
   for i,v in pairs(givebadges) do
    game:GetService("ReplicatedStorage").RemoteEvents.giveBadge2:FireServer(v)
    game:GetService("ReplicatedStorage").RemoteEvents.RollEvent:FireServer()
 end
end)

tab:Button("Redeem all codes", " ", function()
    local codes = {"500","SUMMER","RELEASE"}
  for i,v in pairs(codes) do
  game:GetService("Players").LocalPlayer.PlayerGui.Codes.Frame.Frame.Codes.Redeem:InvokeServer(v)
  end
end)

tab:Toggle("Auto Coin Multiples", "Automatically give coin multiples for you!",false,function(t)
    _G.Auto_Coins = t
end)

local tab2 = win:Tab("Player", "http://www.roblox.com/asset/?id=6023426915")

tab2:Slider("Walkspeed", "Makes your faster.", 16, 100,16,function(t)
    _G.WalkSpeed = t
end)

tab2:Toggle("Toggle WalkSpeed", "Makes your faster.",false,function(t)
    _G.Speed = t
end)

local tab3 = win:Tab("Credits", "http://www.roblox.com/asset/?id=6023426915")

tab3:Label("Script By : Nothing._lol#4267")

while wait() do
    pcall(function()
        if _G.Auto_Coins then
            game:GetService("ReplicatedStorage").RemoteEvents.X2Coins:FireServer()
        end
        if _G.Speed then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.WalkSpeed
        end
        if _G.Speed == false then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
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