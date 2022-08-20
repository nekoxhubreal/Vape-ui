    function Farm_Coins()
    local args = {
                    [1] = 1
                }
                
                game:GetService("ReplicatedStorage").CoinToPlayer:FireServer(unpack(args))
    local A_1 = "Speed"
    local Event = game:GetService("ReplicatedStorage").Remotes.Skill
    Event:FireServer(A_1)
    end	
    
    function Auto_Farm_diamonds()
    local args = {
                    [1] = 1
                }
                
                game:GetService("ReplicatedStorage").CoinToPlayer:FireServer(unpack(args))
    local A_1 = "Speed"
    local Event = game:GetService("ReplicatedStorage").Remotes.Skill
    Event:FireServer(A_1)
    local Event = game:GetService("ReplicatedStorage").Remotes.Sell
    Event:FireServer()
    end
    
    function Buy_Speed_Skill()
    local A_1 = "Speed"
    local Event = game:GetService("ReplicatedStorage").Remotes.BuyAllSkills
    Event:InvokeServer(A_1)
    end
    
    function Buy_Backpack()
        local Event = game:GetService("ReplicatedStorage").Remotes.BuyAllBackpacks
        Event:InvokeServer()
    end

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("Varomine Hub - Coins Hero Simulator [Vape UI]",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Farming")

tab:Toggle("Auto Farm Coins",false, function(t)
    _G.Coins = t
    end)

tab:Toggle("Auto Farm Diamonds",false, function(t)
    _G.Diamonds = t
end)

tab:Toggle("Auto Upgrade Backpack",false, function(t)
    _G.Backpack = t
end)

tab:Toggle("Auto Upgrade Speed skill",false, function(t)
    _G.Speed = t
end)

tab:Label("Speed skill will make your farm faster!")

local tab2 = win:Tab("Settings")

tab2:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)

tab2:Button("Destroy UI", function()
    local ui = game.CoreGui:FindFirstChild("ui")
if ui then
	ui:Destroy()
end
end)

tab2:Slider("Speed Power",0,100,16, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

local tab3 = win:Tab("Credits")

tab3:Label("This Script Create By : Bruh…..#8751")

tab3:Button("Copy", function()
    setclipboard("Bruh…..#8751")
end)

while wait() do 
    pcall(function()
        if _G.Coins then
            Farm_Coins()
        end
        if _G.Diamonds then
            Auto_Farm_diamonds()
        end
        if _G.Speed then
            Buy_Speed_Skill()
        end
        if _G.Backpack then
            Buy_Backpack()
        end
    end)
end