"" Config for Neovim by Lumbreras

"""
"" Load basic and native configuration
"""
source $HOME/.config/nvim/basic.vim

"""
"" Load mappings
"""
source $HOME/.config/nvim/maps.vim

"""
"" Init plug manager
"""
call plug#begin(stdpath('data') . '/plugged')
source $HOME/.config/nvim/plug.vim
call plug#end()

"""
"" Load coloscheme configuration
"""
" source $HOME/.config/nvim/themes-config/gruvbox.vim
source $HOME/.config/nvim/themes-config/molokai.vim
" source $HOME/.config/nvim/themes-config/purify.vim

"""
"" Load macos custom configuration and common macros
"""
source $HOME/.config/nvim/macos.vim

"""
"" Load all configured servers from folder serves
"""
for server in split(glob('$HOME/.config/nvim/servers/*.vim'), '\n')
  exe 'source' server
endfor

"""
"" Load all plugin configuration from plugin-config
"""
for server in split(glob('$HOME/.config/nvim/plugins-config/*.vim'), '\n')
  exe 'source' server
endfor
