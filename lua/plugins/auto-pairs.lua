-- 配置 nvim-autopairs 插件
require('nvim-autopairs').setup({
  check_ts = true,  -- 启用 Treesitter 支持
  enable_check_bracket_line = true,  -- 检查当前行是否已经有闭合括号
  ignored_next_char = "[%w%.]"  -- 忽略数字、字母、点号后的自动补全
})

-- 如果你还使用了 nvim-cmp 来进行补全，你可以添加如下配置
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

