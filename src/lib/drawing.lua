local drawing = {}

local termX, termY = term.getSize()

--- Draws window header
--- @param title string App title
--- @param pallete Pallete Header pallete
function drawing:drawHeader(title, pallete)
    paintutils.drawLine(1, 1, termX, 1, pallete.primary)

    term.setCursorPos(termX, 1)
    term.setTextColor(pallete.text)
    term.write("X")

    local x = (math.floor(termX / 2) - math.floor(title:len() / 2))
    term.setCursorPos(x, 1)
    term.write(title)
end

return drawing