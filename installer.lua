local URL = "https://raw.githubusercontent.com/SynicalMX/SynUI/main/src/"

local function download(file, path)
    local http_handle, err = http.get(URL..file)
    if err then
        print("Retrying download for "..path)
        download(file, path)
        return
    end

    local file_handle = fs.open(path, "w")
    file_handle.write(http_handle.readAll())
    
    http_handle.close()
    file_handle.close()
end

download("init.lua", "/synui/init.lua")
download("lib/app.lua", "/synui/lib/app.lua")

print("SynUI has been installed.")