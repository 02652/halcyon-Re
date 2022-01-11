local c = require("...colors")

local syntastic = {
    SyntasticError = {fg = c.red},
    SyntasticWarning = {fg = c.yellow},
    SyntasticErrorSign = {fg = c.red},
    SyntasticWarningSign = {fg = c.yellow},
    SyntasticErrorLine = {fg = c.red},
    SyntasticWarningLine = {fg = c.orange}
}

return syntastic
