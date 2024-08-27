vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

--Line numbers
vim.wo.number = true

-- Custom kemaps:

-- toggle term -> ctrl + t openning terminal / ctrl + shift + t toggle terminal
vim.keymap.set('n','<C-t>',':ToggleTerm direction=horizontal size=10<CR>')
vim.keymap.set('n','<C-S-t>',':ToggleTerm<CR>')

-- definition and declaration -> gd definition / gD declaration
vim.api.nvim_set_keymap('n',"gD","<cmd>lua vim.lsp.buf.declaration()<CR>", {noremap = true , silent = true} )
vim.api.nvim_set_keymap('n',"gd","<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true , silent = true} )
