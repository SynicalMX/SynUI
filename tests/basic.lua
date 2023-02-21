local synui = require("init")

local pallete = {
    ["primary"] = colors.blue,
    ["secondary"] = colors.white,
    ["text"] = colors.white
}

local app = synui.app:create("Basic", pallete)
app.window.write("Hello, world!")
