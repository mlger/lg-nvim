-- lua/plugins/lsp/init.lua
-- 加载 mason 和 mason-lspconfig
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "clangd", "pyright", "sumneko_lua" }, -- 自动安装的语言服务器
}

-- 语言服务器配置
local lspconfig = require('lspconfig')

-- 使用 mason 自动安装的 LSP 服务器
require("mason-lspconfig").setup_handlers {
  function (server_name) -- 默认处理
    lspconfig[server_name].setup {
      on_attach = function(client, bufnr)
        -- 配置 LSP 相关快捷键
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
        buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap=true, silent=true })
      end
    }
  end,
}

-- 例如，手动为 clangd 配置特定选项
lspconfig.clangd.setup {
  cmd = { "clangd", "--background-index" },
  on_attach = function(client, bufnr)
    -- 添加一些特定于 C/C++ 的快捷键
  end
}

