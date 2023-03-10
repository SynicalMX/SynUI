---@class Window
---@field write function Writes text to window
---@field blit function Writes text with colors to window
---@field clear function Clears entire window
---@field clearLine function Clears the current line
---@field getCursorPos function Gets current cursor position.
---@field setCursorPos function Sets the cursor position.
---@field setCursorBlink function Sets the cursor blink
---@field getCursorBlink function Gets the cursor blink
---@field isColor function Checks if computer is able to use colors
---@field isColour function Checks if computer is able to use colours
---@field setTextColor function Sets the text color to write
---@field setTextColour function Sets the text colour to write
---@field setPalleteColor function Sets the current pallete color
---@field setPalleteColour function Sets the current pallete colour
---@field getPalleteColor function Gets the current pallete color
---@field getPalleteColour function Gets the current pallete colour
---@field setBackgroundColor function Sets the current background color
---@field setBackgroundColour function Sets the current background colour
---@field getSize function Gets window size
---@field scroll function Scrolls x amount of pixels
---@field getTextColor function Gets the text color to write
---@field getTextColour function Gets the text colour to write
---@field getBackgroundColor function Gets the current background color
---@field getBackgroundColour function Gets the current background colour
---@field getLine function Gets current line information
---@field setVisible function Sets window visibility
---@field isVisible function Gets window visibility
---@field redraw function Draws the window
---@field restoreCursor function Set the current terminal's cursor to where this window's cursor is.
---@field getPosition function Get the position of the top left corner of this window.
---@field reposition function Reposition or resize the given window.

---@class App
---@field window Window Contents of the app.
---@field title string Title of the app.

---@class Pallete
---@field primary integer Primary color
---@field secondary integer Secondary color
---@field text integer Text color
