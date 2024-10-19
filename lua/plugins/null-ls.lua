local null_ls = require("null-ls")

-- 注册格式化和其他代码动作
local formatting = null_ls.builtins.formatting

null_ls.setup({
    sources = {
        formatting.prettier,  -- JavaScript, TypeScript, CSS 等格式化工具
        formatting.stylua,    -- Lua 代码格式化工具
        formatting.clang_format,  -- C/C++ 格式化工具
    },
    on_attach = function(client, bufnr)
        if client.resolved_capabilities.document_formatting then
--            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
})

