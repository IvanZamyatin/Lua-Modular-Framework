-- UIController.lua

local UIController = {}

function UIController.new()
    local self = {}

    function self:showMessage(message)
        print("[UI] " .. message)
    end

    function self:showScreen(screenName)
        print("[UI] Showing screen: " .. screenName)
    end

    function self:clear()
        print("[UI] Clearing screen")
    end

    return self
end

return UIController
