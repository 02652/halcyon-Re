local c = require("...colors")

local ale = {
    ALEError = {fg = c.red},
    ALEWarning = {fg = c.orange},
    ALEInfo = {fg = c.blue},
    ALEErrorSign = {fg = c.red},
    ALEWarningSign = {fg = c.orange},
    ALEInfoSign = {fg = c.blue},
    ALEVirtualTextError = {fg = c.red},
    ALEVirtualTextWarning = {fg = c.yellow},
    ALEVirtualTextInfo = {fg = c.blue},
    ALEWarning = {fg = c.orange},
    ALEErrorLine = {bg = c.red},
    ALEWarningLine = {bg = c.orange},
    ALEInfoLine = {bg = c.green},
    ALEVirtualTextStyleError = {fg = c.red},
    ALEVirtualTextStyleWarning = {fg = c.orange}
}

return ale
