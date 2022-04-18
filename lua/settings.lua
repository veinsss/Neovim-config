local cmd = vim.cmd
local exec = vim.api.nvim_exec
local g = vim.g
local opt = vim.opt

--- general
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.completeopt = 'menuone,noselect'
opt.encoding = 'utf-8'
---

--- UI
opt.relativenumber = true
opt.showmatch = true
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme catppuccin]]
opt.completeopt = {"menuone","noselect"}
opt.hlsearch = true
opt.pumheight = 10
opt.cursorline = true
---

-- tabs and indents
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
--

-- highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
--

-- neovim highlight diagnostics
vim.cmd("highlight LspDiagnosticsLineNrWarning guifg=#E5C07B guibg=#4E4942 gui=bold")
vim.cmd("sign define LspDiagnosticsSignWarning texthl=LspDiagnosticsSignWarning numhl=LspDiagnosticsLineNrWarning")
