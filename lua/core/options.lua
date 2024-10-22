-- 基本选项
vim.opt.number = true               -- 显示行号
vim.opt.termguicolors = true        -- 启用终端真彩色
vim.cmd('syntax on')                -- 启用语法高亮
vim.opt.termguicolors = false

vim.opt.clipboard = 'unnamedplus'   -- 系统剪切板


-- 设置缩进为 2 个空格
vim.opt.tabstop = 2        -- 一个 Tab 等于 2 个空格
vim.opt.shiftwidth = 2     -- 缩进级别为 2 个空格
vim.opt.expandtab = true   -- 用空格代替 Tab

-- Theme
vim.cmd('colorscheme github_dark')
