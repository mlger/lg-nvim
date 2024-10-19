local original_notify = vim.notify

vim.notify = function(msg, log_level, opts)
  -- 如果消息包含特定的警告文本，则忽略
  if msg:match("multiple different client offset_encodings detected for buffer") then
    return
  end

  -- 否则继续显示其他通知
  original_notify(msg, log_level, opts)
end

