-- 初始化 packer.nvim 插件管理器
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    -- Packer 自我管理
    use 'wbthomason/packer.nvim'

    git = {
        default_url_format = 'git@github.com:%s'
    }

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

end)

