local utils = {}

local function highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""
    local command = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp
    vim.api.nvim_command(command)
end

function utils.is_valid(val)
    if val == 0 or not val then
        return false
    end

    return true
end

function utils.load(theme)
  vim.api.nvim_command("hi clear")
  if vim.fn.exists("syntax_on") then
      vim.api.nvim_command("syntax reset")
  end

  vim.g.colors_name = "jamais"
  vim.o.termguicolors = true

  for _, v in pairs(theme) do
    for group, properties in pairs(v) do
      highlight(group, properties)
    end
  end
end

return utils
