local c = require("...colors")
local cfg = require("...config")

local html = {
    htmlArg = {fg = c.orange},
    htmlBold = {fg = c.orange, bg = c.none, style = "bold"},
    htmlEndTag = {fg = c.fg},
    htmlstyle = {fg = c.blue, bg = c.none, style = "italic"},
    htmlLink = {fg = c.blue, style = "underline"},
    htmlSpecialChar = {fg = c.orange},
    htmlSpecialTagName = {fg = c.blue, style = cfg.bold},
    htmlTag = {fg = c.fg},
    htmlTagN = {fg = c.blue},
    htmlTagName = {fg = c.blue, style = cfg.bold},
    htmlTitle = {fg = c.fg},
    htmlH1 = {fg = c.blue, style = "bold"},
    htmlH2 = {fg = c.blue, style = "bold"},
    htmlH3 = {fg = c.blue, style = "bold"},
    htmlH4 = {fg = c.blue, style = "bold"},
    htmlH5 = {fg = c.blue, style = "bold"}
}

return html
