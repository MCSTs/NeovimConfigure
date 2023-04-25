local opt = vim.opt

opt.guicursor = ""
opt.cursorline = true

opt.nu = true
opt.rnu = true

opt.ignorecase = true
opt.smartcase = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.clipboard:append("unnamedplus")

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.hlsearch = false
opt.incsearch = true 

opt.termguicolors = true

opt.scrolloff = 5
opt.signcolumn = "yes"

opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"
