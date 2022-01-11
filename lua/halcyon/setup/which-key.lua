local c = require("...colors")

local which = {
    WhichKey = {fg = c.purple, style = "bold"},
    WhichKeyGroup = {fg = c.light_grey, style = "italic"},
    WhichKeyDesc = {fg = c.blue, style = "bold"},
    WhichKeySeperator = {fg = c.green},
    WhichKeyFloating = {bg = c.bg},
    WhichKeyFloat = {bg = c.bg}
}

return which
