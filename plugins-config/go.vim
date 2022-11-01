"""
"" Add config for go.nvim by Lumbreras
"""

autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
autocmd BufWritePre *.go :silent! lua require('go.format').goimport()

let g:go_debug_mappings = {
      \ '(go-debug-continue)': {'key': 'c', 'arguments': '<nowait>'},
      \ '(go-debug-next)': {'key': 'n', 'arguments': '<nowait>'},
      \ '(go-debug-step)': {'key': 's'},
      \ '(go-debug-print)': {'key': 'p'},
  \}

map <leader>ds :GoDebug<cr>
map <leader>dt :GoDbgStop<cr>
map <leader>b :GoBreakToggle<cr>

lua << EOF
require('go').setup()
require("dapui").setup()
EOF
