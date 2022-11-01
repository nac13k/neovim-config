"""
"" Config for lspsaga
"""
lua << EOF
local saga = require 'lspsaga'
saga.init_lsp_saga {
  -- Icon's order       Error, Warn, Info, Hint
  diagnostic_header = { "😡", "😥", "😤", "😐" },
  finder_request_timeout = 30000 -- request timeout in milliseconds
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>k', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', '<leader>j', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<C-x>', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', 'ca', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)

-- float terminal shortcuts
vim.keymap.set("n", "<C-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
vim.keymap.set("t", "<C-d>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true })
EOF

""" All comands
" -- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
" -- buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
" -- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
" -- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
" -- buf_set_keymap('n', '<leader>hh', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
" -- buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
" -- buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
" -- buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
" -- buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
" -- buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
" -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
" -- buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
" -- buf_set_keymap((bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
" -- buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
" -- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
" -- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
" -- buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
" -- buf_set_keymap('n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]])
