local builtin = require('telescope.builtin')


-- 查找文件 : file
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- 当前工作目录下实时查找字符串(环境需要ripgrep:rg)
vim.keymap.set('n', '<leader>fg', builtin.current_buffer_fuzzy_find, {})

-- 当前工作目录下实时查找字符串(环境需要ripgrep:rg)
vim.keymap.set('n', '<leader>fG', builtin.live_grep, {})

-- 查找帮助文档: help file
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- 查找寄存器 : register
vim.keymap.set('n', '<leader>fr', builtin.registers, {})

-- 历史命令 : command
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})

-- keymaps
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
