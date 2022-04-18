vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space><Nop>','',{})
local keymap = vim.api.nvim_set_keymap

-- must haves
keymap('i', 'jk', '<Esc>', {})
keymap('n', '<Leader>h', '0', {})
keymap('n', '<Leader>l', '$',{})
--bufferline
keymap('n', '<C-tab>', ':BufferLineCycleNext<CR>', {})
--filetree
keymap("n", "<Leader>f", ":NvimTreeToggle<CR>", {})
-- transfering to buffers
vim.cmd[[
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
]]
-- telescope
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser",
  { noremap = true }
)
-- telescope filebrowser
vim.api.nvim_set_keymap("n","<Leader>gh",":Telescope file_browser <Enter>",{noremap = true})
-- trouble list
vim.api.nvim_set_keymap("n", "<leader>11", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>12", "<cmd>TroubleClose<cr>",
  {silent = true, noremap = true}
)
-- switching buffers 
keymap("n","<C-tab>",':BufferLineCycleNext<CR>',{})
