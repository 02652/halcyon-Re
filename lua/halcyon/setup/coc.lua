local c = require("...colors")

local coc = {
    CocErrorSign = {fg = c.red},
    CocWarningSign = {fg = c.orange},
    CocInfoSign = {fg = c.green},
    CocHintSign = {fg = c.blue},
    CocErrorFloat = {fg = c.red},
    CocWarningFloat = {fg = c.orange},
    CocInfoFloat = {fg = c.green},
    CocHintFloat = {fg = c.blue},
    CocDiagnosticsError = {fg = c.red},
    CocDiagnosticsWarning = {fg = c.orange},
    CocDiagnosticsInfo = {fg = c.green},
    CocDiagnosticsHint = {fg = c.blue},
    CocSelectedText = {fg = c.red},
    CocCodeLens = {fg = c.grey},
    CocErrorHighlight = {fg = c.red},
    CocWarningHighlight = {fg = c.orange},
    CocInfoHighlight = {fg = c.green},
    CocHintHighlight = {fg = c.blue},
    CocExplorerIndentLine = {fg = c.grey},
    CocExplorerBufferRoot = {fg = c.blue},
    CocExplorerFileRoot = {fg = c.blue},
    CocExplorerBufferFullPath = {fg = c.grey},
    CocExplorerFileFullPath = {fg = c.grey},
    CocExplorerBufferReadonly = {fg = c.purple},
    CocExplorerBufferModified = {fg = c.purple},
    CocExplorerBufferNameVisible = {fg = c.orange},
    CocExplorerFileReadonly = {fg = c.purple},
    CocExplorerFileModified = {fg = c.purple},
    CocExplorerFileHidden = {fg = c.grey},
    CocExplorerHelpLine = {fg = c.purple}
}

return coc
