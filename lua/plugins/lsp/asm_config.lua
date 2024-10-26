local nvim_lsp = require('lspconfig')

nvim_lsp.asm_lsp.setup {
    cmd = { "asm-lsp" },
    filetypes = { "asm", "s", "S" },
    root_dir = function(fname)
        return nvim_lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir()
    end,
    settings = {}
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "asm", "s" },
  callback = function()
    vim.bo.autoindent = true    -- 开启自动缩进（延续上一行）
    vim.bo.smartindent = false  -- 关闭智能缩进
    vim.bo.cindent = false      -- 关闭 C 风格缩进
  end
})

