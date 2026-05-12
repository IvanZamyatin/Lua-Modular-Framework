local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Net = {}

local remotesFolder = Instance.new("Folder")
remotesFolder.Name = "Remotes"
remotesFolder.Parent = ReplicatedStorage

function Net.CreateRemote(name)
    local remote = Instance.new("RemoteEvent")
    remote.Name = name
    remote.Parent = remotesFolder
    return remote
end

function Net.GetRemote(name)
    return remotesFolder:WaitForChild(name)
end

return Net