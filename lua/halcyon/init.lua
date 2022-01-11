local c = require("halcyon.colors")
local utils = require("halcyon.utils")
local cfg = require("halcyon.config")

-- setup
local base = require("setup.base")
local ale-vim = require("setup.ale-vim")
local buffer-line = require("setup.buffer-line")
local coc = require("setup.coc")
local dashboard = require("setup.dashboard")
local easymotion = require("setup.easymotion")
local html = require("setup.html")
local indent-blankline = require("setup.indent-blankline")
local lsp-saga = require("setup.lsp-saga")
local markdown = require("setup.markdown")
local nerdtree = require("setup.nerdtree")
local nvim-tree = require("setup.nvim-tree")
local sneak = require("setup.sneak")
local startify = require("setup.startify")
local syntastic = require("setup.syntastic")
local telescope = require("setup.telescope")
local treesitter = require("setup.treesitter")
local vim-signify = require("setup.vim-signify")
local which-key= require("setup.which-key")

local halcyon = {}


local function set_groups()

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
