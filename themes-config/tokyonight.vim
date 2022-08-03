""" Configuration to use tokyonight colorscheme by Lumbreras

""" Theme gruvbox
lua << EOF
  --vim.g.tokyonight_style = "night"
  vim.g.tokyonight_style = "storm"
  --vim.g.tokyonight_style = "day"
  vim.cmd[[colorscheme tokyonight]]
EOF
