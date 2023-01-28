-- 自动安装packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意PackerConpile改成了PackerSync
-- plugins.lua 改成了 plugins-setup.lua, 适应本地文件名字
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
]])


return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    --> 1. 样式 <--
    -- 状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- 启动界面
    use {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    }
    -- Trouble.nvim
    use {
        'folke/trouble.nvim',
        requires = "nvim-tree/nvim-web-devicons",
    }
    -- Noice.nvim
    use({
        "folke/noice.nvim",
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    })
    -- 主题
    use 'folke/tokyonight.nvim'
    use 'sainnhe/sonokai'
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'uloco/bluloco.nvim', requires = { 'rktjmp/lush.nvim' } }
    use "akinsho/bufferline.nvim" -- buffer分割线
    use "lewis6991/gitsigns.nvim" -- 左则git提示
    use "lukas-reineke/indent-blankline.nvim" -- 缩进线


    --> 2.通用 <--
    -- 文档树
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    }
    -- 文件检索
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- 字符快捷包裹
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use 'lewis6991/impatient.nvim' -- 加速neovim
    use "christoomey/vim-tmux-navigator" -- ctl-hjkl窗口定位
    use "nvim-treesitter/nvim-treesitter" -- treesitter语法高亮
    use "nvim-treesitter/nvim-treesitter-refactor"
    use "p00f/nvim-ts-rainbow" -- 配合treesitter，不同括号颜色区分
    use "numToStr/Comment.nvim" -- gcc和gc注释
    use "windwp/nvim-autopairs" -- 自动补全括号
    use 'voldikss/vim-floaterm' -- 浮动终端
    use 'gelguy/wilder.nvim' -- 命令模式补全
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' } -- 折叠
    use 'folke/zen-mode.nvim' -- 专注模式, 中心窗口



    --> 3.LSP, 补全snippets, 管理 <--
    -- nvim-lsp, Mason管理
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }
    -- 自动补全
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/cmp-path" -- 文件路径
    use "ray-x/lsp_signature.nvim" -- 函数参数输入显示信息
    use 'mfussenegger/nvim-dap' -- Debug
    use 'leoluz/nvim-dap-go' -- Debug-Golang
    use 'simrat39/symbols-outline.nvim' -- 文件大纲栏
    use 'rmagatti/goto-preview' -- 函数预览



    if packer_bootstrap then
        require('packer').sync()
    end
end)
