require("config.lazy")

vim.schedule(function()
  require("config.options")
  require("config.keymaps")
end)

