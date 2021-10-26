"""
"" Setup Diagnostics Language Server by Lumbreras
"""

lua << EOF
local nvim_lsp = require('lspconfig')
nvim_lsp.diagnosticls.setup {}
EOF
