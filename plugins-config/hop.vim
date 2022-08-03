"""
"" Add config gor hop a easymotion like
"""

lua << EOF
require'hop'.setup{}
EOF

map <leader>f :HopChar2<CR>
map <leader>\ :HopPattern<CR>
