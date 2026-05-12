local UI = {}

function UI.FormatAmmo(current, max)
    return tostring(current) .. " / " .. tostring(max)
end

function UI.FormatHealth(health)
    return "HP: " .. tostring(math.floor(health))
end

function UI.Flash(element, duration)
    element.Visible = true

    task.delay(duration, function()
        if element then
            element.Visible = false
        end
    end)
end

return UI