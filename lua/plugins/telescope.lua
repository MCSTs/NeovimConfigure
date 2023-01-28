--> 查找文件, 字符...

local builtin = require('telescope.builtin')
local opts = { silent = true, noremap = true }

-- 当前路径下所有文件 : file
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)

-- 当前文件字符: fuzzy find
vim.keymap.set('n', '<leader>fg', builtin.current_buffer_fuzzy_find, opts)

-- 当前工作目录下实时查找字符串(环境需要ripgrep:rg)
vim.keymap.set('n', '<leader>fG', builtin.live_grep, opts)

-- 帮助文档: help file
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)

-- 寄存器 : register
vim.keymap.set('n', '<leader>fr', builtin.registers, opts)

-- 历史命令 : command
vim.keymap.set('n', '<leader>fc', builtin.command_history, opts)

-- keymaps
vim.keymap.set('n', '<leader>fk', builtin.keymaps, opts)

-- 所有buffer: fuzzy find
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)

-- quickfix: last content
vim.keymap.set('n', '<leader>fq', builtin.quickfix, opts)

-- 拼写建议
vim.keymap.set('n', '<leader>fp', builtin.spell_suggest, opts)
