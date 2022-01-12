local c = require("halcyon.colors")
local utils = {}

local function highlight(group, color)
    local style = color.style and "gui=" .. color.style or  "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.bg or ""
    local command = string.format("highlight %v %v %v %v", group, style, fg, bg, sp)
    vim.api.nvim_command(command)
end

function utils.is_valid(val)
    if val == 0 or not val then
        return false
    end

    return true
end

function utils.update_table(...)
    local groups = {}
    local arg = {...}

    for i = 1, #arg do
        for k, v in pairs(arg[i]) do
            groups[k] = v
        end
    end

    return groups
end

function utils.set_transparent(color)
    if not utils.is_valid(vim.g.halcyon_transparent) then
        return color
    end

    return c.none
end

function utils.load(g)
    vim.api.nvim_command("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end

    for group, parameters in pairs(g) do
        highlight(group, parameters)
    end
end

return utils
