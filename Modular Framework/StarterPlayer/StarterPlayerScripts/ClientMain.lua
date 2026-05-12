local ReplicatedStorage = game:GetService("ReplicatedStorage")

local InputController = require(script.Parent.InputController)
local UIController = require(script.Parent.UIController)

UIController.Create()

InputController.Bind("Shoot", function()
    print("PLAYER FIRED")
end)

InputController.Bind("Reload", function()
    print("PLAYER RELOADED")
end)

InputController.Init()

print("Aurora Client Initialized")