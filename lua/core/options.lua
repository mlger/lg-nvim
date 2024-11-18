-- 基本选项
vim.opt.number = true               -- 显示行号
vim.opt.termguicolors = true        -- 启用终端真彩色
vim.cmd('syntax on')                -- 启用语法高亮
vim.opt.termguicolors = false

-- 全小写则忽略, 否则区分大小写
vim.opt.smartcase = true            -- 智能大小写
vim.opt.ignorecase = true           -- 忽略大小写

vim.opt.clipboard = 'unnamedplus'   -- 系统剪切板


-- 设置缩进为 2 个空格
vim.opt.tabstop = 2        -- 一个 Tab 等于 2 个空格
vim.opt.shiftwidth = 2     -- 缩进级别为 2 个空格
vim.opt.expandtab = true   -- 用空格代替 Tab

-- -- 设置主题
vim.cmd('colorscheme github_dark')

-- 设置 Floaterm 的背景和前景色，使用 Normal 的颜色
vim.cmd('highlight Floaterm guibg=none guifg=#E6EDF3')

-- 设置 FloatermBorder 的背景色，使用 NormalFloat 的背景色，前景色使用 Normal 的前景色
vim.cmd('highlight FloatermBorder guibg=#30363d guifg=none')

-- 设置 FloatermNC 的背景和前景色，使用 NormalNC 的颜色
vim.cmd('highlight FloatermNC guibg=red guifg=green')

-- 设置 NvimTree 的背景和前景色，使用 Normal 的颜色
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#30363d", fg = "none" })

-- 禁用换行自动注释
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

