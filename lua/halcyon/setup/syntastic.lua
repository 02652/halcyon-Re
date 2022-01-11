local c = require("...colors")

local syntastic = {
    SyntasticError = {fg = c.red},
    SyntasticWarning = {fg = c.yellow},
    SyntasticErrorSign = {fg = c.red},
    SyntasticWarningSign = {fg = c.yellow},
}

return syntastic
