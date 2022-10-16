function UI()
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

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Varomine Hub", "5827078246", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

local tab = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")

tab:Toggle("Auto Farm Coins"," ",false, function(t)
    _G.Coins = t
    end)

tab:Toggle("Auto Farm Diamonds"," ",false, function(t)
    _G.Diamonds = t
end)

tab:Toggle("Auto Upgrade Backpack"," ",false, function(t)
    _G.Backpack = t
end)

tab:Toggle("Auto Upgrade Speed skill"," ",false, function(t)
    _G.Speed = t
end)

tab:Label("Speed skill will make your farm faster!")

local tab3 = win:Tab("Credits", "http://www.roblox.com/asset/?id=6023426915")

tab3:Label("Script By : Nothing._lol#4267")

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
end

local ui = game.CoreGui:FindFirstChild("FluxLib")

if ui then
	ui:Destroy()
    wait(0.1)
    UI()
else
    UI()
end