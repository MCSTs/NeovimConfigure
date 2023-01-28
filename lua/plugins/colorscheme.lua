-->主题

-->
--[[ 1.tokyonight
-->
require("tokyonight").setup({
    style = "moon", --`storm`, `moon`, or `night` and `day`
    light_style = "day", -- The theme is used when the background is set to light
    transparent = false, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
        comments = { italic = false },
        keywords = { italic = true },
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
    },
    sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
})
]] --
-- vim.cmd [[colorscheme tokyonight-moon]]



-->
--2.catppuccin
-->
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
    },
})
-- ]] --
vim.cmd [[colorscheme catppuccin]]



-->
--[[3.bluloco
-->
require("bluloco").setup({
    style = "auto", -- "auto" | "dark" | "light"
    transparent = false,
    italics = false,
    terminal = vim.fn.has("gui_running") == 1 -- bluoco colors are enabled in gui terminals per default.
})
]] --
-- vim.cmd [[colorscheme bluloco]]



-->
-- 4.sonokai
-->
-- vim.cmd [[colorscheme sonokai]]
