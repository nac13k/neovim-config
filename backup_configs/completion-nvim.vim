"""
"" Completion config by Lumbreras
"""
set completeopt=menuone,noinsert,noselect" Use <Tab> and <S-Tab> to navigate through popup menu
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_source_buffer_menu = '[b]'
let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'snippet', 'buffers']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]

"" Maps
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
