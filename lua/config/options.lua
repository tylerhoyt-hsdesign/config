---------------------------------------------------------
--- 1. FAST REDRAW / INPUT LATENCY
---------------------------------------------------------
vim.opt.lazyredraw = true
vim.opt.ttyfast = true
vim.opt.updatetime = 200
vim.opt.redrawtime = 10000

---------------------------------------------------------
--- 2. MEMORY & FILE-I/O
---------------------------------------------------------
vim.opt.viminfo = ""
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.undolevels = 10000

---------------------------------------------------------
--- 3. SYNTAX / HIGHLIGHT THROTTLE
---------------------------------------------------------
vim.g.syntax_on = true
vim.opt.synmaxcol = 300
vim.opt.re = 0
vim.opt.signcolumn = "number"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

---------------------------------------------------------
--- 4. SCROLLING & UI RESPONSIVENESS
---------------------------------------------------------
vim.opt.scrolloff = 5
vim.opt.jumpoptions = "stack"
vim.opt.splitkeep = "screen"

---------------------------------------------------------
--- 5. SEARCH & SUB
---------------------------------------------------------
vim.opt.inccommand = "nosplit"
vim.opt.gdefault = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

---------------------------------------------------------
--- 6. TEXT FORMATTING / WRAP / INDENT
---------------------------------------------------------
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true

---------------------------------------------------------
--- 7. FLOATING PERFORMANCE (Neovim >= 0.9)
---------------------------------------------------------
vim.opt.mousemodel = "extend"
vim.opt.termguicolors = true
