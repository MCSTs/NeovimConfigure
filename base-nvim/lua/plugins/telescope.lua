local tele = require('telescope')
local builtin = require('telescope.builtin')
local keymap = vim.keymap

keymap.set('n', '<leader>ff', builtin.find_files,
    { silent = true, noremap = true, desc = "Find file in workDir" })

keymap.set('n', '<leader>fg', builtin.live_grep,
    { silent = true, noremap = true, desc = "(rg)Find string in workDir" })

keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { silent = true, noremap = true, desc = "(Grep)Find string in workDir" })

keymap.set('n', '<leader>fh', builtin.help_tags,
    { silent = true, noremap = true, desc = "Find help files" })

keymap.set('n', '<leader>fr', builtin.registers,
    { silent = true, noremap = true, desc = "Find register" })

keymap.set('n', '<leader>fc', builtin.command_history,
    { silent = true, noremap = true, desc = "Find history of commands" })

keymap.set('n', '<leader>fk', builtin.keymaps,
    { silent = true, noremap = true, desc = "Find keymaps" })

keymap.set('n', '<leader>fb', builtin.buffers,
    { silent = true, noremap = true, desc = "Find buffer" })

keymap.set('n', '<leader>fq', builtin.quickfix,
    { silent = true, noremap = true, desc = "Find quickfix content" })

keymap.set('n', '<leader>fp', builtin.spell_suggest,
    { silent = true, noremap = true, desc = "Spell suggestion" })

keymap.set('n', '<leader>fe', builtin.vim_options,
    { silent = true, noremap = true, desc = "Select hightlight" })

keymap.set('n', '<leader>fm', builtin.marks,
    { silent = true, noremap = true, desc = "Find marks" })

keymap.set('n', '<leader>gc', builtin.git_commits,
    { silent = true, noremap = true, desc = "List buffer's git commits" })
keymap.set('n', '<leader>gb', builtin.git_branches,
    { silent = true, noremap = true, desc = "List all branches" })
keymap.set('n', '<leader>gs', builtin.git_status,
    { silent = true, noremap = true, desc = "Lists current changes per file" })
tele.setup()
