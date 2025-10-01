vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt -- conciseness

-- line numners
opt.relativenumber = true
opt.number = true

opt.insertmode = false
opt.timeout = true
opt.timeoutlen = 500

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping 
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

