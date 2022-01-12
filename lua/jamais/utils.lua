local utils = {}

local function highlight(group, color)
    local style = color.style and "gui=" .. color.style or  "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.bg or ""
    vim.api.nvim_command("hi " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

function utils.is_valid(val)
    if val == 0 or not val then
        return false
    end

    return true
end

function utils.load(theme)
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end
  vim.o.termguicolors = true
  for _, v in pairs(theme) do
    for group, properties in pairs(v) do
      highlight(group, properties)
    end
  end
end

return utils
