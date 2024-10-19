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

-- 浮动终端快捷键配置
-- 普通模式
vim.api.nvim_set_keymap('n', '<C-t>', ':FloatermNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':FloatermPrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':FloatermToggle<CR>', { noremap = true, silent = true })
-- 插入模式
vim.api.nvim_set_keymap('i', '<C-t>', '<Esc>:FloatermNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-p>', '<Esc>:FloatermPrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-n>', '<Esc>:FloatermToggle<CR>', { noremap = true, silent = true })
-- 终端模式
vim.api.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n>:FloatermNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-p>', '<C-\\><C-n>:FloatermPrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-n>', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })


-- 触发 LSP 格式化的函数
local function format_on_demand()
    local clients = vim.lsp.get_active_clients()
    if next(clients) ~= nil then
        vim.lsp.buf.format({ async = true })
    else
        print("No LSP clients attached")
    end
end

-- 在普通模式下绑定 Ctrl+Alt+L 来触发格式化
vim.api.nvim_set_keymap('n', '<C-A-l>', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })
-- 在插入模式下绑定 Ctrl+Alt+L 来触发格式化
vim.api.nvim_set_keymap('i', '<C-A-l>', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })


-- Telescope 快捷键配置
-- 全局搜索
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
-- 文件搜索
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })


