local c = require("...colors")

local lspsaga = {
    DiagnosticError = {fg = c.red},
    DiagnosticWarning = {fg = c.orange},
    DiagnosticInformation = {fg = c.blue},
    DiagnosticHint = {fg = c.blue},
    DiagnosticTruncateLine = {fg = c.fg},
    LspFloatWinNormal = {bg = c.bg},
    LspFloatWinBorder = {fg = c.purple},
    LspSagaBorderTitle = {fg = c.blue},
    LspSagaHoverBorder = {fg = c.grey},
    LspSagaRenameBorder = {fg = c.green},
    LspSagaDefPreviewBorder = {fg = c.green},
    LspSagaCodeActionBorder = {fg = c.blue},
    LspSagaFinderSelection = {fg = c.green},
    LspSagaCodeActionTitle = {fg = c.grey},
    LspSagaCodeActionContent = {fg = c.purple},
    LspSagaSignatureHelpBorder = {fg = c.purple},
    ReferencesCount = {fg = c.purple},
    DefinitionCount = {fg = c.purple},
    DefinitionIcon = {fg = c.blue},
    ReferencesIcon = {fg = c.blue},
    TargetWord = {fg = c.blue},
    LspErrorVirtual = {fg = c.red},
    LspWarningVirtual = {fg = c.orange},
    LspInformationVirtual = {fg = c.green},
    LspHintVirtual = {fg = c.blue},
    LspErrorHighlight = {fg = c.red},
    LspWarningHighlight = {fg = c.orange},
    LspInformationHighlight = {fg = c.green},
    LspHintHighlight = {fg = c.blue},
    lspReference = {fg = c.fg}
}

return lspsaga
