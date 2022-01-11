local c = require("...colors")
local cfg = require("...config")

local treesitter = {
    TSComment = {fg = c.grey, bg = c.none, style = cfg.italic_comment},
    TSConditional = {fg = c.blue, style = cfg.italic_keyword},
    TSKeyword = {fg = c.blue, style = cfg.italic_keyword},
    TSAnnotation = {fg = c.orange},
    TSRepeat = {fg = c.blue, style = cfg.italic_keyword},
    TSAttribute = {fg = c.blue},
    TSKeywordFunction = {fg = c.blue, style = cfg.italic_keyword},
    TSCharacter = {fg = c.orange},
    TSBoolean = {fg = c.orange, bg = c.none, style = cfg.italic_boolean},
    TSFunction = {fg = c.purple, style = cfg.italic_function .. cfg.bold},
    TSMethod = {fg = c.purple, style = cfg.italic_function},
    TSConstructor = {fg = c.red},
    TSFuncBuiltin = {fg = c.orange, style = cfg.italic_function},
    TSConstant = {fg = c.purple},
    TSVariable = {fg = c.purple, style = cfg.italic_variable},
    TSVariableBuiltin = {fg = c.blue, style = cfg.italic_variable},
    TSConstBuiltin = {fg = c.blue, style = "italic"},
    TSConstMacro = {fg = c.blue, style = "italic"},
    TSException = {fg = c.red},
    TSField = {fg = c.green},
    TSFloat = {fg = c.purple},
    TSFuncMacro = {fg = c.green, style = "bold"},
    TSInclude = {fg = c.red},
    TSKeywordOperator = {fg = c.orange},
    TSLabel = {fg = c.orange},
}

return treesitter
