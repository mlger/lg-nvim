-- 初始化 packer.nvim 插件管理器
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    -- Packer 自我管理
    use 'wbthomason/packer.nvim'

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
    use 'jistr/vim-nerdtree-tabs'


    -- Copilot 插件
    use {
      "github/copilot.vim",
      config = function()
        vim.cmd([[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]])  -- 设置 Copilot 补全快捷键
      end
    }



end)
