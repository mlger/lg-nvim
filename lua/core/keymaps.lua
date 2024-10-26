-- 设置键盘映射 (可以根据需要扩展)
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 设置 leader 键
vim.g.mapleader = ";"

-- 文件树快捷键配置
map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)


vim.api.nvim_set_keymap('n', '<F1>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<F1>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<F1>', '<Nop>', { noremap = true, silent = true })

-- 设置补全快捷键
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap=true, silent=true })

-- 终端模式下按ESC返回正常模式
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
-- 在终端的正常模式下按 ESC 退出浮动终端
vim.cmd([[
  autocmd! TermOpen * lua vim.api.nvim_buf_set_keymap(0, 'n', '<Esc>', ':FloatermToggle<CR>', { noremap = true, silent = true })
]])

-- 浮动终端快捷键配置
-- 普通模式
vim.api.nvim_set_keymap('n', '<C-y>', ':FloatermNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':FloatermToggle<CR>', { noremap = true, silent = true })
-- 终端模式
vim.api.nvim_set_keymap('t', '<C-y>', '<C-\\><C-n>:FloatermNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-p>', '<C-\\><C-n>:FloatermPrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-n>', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })


-- 设置快捷键：Ctrl+Alt+L 进行格式化
-- 在普通模式下绑定 Ctrl+Alt+L 来触发格式化
vim.api.nvim_set_keymap('n', '<C-A-l>', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })
-- 在插入模式下绑定 Ctrl+Alt+L 来触发格式化
vim.api.nvim_set_keymap('i', '<C-A-l>', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })


-- Telescope 快捷键配置
-- 全局搜索
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
-- 文件搜索
vim.api.nvim_set_keymap('n', '<leader>F', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })




-- 绑定 Leader + k 来显示浮动窗口
vim.api.nvim_set_keymap('n', '<Leader>k', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- 注释快捷键配置
-- 注释当前行 (普通模式)
vim.api.nvim_set_keymap('n', '<C-_>', ':lua require("Comment.api").toggle.linewise.current()<CR>', { noremap = true, silent = true })
-- 注释当前行 (插入模式)
vim.api.nvim_set_keymap('i', '<C-_>', '<ESC>:lua require("Comment.api").toggle.linewise.current()<CR>i', { noremap = true, silent = true })
-- 注释选中行 (可视模式)
vim.api.nvim_set_keymap('v', '<C-_>', [[:<C-u>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>]], { noremap = true, silent = true })
-- 块注释选中行 (可视模式)
map('x', '<leader>b', '<ESC><cmd>lua require("Comment.api").toggle.blockwise(vim.fn.visualmode())<CR>', opts)

-- 浮动错误提示
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>', { noremap=true, silent=true })

-- 取消搜索高亮
vim.api.nvim_set_keymap('n', '<leader>ns', ':nohlsearch<CR>', { noremap = true, silent = true })

-- 光标快速跳转
-- Ctrl+j 跳转向下10行
vim.api.nvim_set_keymap('n', '<C-j>', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-j>', '10j', { noremap = true, silent = true })
-- Ctrl+k 跳转向上10行
vim.api.nvim_set_keymap('n', '<C-k>', '10k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-k>', '10k', { noremap = true, silent = true })


