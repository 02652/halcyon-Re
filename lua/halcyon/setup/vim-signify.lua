local c = require("...colors")

local signify = {
    SignifySignAdd = {fg = c.green},
    SignifySignChange = {fg = c.yellow},
    SignifySignDelete = {fg = c.red},
    SignifySignChangeDelete = {fg = c.red},
    SignifyLineAdd = {bg= c.green},
    SignifyLineChange = {bg= c.orange},
    SignifyLineChangeDelete = {bg= c.orange},
    SignifyLineDelete = {bg= c.red}
}

return signify
