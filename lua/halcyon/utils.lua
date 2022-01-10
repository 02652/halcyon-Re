local utils = {}

function utils.highlight(group, color)
    local style = color.style and "gui=" .. color.style or  "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.bg or ""
    local command = string.format("hi %v %v %v %v", group, style, fg, bg, sp)
    vim.api.nvim_command(command)
end

function utils.is_valid(val)
    if val == 0 or not val then
        return false
    end
    return true
    
end

return utils