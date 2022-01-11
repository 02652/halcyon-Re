local c = require("...colors")
local cfg = require("...config")

local common = {
    Type = {fg = c.purple},
    StorageClass = {fg = c.yellow},
    Structure = {fg = c.orange},
    Constant = {fg = c.purple},
    Comment = {fg = c.light_grey, bg = c.none, style = cfg.italic_comment},
    Conditional = {fg = c.orange, bg = c.none, style = cfg.italic_keyword},
    Keyword = {fg = c.purple, bg = c.none, style = cfg.italic_keyword},
    Repeat = {fg = c.purple, bg = c.none, style = cfg.italic_keyword},
    Boolean = {fg = c.blue, bg = c.none, style = cfg.italic_boolean},
    Function = {fg = c.yellow, bg = c.none, style = cfg.italic_function .. cfg.bold},
    Identifier = {fg = c.purple, bg = c.none, style = cfg.italic_variable},
    String = {fg = c.green, bg = c.none},
    Character = {fg = c.orange},
    Number = {fg = c.purple},
    Float = {fg = c.purple},
    Statement = {fg = c.purple},
    Label = {fg = c.green},
    Operator = {fg = c.orange},
    Exception = {fg = c.orange},
    PreProc = {fg = c.yellow},
    Include = {fg = c.orange},
    Define = {fg = c.green},
    Macro = {fg = c.orange},
    Typedef = {fg = c.purple},
    PreCondit = {fg = c.orange},
    Special = {fg = c.purple, bg = c.none, style = "italic"},
    SpecialChar = {fg = c.orange},
    Tag = {fg = c.purple},
    Delimiter = {fg = c.green},
    SpecialComment = {fg = c.light_grey},
    Debug = {fg = c.green},
    Underlined = {fg = c.blue, bg = c.none, style = "underline"},
    Ignore = {fg = c.grey},
    Error = {fg = c.red, bg = c.none, style = "bold,underline"},
    Todo = {fg = c.green, bg = c.none, style = "bold,italic"}
}

return common
