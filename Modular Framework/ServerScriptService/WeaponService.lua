local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Net = require(ReplicatedStorage.Modules.Net)

local ShootRemote = Net.GetRemote("Shoot")

local WeaponService = {}

function WeaponService.Init()
    ShootRemote.OnServerEvent:Connect(function(player, origin, direction)
        print(player.Name .. " fired weapon")

        local ray = Ray.new(origin.Position, direction * 500)

        local part, position = workspace:FindPartOnRay(ray)

        if part then
            print("Hit:", part.Name)
        end
    end)
end

return WeaponService