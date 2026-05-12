local PlayerHandler = require(script.Parent.PlayerHandler)
local WeaponService = require(script.Parent.WeaponService)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Net = require(ReplicatedStorage.Modules.Net)

-- create remotes
Net.CreateRemote("Shoot")

print("Aurora Framework Booting...")

PlayerHandler.Init()
WeaponService.Init()

print("System Online")