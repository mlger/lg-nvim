require("nvim-tree").setup({
  -- 在这里添加你的 nvim-tree 配置
  -- 是否显示 git 状态
  git = {
    enable = true,
    ignore = false,
  }, diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  actions = {
    open_file = {
--      quit_on_open = true,  -- 在打开文件后关闭 NvimTree
    },
  },
})

