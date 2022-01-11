local c = require("...colors")

local ale-vim = {
    ALEError = {fg = c.red},
    ALEWarning = {fg = c.orange},
    ALEInfo = {fg = c.blue},
    ALEErrorSign = {fg = c.red},
    ALEWarningSign = {fg = c.orange},
    ALEInfoSign = {fg = c.blue},
    ALEVirtualTextError = {fg = c.red},
    ALEVirtualTextWarning = {fg = c.yellow},
    ALEVirtualTextInfo = {fg = c.blue},
}

return ale-vim
