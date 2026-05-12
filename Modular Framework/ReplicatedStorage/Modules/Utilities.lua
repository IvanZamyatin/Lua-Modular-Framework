local Utilities = {}

function Utilities.PrintTable(tbl, indent)
    indent = indent or 0

    for key, value in pairs(tbl) do
        local formatting = string.rep("  ", indent) .. tostring(key) .. ": "

        if type(value) == "table" then
            print(formatting)
            Utilities.PrintTable(value, indent + 1)
        else
            print(formatting .. tostring(value))
        end
    end
end

function Utilities.Lerp(a, b, t)
    return a + (b - a) * t
end

function Utilities.ShallowCopy(tbl)
    local copy = {}

    for key, value in pairs(tbl) do
        copy[key] = value
    end

    return copy
end

return Utilities