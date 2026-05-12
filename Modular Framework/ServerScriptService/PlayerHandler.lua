local Players = game:GetService("Players")

local PlayerHandler = {}

function PlayerHandler.Init()
    Players.PlayerAdded:Connect(function(player)
        print(player.Name .. " joined Aurora Framework")

        player:SetAttribute("Kills", 0)
        player:SetAttribute("Loaded", true)
    end)
end

return PlayerHandler