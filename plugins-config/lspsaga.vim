"""
"" Config for lspsaga
"""
lua << EOF
local saga = require 'lspsaga'
saga.init_lsp_saga {
  -- Icon's order       Error, Warn, Info, Hint
  diagnostic_header = { "😡", "😥", "😤", "😐" }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>k', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', '<leader>j', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<C-x>', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-x>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'ca', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set("n", "<C-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
vim.keymap.set("t", "<C-d>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true })
EOF
