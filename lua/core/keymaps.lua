-- 设置键盘映射 (可以根据需要扩展)
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 文件树快捷键配置
map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

vim.api.nvim_set_keymap('n', '<F1>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<F1>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<F1>', '<Nop>', { noremap = true, silent = true })

-- 设置补全快捷键
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap=true, silent=true })
