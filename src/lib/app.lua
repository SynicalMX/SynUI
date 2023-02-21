local drawing = require("/synui/lib/drawing")

local app = {}
local app_template = {}

local termX, termY = term.getSize()

function app_template:draw()
    drawing:drawHeader(self.title, self.pallete)
    self.window.setBackgroundColor(self.pallete.secondary)
    self.window.clear()
end

--- Creates a new App object.
---@param title string
---@return App
function app:create(title, pallete)
    ---@type Window
    local win = window.create(term.current(), 1, 2, termX, termY-1)

    ---@type App
    local _app = app_template

    _app.window = win
    _app.title = title
    _app.pallete = pallete

    return _app
end

return app