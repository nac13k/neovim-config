"""
"" Mappings by Lumbreras
"""

"""
"" Native functions
"""

"" Remap LEADER key to spacebar
let mapleader=' '

"" Fix uppercase typos
" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>
"" Remap switch between panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"" Buffer nav
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>
"
"" Close buffer
noremap <leader>cb :bd<CR>

"""
"" Plugin functions
"""

"" LSPSaga
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

"" vim-commentary
noremap <Leader>/  :CommentToggle<CR>

"" Fuzzy Finder with (popup, plenary and telescope)
" nnoremap <leader>e <cmd>Telescope find_files<cr> replacesd by show lines
" diagnostic
nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>
nnoremap <leader>i :set list!<CR>
