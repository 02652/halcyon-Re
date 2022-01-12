local utils = require 'halcyon.utils'
local theme = require 'halcyon.highlight'

vim.o.termguicolors = true
vim.g.colors_name = "halcyon-moon"

utils.load(theme)
