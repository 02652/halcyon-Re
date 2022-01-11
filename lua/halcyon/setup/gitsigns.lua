local c = require("...colors")

local gitsigns = {
    GitSignsAdd = {fg = c.green},
    GitSignsChange = {fg = c.blue},
    GitSignsDelete = {fg = c.red},
    GitSignsAddNr = {fg = c.green},
    GitSignsChangeNr = {fg = c.blue},
    GitSignsDeleteNr = {fg = c.red},
    GitSignsAddLn = {fg = c.accent},
    GitSignsChangeLn = {fg = c.green},
    GitSignsDeleteLn = {fg = c.r},
    GitSignsCurrentLineBlame = {fg = c.gray}
}

return gitsigns
