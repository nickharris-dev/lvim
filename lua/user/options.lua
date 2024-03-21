vim.opt.backup = false
vim.opt.clipboard = "unnamed"
vim.opt.cursorline = false
vim.opt.cursorcolumn = false
vim.opt.fileencoding = "utf-8"
vim.opt.iskeyword:append("-")
vim.opt.mouse = ""
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 2
vim.opt.showmode = false
vim.opt.showtabline = 0
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.updatetime = 300
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.wrap = false

lvim.format_on_save = true

-- Appearance
lvim.colorscheme = "dracula"
lvim.transparent_window = true

-- Builtin Plugin config
-- lvim.builtin.project.active = false -- will disable the project.nvim plugin
