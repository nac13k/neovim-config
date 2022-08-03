"" Basic native configuration by Lumbreras
set number
set mouse=a
set numberwidth=1
" set winheight=1
" set sessionoptions+=resize 
"" syntax enable
set showcmd
set ruler
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set showmatch
set hidden
"" Set relative number insterad a line number left line information
set relativenumber 
set laststatus=2
set noshowmode
set cursorline
"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
"" Set softtab to 2 spaces
set sw=2 

"" Remove inecesarie extra files
set nobackup
set noswapfile
set nowrap

"" CMP config
set completeopt=menu,menuone,noselect

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Clipboard system
if has('unnamedplus')
    set clipboard=unnamedplus  " Share X windows clipboard.
else
    set clipboard=unnamed  " Share system clipboard.
endif

"" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

"" Show invisible chars
set listchars=eol:☠,space:⠿,tab:▸␣,trail:~,extends:>,precedes:<,nbsp:█
" set list " Uncomment to set default show invisible
