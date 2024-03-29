"""
"" Mapping by Lumbreras for native neovim spellcheck
"""

function ToggleSpellCheck()
  if &spell
    execute 'setlocal nospell'
  else
    """ set spell with lang en_us support for cammel case and omit first
    """ spellcapcheck
    execute 'setlocal spell spelllang=en_us spo=camel spellcapcheck=""'
  endif
endfunction

noremap <leader>z :call ToggleSpellCheck()<CR>
