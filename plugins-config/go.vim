"""
"" Add config for go.nvim by Lumbreras
"""

autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
autocmd BufWritePre *.go :silent! lua require('go.format').goimport()

lua << EOF
require('go').setup()
require("dapui").setup()
EOF

let g:go_debug_mappings = {
      \ '(go-debug-continue)': {'key': 'c', 'arguments': '<nowait>'},
      \ '(go-debug-next)': {'key': 'n', 'arguments': '<nowait>'},
      \ '(go-debug-step)': {'key': 's'},
      \ '(go-debug-print)': {'key': 'p'},
  \}

" let b:go_diagnostic_matches = {
"   \ 'fatal': {'fg': '#FF0000', 'bg': '#FFFFFF'},
"   \ 'error': {'fg': '#FF0000', 'bg': '#FFFFFF'},
"   \ 'warning': {'fg': '#FFA500', 'bg': '#FFFFFF'},
"   \ 'suggestion': {'fg': '#FFA500', 'bg': '#FFFFFF'},
"   \ 'hint': {'fg': '#FFA500', 'bg': '#FFFFFF'},
"   \ 'information': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'note': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'log': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'link': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'source': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'match': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'current': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'cursor': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'occurrence': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'selection': {'fg': '#0000FF', 'bg': '#FFFFFF'},
"   \ 'invalid': {'fg': '#FF0000', 'bg': '#FFFFFF'},
"   \ 'disabled': {'fg': '#FF0000', 'bg': '#FFFFFF'},
"   \ 'unresolved': {'fg': '#FF0000', 'bg': '#FFFFFF'},
"   \ 'unreachable': {'fg': '#FF0000', 'bg': '#FFFFFF'},
"   \ 'go-implicit-import': {'fg': '#FF0000', 'bg': '#FFFFFF'
" }

map <leader>ds :GoDebug<cr>
map <leader>dt :GoDbgStop<cr>
map <leader>db :GoBreakToggle<cr>

" -- Format on save
" vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]], false)
" 
" -- Import on save
" vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
