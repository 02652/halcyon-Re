local c = require("...colors")

local markdown = {
    markdownH1 = {fg = c.blue, style = "bold"},
    markdownH2 = {fg = c.blue, style = "bold"},
    markdownH3 = {fg = c.blue, style = "bold"},
    markdownH4 = {fg = c.blue, style = "bold"},
    markdownH5 = {fg = c.blue, style = "bold"},
    markdownH6 = {fg = c.blue, style = "bold"},
    markdownHeadingDelimiter = {fg = c.red},
    markdownHeadingRule = {fg = c.grey},
    markdownId = {fg = c.blue},
    markdownIdDeclaration = {fg = c.blue},
    markdownIdDelimiter = {fg = c.blue},
    markdownstyle = {fg = c.blue, bg = c.none, style = "italic"},
    markdownLinkDelimiter = {fg = c.blue},
    markdownLinkText = {fg = c.blue},
    markdownListMarker = {fg = c.red},
    markdownOrderedListMarker = {fg = c.red},
    markdownRule = {fg = c.grey},
    markdownUrl = {fg = c.blue, bg = c.none, style = "underline"},
    markdownBlockquote = {fg = c.grey},
    markdownBold = {fg = c.orange, bg = c.none, style = "bold"},
    markdownCode = {fg = c.purple, bg = c.none},
    markdownCodeBlock = {fg = c.green},
    markdownCodeDelimiter = {fg = c.green}
}

return markdown
