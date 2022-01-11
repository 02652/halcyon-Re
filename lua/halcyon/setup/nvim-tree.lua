local c = require("...colors")
local utils = require("...utils").set_transparent

local nvim-tree = {
    NvimTreeRootFolder = {fg = c.blue, style = "italic"},
    NvimTreeNormal = {fg = c.fg, bg = set_transparent(c.bg0)},
    NvimTreeGitDirty = {fg = c.yellow},
    NvimTreeGitNew = {fg = c.green},
    NvimTreeImageFile = {fg = c.purple},
    NvimTreeExecFile = {fg = c.green},
    NvimTreeSpecialFile = {fg = c.yellow, style = "underline"},
    NvimTreeFolderName = {fg = c.blue},
    NvimTreeEmptyFolderName = {fg = c.grey},
    NvimTreeFolderIcon = {fg = c.grey},
    NvimTreeIndentMarker = {fg = c.light_grey},
    LspDiagnosticsError = {fg = c.red},
    LspDiagnosticsWarning = {fg = c.orange},
    LspDiagnosticsInformation = {fg = c.grey},
    LspDiagnosticsHint = {fg = c.blue},
}

return nvim-tree
