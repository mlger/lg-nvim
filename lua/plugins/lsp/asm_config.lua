local nvim_lsp = require('lspconfig')

nvim_lsp.asm_lsp.setup {
    cmd = { "asm-lsp" },
    filetypes = { "asm", "s", "S" },
    root_dir = function(fname)
        return nvim_lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir()
    end,
    settings = {}
}

