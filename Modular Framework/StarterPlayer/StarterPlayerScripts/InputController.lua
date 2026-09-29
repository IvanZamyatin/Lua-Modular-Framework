local InputController = {}

function InputController.new(uiController)
    local self = {
        ui = uiController
    }

    function self:handleInput(input)
        if input == "up" then
            self.ui:showMessage("Moved up")
        elseif input == "down" then
            self.ui:showMessage("Moved down")
        elseif input == "select" then
            self.ui:showMessage("Selected")
        elseif input == "back" then
            self.ui:showMessage("Going back")
        end
    end

    return self
end

return InputController
