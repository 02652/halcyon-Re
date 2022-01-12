local utils = require("halcyon.utils")

-- setup
local ale = require("setup.ale")
local base = require("setup.base")
local bufferline = require("setup.buffer-line")
local coc = require("setup.coc")
local common = require("setup.common")
local dashboard = require("setup.dashboard")
local easymotion = require("setup.easymotion")
local gitsigns = require('setup.gitsigns')
local html = require("setup.html")
local blankline = require("setup.indent-blankline")
local lspsaga = require("setup.lsp-saga")
local markdown = require("setup.markdown")
local nerdtree = require("setup.nerdtree")
local dap = require("setup.nvim-dap")
local nvimtree = require("setup.nvim-tree")
local sneak = require("setup.sneak")
local startify = require("setup.startify")
local syntastic = require("setup.syntastic")
local telescope = require("setup.telescope")
local treesitter = require("setup.treesitter")
local gitgutter = require("setup.vim-gitgutter")
local signify = require("setup.vim-signify")
local which = require("setup.which-key")

local groups = utils.update_table(
    ale,
    base,
    bufferline,
    coc,
    common,
    dashboard,
    easymotion,
    gitsigns,
    html,
    blankline,
    lspsaga,
    markdown,
    nerdtree,
    dap,
    nvimtree,
    sneak,
    startify,
    syntastic,
    telescope,
    treesitter,
    gitgutter,
    signify,
    which
)

vim.o.termguicolors = true
vim.g.colors_name = "halcyon-re"

utils.load(groups)
