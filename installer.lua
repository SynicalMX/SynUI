term.clear()
term.setCursorPos(1,1)

local URL = "https://raw.githubusercontent.com/SynicalMX/SynUI/master/src/"

local function download(file, path, retry)
    if not retry then
        print("Downloading "..URL..path)
    end
    local http_handle, err = http.get(URL..file)
    if err then
        print("Retrying download...")
        download(file, path, true)
        return
    end

    local file_handle = fs.open(path, "w")
    file_handle.write(http_handle.readAll())
    
    http_handle.close()
    file_handle.close()
end

if fs.exists("/synui/") then
    print("SynUI is already installed!")
    term.write("Check for updates? Y/N: ")

    ---@type string
    local res = read()
    res:upper()

    if res == "Y" then
        local synui = require("/synui")

        local http_handle = http.get("https://raw.githubusercontent.com/SynicalMX/SynUI/master/version")
        local cloud = http_handle.readAll()
        local client = synui.version
        
        if cloud ~= client then
            print("Updating from "..client.."to "..cloud)
            fs.delete("/synui/")

            download("init.lua", "/synui/init.lua")
            download("lib/app.lua", "/synui/lib/app.lua")
            download("lib/drawing.lua", "/synui/lib/drawing.lua")
            download("lib/buttons.lua", "/synui/lib/buttons.lua")

            print("Updated successfully.")
        else
            print("SynUI is up-to-date.")
        end
    else
        print("Canceled.")
    end
else
    download("init.lua", "/synui/init.lua")
    download("lib/app.lua", "/synui/lib/app.lua")
    download("lib/drawing.lua", "/synui/lib/drawing.lua")
    download("lib/buttons.lua", "/synui/lib/buttons.lua")
    
    print("SynUI has been installed.")
end