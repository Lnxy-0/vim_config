vim.schedule(function()
  require("config.options")
  require("config.keymaps")
end)

require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
