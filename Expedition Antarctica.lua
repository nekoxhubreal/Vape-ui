function UI()
function Win()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11131.7373046875, 391.7999267578125, 116.96823120117188)

local args = {
    [1] = "Add_Time",
    [2] = "SP",
    [3] = {
        [1] = 0,
        [2] = 0,
        [3] = 0
    },
    [4] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Speedrun_Main:FireServer(unpack(args))

local args = {
    [1] = "Add_Time",
    [2] = "Total",
    [3] = {
        [1] = 0,
        [2] = 0,
        [3] = 0
    },
    [4] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Speedrun_Main:FireServer(unpack(args))
end

function Coins()
    wait(0.001)

local args = {
    [1] = "the South Pole",
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Coins_Locations:FireServer(unpack(args))

local args = {
    [1] = 1000,
    [2] = "the South Pole"
}

game:GetService("ReplicatedStorage").Coins_Award:FireServer(unpack(args))
end

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Varomine Hub", "2693023319", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

local tab = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")

tab:Button("Win", "Sometimes not working", function()
    Win()
end)

tab:Toggle("Auto Coins", "Automatically give coins for you!",false,function(t)
    _G.coins = t
end)

local tab2 = win:Tab("Telport", "http://www.roblox.com/asset/?id=6023426915")

tab2:Button("Base camp", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3963.995849609375, -159.0000457763672, -35.56550598144531)
end)

tab2:Button("Camp 1", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1806.3095703125, 105.44756317138672, -137.8595733642578)
end)

tab2:Button("Camp 2", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6024.388671875, 160.9999542236328, -19.07779884338379)
end)

tab2:Button("Camp 3", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9124.322265625, 435.3009338378906, 103.10316467285156)
end)

tab2:Button("South Pole", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11106.72265625, 388.9999084472656, 44.65530014038086)
end)

tab2:Button("Standard Plane", " ", function()
    local args = {
        [1] = "Enter_Plane",
        [2] = "Standard"
    }
    
    game:GetService("ReplicatedStorage").Plane_Main:FireServer(unpack(args))
  end)

local tab3 = win:Tab("Credits", "http://www.roblox.com/asset/?id=6023426915")

tab3:Label("Script By : Nothing._lol#4267")

while wait() do
    pcall(function()
        if _G.coins then
            Coins()
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