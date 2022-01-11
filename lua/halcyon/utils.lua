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

function utils.update_table(table, ...)
    local arg = {...}

    for i = 1, #arg do
        for k, v in pairs(arg[i]) do
            table[k] = v
        end
    end

    return table
end

function utils.set_transparent(color)
    if not utils.is_valid(vim.g.halcyon_transparent) then
        return color
    end

    return c.none
end


return utils
