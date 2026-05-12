
local Data = {}

Data.Template = {
    Credits = 0,
    Rank = "Visitor",
    Kills = 0,
    Deaths = 0,
}

function Data.CreateProfile()
    local profile = {}

    for key, value in pairs(Data.Template) do
        profile[key] = value
    end

    return profile
end

return Data