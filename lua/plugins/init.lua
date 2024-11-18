-- 初始化 packer.nvim 插件管理器
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    -- Packer 自我管理
    use 'wbthomason/packer.nvim'

    -- Themes
    use 'folke/tokyonight.nvim'
    use 'projekt0n/github-nvim-theme'


    git = {
        default_url_format = 'git@github.com:%s'
    }

    -- Mason
    use {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()  -- 确保 Mason 在启动时正确初始化
      end
    }
    
    use {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup()
      end
    }
    
    use {
      "neovim/nvim-lspconfig",
      config = function()
        require('plugins.lsp')  -- 这里加载你的 LSP 配置
      end
    }

  
    -- 自动补全
    use 'hrsh7th/nvim-cmp'                  -- 补全引擎
    use 'hrsh7th/cmp-nvim-lsp'              -- LSP 补全源
    use 'hrsh7th/cmp-buffer'                -- 缓冲区补全源
    use 'hrsh7th/cmp-path'                  -- 文件路径补全
    use 'hrsh7th/cmp-cmdline'               -- 命令行补全
    use 'L3MON4D3/LuaSnip'                  -- 代码片段
    require('plugins.cmp')

    -- 语法高亮
    use 'nvim-treesitter/nvim-treesitter'   -- 语法高亮和代码解析器

    -- 文件树
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- 可选的文件图标插件
        },
        config = function()
            require("plugins.nvimtree")
        end
    }


    -- Copilot 插件
    use {
      "github/copilot.vim",
      config = function()
        vim.cmd([[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]])  -- 设置 Copilot 补全快捷键
      end
    }

    -- 浮动终端
    use 'voldikss/vim-floaterm'


    -- 代码格式化
    use {
      'jose-elias-alvarez/null-ls.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('plugins.null-ls')
      end
    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('plugins.gitsigns')
      end
    }

    -- 括号匹配
    use {
      'windwp/nvim-autopairs',
      config = function()
        require('plugins.auto-pairs')
      end
    }

    -- 注释
    use {
      'numToStr/Comment.nvim',
      config = function()
        require('plugins.comment')
      end
    }

    -- 搜索
    use {
      "kevinhwang91/nvim-hlslens",
      config = function()
        require("scrollbar.handlers.search").setup({
        })
      end,
    }
    -- 滚动条
    use {
      'petertriho/nvim-scrollbar',
      config = function()
        require('hlslens')
        require('gitsigns')
        require('plugins.scrollbar')
      end
    }

    use {
      'linux-cultist/venv-selector.nvim',
      branch = 'regexp',
      config = function()
        require('plugins.venv_selector')
      end
    }

end)

