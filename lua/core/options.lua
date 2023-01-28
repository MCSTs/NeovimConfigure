local opt = vim.opt

-- basicsinit
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
opt.number         = true
opt.relativenumber = true
opt.termguicolors  = true
opt.shiftround     = true
opt.updatetime     = 100
opt.cursorline     = true
if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end

-- tabs
opt.autoindent  = true
opt.tabstop     = 4
opt.shiftwidth  = 4
opt.softtabstop = 4
opt.expandtab   = true
opt.autowrite   = false
opt.wrap        = false


-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 预留行列
vim.o.scrolloff = 5
vim.o.sidescrolloff = 12

-- 右侧参考线
vim.opt.colorcolumn = "80"

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- 补全最多显示10行
vim.o.pumheight = 10


-- 外观
opt.termguicolors = true
vim.o.termguicolors = true
vim.o.background = "dark"
-- 显示左侧图标指示列
opt.signcolumn = "yes"
