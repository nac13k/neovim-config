"" Plugin config by Lumbreras

"""
"" It lets Neovim behave more like IDE. To configure each LSP(Lenguage Server
"" Protocol) please read => https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
"""
Plug 'neovim/nvim-lspconfig'
"" Easy instalation for LSP
Plug 'kabouzeid/nvim-lspinstall'
"" Beuatyfull UI for LSP
" Plug 'glepnir/lspsaga.nvim'
" lspsaga parchado
Plug 'rinx/lspsaga.nvim'
"" LightBulb
" Plug 'kosayoda/nvim-lightbulb'
"" Add commong syntax highlight with treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"" Add vim-cool to remove highlight after finish search and press any key to
"" change the nvim mode
Plug 'romainl/vim-cool'
"" Add nvim comment (easy comment)
Plug 'terrortylor/nvim-comment'
"" Add completion to nvim (lua autocompletion)
" Plug 'nvim-lua/completion-nvim'
"" Add buffer as source to completion plugin
" Plug 'steelsojka/completion-buffers'
"" Add cmp to nvim for autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
"" Cmp plugins for ultisnips users.
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
"" Ultisnipets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"" Fuzzy finder wioth telecsope plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"" Icons
Plug 'kyazdani42/nvim-web-devicons'
"" nvim-tree a lua plugin similar to nerd-tree
Plug 'kyazdani42/nvim-tree.lua'
"" nvim-bufferline
Plug 'akinsho/nvim-bufferline.lua'
"" delimitMate add auto close parentheses
Plug 'Raimondi/delimitMate'
"" Status line
Plug 'hoob3rt/lualine.nvim'
"" Toogle terminal
Plug 'caenrique/nvim-toggle-terminal'
"" focus.nvim nicely panes when work with splited buffers
Plug 'beauwilliams/focus.nvim'
"" DBML syntax support
Plug 'jidn/vim-dbml'
"""
"" Git plugins
"""
Plug 'f-person/git-blame.nvim'

"""
"" Themes and ui improves
"""
Plug 'morhetz/gruvbox'

"""
"" Plugins for lang
"""

Plug 'ray-x/go.nvim'
