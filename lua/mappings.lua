vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Space><Nop>','',{})
local keymap = vim.api.nvim_set_keymap

-- must haves
keymap('i', 'jk', '<Esc>', {})
keymap('n', '<Leader>h', '0', {})
keymap('n', '<Leader>l', '$',{})

--filetree
keymap("n", "<Leader>f", ":NvimTreeToggle<CR>", {})
-- buffers
keymap("n", "<C-]>", ":BufferLineCycleNext<CR>", {})
keymap("n", "<C-w>", ":BufferLinePickClose<CR>", {})
-- transfering to buffers

vim.cmd[[
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
]]
-- telescope
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser",
  { noremap = true }
)
-- telescope filebrowser
vim.api.nvim_set_keymap("n","<Leader>gh",":Telescope file_browser theme=dropdown <Enter>",{noremap = true})
-- trouble list
vim.api.nvim_set_keymap("n", "<leader>11", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>12", "<cmd>TroubleClose<cr>",
  {silent = true, noremap = true}
)
