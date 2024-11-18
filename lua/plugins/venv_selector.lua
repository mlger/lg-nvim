require("venv-selector").setup({
    search_venv_managers = true, -- 自动检测虚拟环境工具（如 pipenv、poetry、conda 等）
    search_workspace = true, -- 自动在项目目录中寻找虚拟环境
    fd_binary_name = "fdfind", -- 使用 fd 加速虚拟环境的搜索
})

