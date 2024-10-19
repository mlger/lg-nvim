require('gitsigns').setup {
--  signs = {
--    add          = {text = '│'},  -- 添加行的标记符号
--    change       = {text = ':'},  -- 更改行的标记符号
--    delete       = {text = '_'},  -- 删除行的标记符号
--    topdelete    = {text = '‾'},  -- 删除最顶部行的标记符号
--    changedelete = {text = '~'},  -- 改动和删除的行标记符号
--  },
  signs = {
    add          = {text = '+'},  -- 添加行使用 '+' 号
    change       = {text = '~'},  -- 修改行使用 '~' 号
    delete       = {text = '-'},  -- 删除行使用 '-' 号
    topdelete    = {text = '^'},  -- 顶部删除使用 '^' 号
    changedelete = {text = '≃'},  -- 修改后删除的行使用 '≃' 号
  },
  numhl = false,  -- 不使用行号高亮，只显示在 signcolumn
  linehl = false, -- 不高亮整行
  watch_gitdir = {
    interval = 1000,  -- 监控 git 目录的变化
  },
  sign_priority = 6, -- 优先级设置
  update_debounce = 200, -- 延迟更新
  status_formatter = nil, -- 使用默认的状态格式
}

