vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { silent = true, noremap = true }

-- switch case with '`' key
keymap.set("n", "`", "~")
keymap.set("v", "`", "~")


--
--->> 插入模式 <<---
--
keymap.set("i", "jk", "<ESC>")


--
--->> 视觉模式 <<---
--
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '>-2<CR>gv=gv")

--
--->> 正常模式 <<---
--
-- 转到init.lua文件
keymap.set("n", "<leader>rc", ":e /home/mcst/.config/nvim/init.lua<CR>")

-- 窗口
keymap.set("n", "<leader>sl", "<C-w>v")
keymap.set("n", "<leader>sj", "<C-w>s")

-- 切换buffer
keymap.set("n", "<M-n>", ":bnext<CR>")
keymap.set("n", "<M-p>", ":bprevious<CR>")

-- tab
keymap.set("n", "<M-j>", ":tabNext<CR>", opts)
keymap.set("n", "<M-k>", ":tabprevious<CR>", opts)
keymap.set("n", "<M-q>", ":tabclose<CR>", opts)
keymap.set("n", "<M-t>", ":tabnew %<CR>", opts)

-- 取消高亮
keymap.set("n", "<leader><CR>", ":nohl<CR>")

-- 保存，退出
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>Q", ":wqa<CR>")

-- buffer切换
keymap.set("n", "<leader>\\", "<C-^>")

-- 行首行尾移动
keymap.set("n", "W", "0")
keymap.set("n", "E", "$")

-- 删除当前buffer
keymap.set("n", "<leader>D", ":bdelete<CR>")

-- 窗口尺寸
keymap.set("n", "<up>", ":res +5<CR>")
keymap.set("n", "<down>", ":res -5<CR>")
keymap.set("n", "<left>", ":vertical resize-5<CR>")
keymap.set("n", "<right>", ":vertical resize+5<CR>")



--
--->> 插件 <<---
--
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- vim-floaterm
keymap.set("n", "<leader>t", ":FloatermToggle<CR>")
keymap.set("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>")
local commandc = ":FloatermNew! cc % -o %< -Wall -g && ./%<<CR>"
local commandcpp = ":FloatermNew! c++ % -o %< -Wall -g && ./%<<CR>"
local commandgo = ":FloatermNew! go run %<CR>"
keymap.set("n", "<leader>c", commandc)
keymap.set("n", "<leader>C", commandcpp)
keymap.set("n", "<leader>go", commandgo)
keymap.set('t', '<esc>', "<C-\\><C-n>")
keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])

--[[
-- nvim-surround
require("nvim-surround").setup({
        keymaps =       -- Defines plugin keymaps,
        surrounds =     -- Defines surround keys and behavior,
        aliases =       -- Defines aliases,
        highlight =     -- Defines highlight behavior,
        move_cursor =   -- Defines cursor behavior,
    })
keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "ys",
        normal_cur = "yss",
        normal_line = "yS",
        normal_cur_line = "ySS",
        visual = "S",
        visual_line = "gS",
        delete = "ds",
        change = "cs",
    },
--]]

-- 文件大纲
keymap.set("n", "<leader>p", ":SymbolsOutline<CR>")

-- 窗口尺寸聚焦
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts)
