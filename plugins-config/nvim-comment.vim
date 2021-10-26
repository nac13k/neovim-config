"""
"" Config fog nvim-commentary by Lumbreras
"""
lua << EOF
require('nvim_comment').setup({
 -- Linters prefer comment and line to have a space in between markers
  marker_padding = true,
  -- should comment out empty or whitespace only lines
  comment_empty = true,
  -- Should key mappings be created
  create_mappings = true,
  -- Normal mode mapping left hand side
  line_mapping = nil,
  -- Visual/Operator mapping left hand side
  operator_mapping = nil,
  -- Hook function to call before commenting takes place
  hook = nil
})
EOF