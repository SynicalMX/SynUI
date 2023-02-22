local synui = require("synui")

local pallete = {
    ["primary"] = colors.blue,
    ["secondary"] = colors.white,
    ["text"] = colors.white
}

local app = synui.app:create("Basic", pallete)
app:draw()
app.window.write("Hello, world!")
