local c = require("halcyon.colors")
local utils = require("halcyon.utils")
local cfg = require("halcyon.config")
local halcyon = {}

local function set_transparent(color)
    if not utils.is_valid(vim.g.halcyon_transparent) then
        return color
    end
    return c.none
end

local function set_groups()

    local groups = {
        -- Base
        Normal = {fg = c.fg, bg = set_transparent(c.bg)},
        SignColumn = {fg = c.blue, bg = c.none},
        EndOfBuffer = {fg = c.iu_grey},
        NormalFloat = {fg = c.fg, bg = c.grey},
        FloatBorder = {fg = c.blue, bg = c.grey},
        ColorColumn = {fg = c.none, bg = c.grey},
        Conceal = {fg = c.blue},
        Cursor = {fg = c.blue, bg = c.none, style = "reverse"},
        CursorIM = {fg = c.blue, bg = c.none, style = "reverse"},
        Directory = {fg = c.yellow, bg = c.none, style = cfg.bold},
        DiffAdd = {fg = c.blue, bg = c.none, style = "reverse"},
        DiffChange = {fg = c.green, bg = c.none, style = "reverse"},
        DiffDelete = {fg = c.red, bg = c.none, style = "reverse"},
        DiffText = {fg = c.red, bg = c.none, style = "reverse"},
        ErrorMsg = {fg = c.red},
        Folded = {fg = c.fg, bg = c.bg},
        FoldColumn = {fg = c.fg, bg = c.none},
        IncSearch = {fg = c.fg},
        LineNr = {fg = c.grey},
        CursorLineNr = {fg = c.light_grey},
        MatchParen = {fg = c.red, style = "underline, bold"},
        ModeMsg = {fg = c.blue, style = cfg.bold},
        MoreMsg = {fg = c.blue, style = cfg.bold},
        NonText = {fg = c.green},
        Pmenu = {fg = c.fg, bg = c.bg},
        PmenuSel = {fg = c.orange, style = "bold"},
        PmenuSbar = {fg = c.orange},
        PmenuThumb = {fg = c.orange},
        Question = {fg = c.red, style = cfg.bold},
        QuickFixLine = {fg = c.blue, bg = c.ui_grey, style = "bold, italic"},
        Search = {bg = c.grey},
        SpecialKey = {fg = c.blue},
        SpellBad = {fg = c.red, bg = c.none, style = "italic, undercurl"},
        SpellCap = {fg = c.blue, bg = c.none, style = "italic, undercurl"},
        SpellLocal = {fg = c.blue, bg = c.none, style = "italic, undercurl"},
        SpellRare = {fg = c.blue, bg = c.none, style = "italic, undercurl"},
        StatusLine = {style = "reverse"},
        StatusLineNC = {style = "reverse"},
        StatusLineTerm = {style = "reverse"},
        StatusLineTermNC = {style = "reverse"},
        TabLineFill = {},
        TablineSel = {fg = c.fg, bg = c.bg},
        Tabline = {fg = c.fg},
        Title = {fg = c.green, bg = c.none, style = cfg.bold},
        Visual = {fg = c.none, bg = c.grey},
        VisualNOS = {fg = c.none, bg = c.grey},
        WarningMsg = {fg = c.red, style = cfg.bold},
        WildMenu = {fg = c.bg, bg = c.blue, style = "bold"},
        CursorLine = {bg = c.grey},
        ToolbarLine = {fg = c.fg, bg = c.bg},
        ToolbarButton = {fg = c.fg, bg = c.none, style = "bold"},
        NormalMode = {fg = c.blue, bg = c.none, style = "reverse"},
        InsertMode = {fg = c.green, bg = c.none, style = "reverse"},
        ReplaceMode = {fg = c.red, bg = c.none, style = "reverse"},
        VisualMode = {fg = c.blue, bg = c.none, style = "reverse"},
        VertSplit = {fg = c.bg, bg = c.grey},
        CommandMode = {fg = c.grey, bg = c.none, style = "reverse"},
        Warnings = {fg = c.orange},
        healthError = {fg = c.red},
        healthSuccess = {fg = c.green},
        healthWarning = {fg = c.orange},

        -- Common
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
        Todo = {fg = c.green, bg = c.none, style = "bold,italic"},

        -- html
        htmlArg = {fg = c.orange},
        htmlBold = {fg = c.orange, bg = c.none, style = "bold"},
        htmlEndTag = {fg = c.fg},
        htmlstyle = {fg = c.blue, bg = c.none, style = "italic"},
        htmlLink = {fg = c.blue, style = "underline"},
        htmlSpecialChar = {fg = c.orange},
        htmlSpecialTagName = {fg = c.blue, style = cfg.bold},
        htmlTag = {fg = c.fg},
        htmlTagN = {fg = c.blue},
        htmlTagName = {fg = c.blue, style = cfg.bold},
        htmlTitle = {fg = c.fg},
        htmlH1 = {fg = c.blue, style = "bold"},
        htmlH2 = {fg = c.blue, style = "bold"},
        htmlH3 = {fg = c.blue, style = "bold"},
        htmlH4 = {fg = c.blue, style = "bold"},
        htmlH5 = {fg = c.blue, style = "bold"},
        -- Markdown
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
        markdownCodeDelimiter = {fg = c.green},

        -- Dashboard
        DashboardShortCut = {fg = c.red},
        DashboardHeader = {fg = c.purple},
        DashboardCenter = {fg = c.blue},
        DashboardFooter = {fg = c.green, style = "italic"},

        -- TreeSitter highlight groups
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

     -- vim-signify
        SignifySignAdd = {fg = c.green},
        SignifySignChange = {fg = c.yellow},
        SignifySignDelete = {fg = c.red},

        -- Syntastic
        SyntasticError = {fg = c.red},
        SyntasticWarning = {fg = c.yellow},
        SyntasticErrorSign = {fg = c.red},
        SyntasticWarningSign = {fg = c.yellow},

        -- Telescope
        TelescopePromptBorder = {fg = c.green},
        TelescopeResultsBorder = {fg = c.blue},
        TelescopePreviewBorder = {fg = c.purple},

        -- Nerdtree
        NERDTreeDir = {fg = c.purple},
        NERDTreeDirSlash = {fg = c.blue},
        NERDTreeOpenable = {fg = c.orange},
        NERDTreeClosable = {fg = c.orange},
        NERDTreeFile = {fg = c.blue},
        NERDTreeExecFile = {fg = c.green},
        NERDTreeUp = {fg = c.grey},
        NERDTreeCWD = {fg = c.green},
        NERDTreeHelp = {fg = c.grey},
        NERDTreeToggleOn = {fg = c.green},
        NERDTreeToggleOff = {fg = c.red},

        -- NvimTree
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

        -- Ale-vim
        ALEError = {fg = c.red},
        ALEWarning = {fg = c.orange},
        ALEInfo = {fg = c.blue},
        ALEErrorSign = {fg = c.red},
        ALEWarningSign = {fg = c.orange},
        ALEInfoSign = {fg = c.blue},
        ALEVirtualTextError = {fg = c.red},
        ALEVirtualTextWarning = {fg = c.yellow},
        ALEVirtualTextInfo = {fg = c.blue},

        -- WhichKey
        WhichKey = {fg = c.purple, style = "bold"},
        WhichKeyGroup = {fg = c.light_grey, style = "italic"},
        WhichKeyDesc = {fg = c.blue, style = "bold"},
        WhichKeySeperator = {fg = c.green},
        WhichKeyFloating = {bg = c.bg},
        WhichKeyFloat = {bg = c.bg},

        -- LspSaga
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

        -- BufferLine
        BufferLineIndicatorSelected = {fg = c.green},
        BufferLineFill = {bg = c.bg},

        -- Sneak
        Sneak = {fg = c.bg0, bg = c.green},
        SneakScope = {bg = c.bg},

        -- Indent Blankline
        IndentBlanklineChar = {fg = c.purple},
        IndentBlanklineContextChar = {fg = c.blue},

        -- Nvim dap
        DapBreakpoint = {fg = c.red},
        DapStopped = {fg = c.green},

        -- Startify
        StartifyNumber = {fg = c.purple},
        StartifySelect = {fg = c.green},
        StartifyBracket = {fg = c.grey},
        StartifySpecial = {fg = c.blue},
        StartifyVar = {fg = c.blue},
        StartifyPath = {fg = c.blue},
        StartifyFile = {fg = c.green},
        StartifySlash = {fg = c.purple},
        StartifyHeader = {fg = c.purple},
        StartifySection = {fg = c.red},
        StartifyFooter = {fg = c.green},

        -- EasyMotion
        EasyMotionTarget = {fg = c.red, bg = c.none, style = "bold"},
        EasyMotionTarget2First = {fg = c.red, bg = c.none, style = "bold"},
        EasyMotionTarget2Second = {fg = c.red, bg = c.none, style = "bold"},

        -- CoC
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

    local overrides = vim.g.halcyon_overrides
    if overrides then
        vim.tbl_extend("force", groups, overrides)
    end

    for group, parameters in pairs(groups) do
        utils.highlight(group, parameters)
    end

end

function halcyon.colorscheme()
    vim.api.nvim_command("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "halcyon-re"

    set_groups()
end

return halcyon
