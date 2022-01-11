local c = require("...colors")

local gitgutter = {
    GitGutterAdd = {fg = c.green},
    GitGutterChange = {fg = c.blue},
    GitGutterDelete = {fg = c.red},
    GitGutterChangeDelete = {fg = c.purple},
    GitGutterAddLine = {bg = c.green},
    GitGutterChangeLine = {bg = c.blue},
    GitGutterDeleteLine = {bg = c.red},
    GitGutterChangeDeleteLine = {bg = c.purple},
    GitGutterAddLineNr = {bg = c.green},
    GitGutterChangeLineNr = {bg = c.c.blue},
    GitGutterDeleteLineNr = {bg = c.red},
    GitGutterChangeDeleteLineNr = {bg = c.purple}
}

return gitgutter
