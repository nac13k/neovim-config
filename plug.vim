"" Plugin config by Lumbreras

"""
"" It lets Neovim behave more like IDE. To configure each LSP(Lenguage Server
"" Protocol) please read => https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
"""
"" Beuatyfull UI for LSP
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
"" Add commong syntax highlight with treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"" Add vim-cool to remove highlight after finish search and press any key to
"" change the nvim mode
Plug 'romainl/vim-cool'
"" Add nvim comment (easy comment)
Plug 'terrortylor/nvim-comment'
"" Add cmp to nvim for autocompletion
Plug 'neovim/nvim-lspconfig'
"" Easy instalation for LSP
Plug 'williamboman/nvim-lsp-installer'
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
Plug 'windwp/nvim-spectre'
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
"" Markdown
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"""
"" Git plugins
"""
Plug 'f-person/git-blame.nvim'

"""
"" Themes and ui improves
"""
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'srcery-colors/srcery-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"""
"" Github Copilot
"""
Plug 'github/copilot.vim'

"""
"" Plugins for lang
"""
Plug 'ray-x/go.nvim'
"" Enable debugger and a better ui
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
" Plug 'maxmellon/vim-jsx-pretty'

"""
"" Navigation plugins
"""
Plug 'phaazon/hop.nvim'
