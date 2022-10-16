function Lazarus()
    _G.Execute = true

local Tables = {}

for i,v in next, getreg() do
    if typeof(v) == "table" then
        if v.Ammo then
            table.insert(Tables, v)
        end
    end
end

local function Upload()
    for i,v in next, Tables do
        v.Ammo = 10000
        v.StoredAmmo = 10000
        v.MagSize = 10000
        v.MaxAmmo = 10000
    end
end

while wait(0.1) do
    Tables = {}
   
    for i,v in next, getreg() do
        if typeof(v) == "table" then
            if v.Ammo then
                table.insert(Tables, v)
            end
        end
    end
   
    Upload()
end

end

if game.PlaceId == 443406476 then
    if _G.Execute == true then
        local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "Notification | Varomine Hub", Description = "Varomine Hub | You already Execute this script!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
else
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
ff
Notification:Notify(
    {Title = "Notification | Varomine Hub", Description = "Varomine Hub | Script Loaded! , Script Create By : Bruh…..#8751"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)
Lazarus()
end
end