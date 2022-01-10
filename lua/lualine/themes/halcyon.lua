local colors = require("halcyon.colors")

local halcyon = {
    visual = {
        a = {fg = colors.bg, bg = colors.blue, gui = "bold"},
        b = {fg = colors.cyan, bg = colors.bg}
    },
    replace = {
        a = {fg = colors.bg, bg = colors.light_grey, gui = "bold"},
        b = {fg = colors.purple, bg = colors.bg}
    },
    inactive = {
        a = {fg = colors.fg, bg = colors.bg, gui = "bold"},
        b = {fg = colors.fg, bg = colors.bg},
        c = {fg = colors.fg, bg = colors.bg}
    },
    normal = {
        a = {fg = colors.bg, bg = colors.dark_cyan, gui = "bold"},
        b = {fg = colors.blue, bg = colors.bg},
        c = {fg = colors.fg, bg = colors.bg3}
    },
    insert = {
        a = {fg = colors.bg, bg = colors.purple, gui = "bold"},
        b = {fg = colors.green, bg = colors.bg}
    },
    command = {
        a = {fg = colors.bg, bg = colors.red, gui = "bold"},
        b = {fg = colors.green, bg = colors.bg}
    }
}

return halcyon
