local drawing = require("/synui/lib/drawing")

local termX, termY = term.getSize()

local app = {}

---@type App
local app_template = {}

function app_template:draw()
    drawing:drawHeader(self.title, self.pallete)
    self.window.setBackgroundColor(self.pallete.secondary)
    self.window.clear()
end

function app_template:setTitle(title)
    self.title = title
    drawing:drawHeader(self.title, self.pallete)
end

function app_template:getTitle()
    return self.title
end

function app_template:setPallete(pallete)
    self.pallete = pallete
    drawing:drawHeader(self.title, self.pallete)
end

function app_template:getPallete()
    return self.pallete
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