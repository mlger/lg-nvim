require("scrollbar").setup({
    handlers = {
      gitsigns = true,
      search = true,
      hlslens = true,
    },
    handle = {
        color = "#3b4261",  -- 对应 tokyonight.colors().bg_highlight
    },
    marks = {
        Search = { color = "#ff9e64" },
        Error = { color = "#db4b4b" },
        Warn = { color = "#e0af68" },
        Info = { color = "#0db9d7" },
        Hint = { color = "#1abc9c" },
        Misc = { color = "#9d7cd8" },
    }
})

