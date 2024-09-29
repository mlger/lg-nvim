-- 设置键盘映射 (可以根据需要扩展)
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 补全快捷键配置
map('i', '<C-n>', 'cmp.mapping.select_next_item()', opts)
map('i', '<C-p>', 'cmp.mapping.select_prev_item()', opts)
-- 文件树快捷键配置
map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)


