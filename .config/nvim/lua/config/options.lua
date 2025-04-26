local opt = vim.opt
vim.cmd("syntax on")
-- 行号
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true
vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#27408B' })

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
vim.g.clipboard = {
    name = 'wsl-clip',
    copy = {
        ['+'] = 'clip.exe',
        ['*'] = 'clip.exe',
    },
    paste = {
        ['+'] = function()
            return vim.fn.systemlist('powershell.exe Get-Clipboard | tr -d "\r"')
        end,
        ['*'] = function()
            return vim.fn.systemlist('powershell.exe Get-Clipboard | tr -d "\r"')
        end,
    },
    cache_enabled = true,
}
if os.getenv('SSH_TTY') then
    vim.g.clipboard = {
        name = 'OSC 52',
        copy = {
            ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
            ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
        },
        paste = {
            ["+"] = function() return vim.split(vim.fn.getreg('"'), '\n') end,
            ["*"] = function() return vim.split(vim.fn.getreg('"'), '\n') end,
        },
    }
end

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
