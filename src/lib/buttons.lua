local buttons = {}
local button_template = {}

-- Button Template

function button_template:setText(text)
    self.text = text
end

function button_template:getText()
    return self.text
end

function button_template:update(x, y)
    local xmin = self.size.xmin
    local ymax = self.size.ymax
    local xmax = self.size.xmax
    local ymin = self.size.ymin
    
    if xmax >= x and xmin <= x and ymax >= y and ymin <= y then
        self.func()
    end
end

function buttons:create(xmin, ymax, xmax, ymin, func, text, pallete)
    local button = {
        ["size"] = {
            ["xmin"] = xmin,
            ["ymax"] = ymax,
            ["xmax"] = xmax,
            ["ymin"] = ymin
        },
        ["func"] = func,
        ["text"] = text,
        ["pallete"] = pallete
    }

    for k, v in pairs(button_template) do
        button[k] = v
    end

    return button
end

return buttons