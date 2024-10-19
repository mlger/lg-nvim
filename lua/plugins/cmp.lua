local cmp = require("cmp")
local luasnip = require('luasnip')


-- 加载片段文件夹
require("luasnip.loaders.from_vscode").lazy_load()

-- 配置补全引擎
cmp.setup({
  -- 设置补全菜单的最大显示条目数
  performance = {
    max_view_entries = 12,
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- 代码片段引擎
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- 回车确认补全
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },  -- 使用 LSP 进行补全
    { name = 'luasnip' },   -- 使用代码片段补全
  }, {
    { name = 'buffer' },    -- 使用缓冲区中的文本进行补全
  })
})


vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "single",
  
})
