set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'
  local lspkind = require('lspkind')

  local on_attach = function(client, bufnr)
    local function buf_set_keymap(mode, key, cmd)
      vim.api.nvim_buf_set_keymap(bufnr, mode, key, cmd, {noremap = true, silent = true})
    end
    -- local opts = { noremap = true, silent = true }

    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
    buf_set_keymap('n', '<leader>hh', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
    -- buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    -- buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    -- buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    -- buf_set_keymap((bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
    buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
    buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
    buf_set_keymap('n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]])

    vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
  end

  cmp.setup({
    snippet = {
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<C-y>'] = cmp.config.disable, -- If you want to remove the default `<C-y>` mapping, You can specify `cmp.config.disable` value.
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
    },
    formatting = {
      format = lspkind.cmp_format({with_text = false, maxwidth = 50})
      },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ultisnips' }, -- For ultisnips users.
    }, {
      -- { name = 'buffer' },
    })
  })

  local lsp_installer = require("nvim-lsp-installer")
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  lsp_installer.on_server_ready(function(server)
    local opts = {
      capabilities = capabilities,
      on_attach = on_attach,
      }

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
    server:setup(opts)
  end)


  -- local servers = require'lspinstall'.installed_servers()
  -- local servers = { 'solargraph', 'angularls', 'eslint', 'tsserver', 'vimls', 'gopls', 'graphql', 'jsonls', 'dockerls', 'bashls', 'html', 'sumneko_lua', 'pyright', 'sqlls', }
  local servers = { 'solargraph', 'angularls', 'eslint', 'vimls', 'gopls', 'graphql', 'jsonls', 'dockerls', 'bashls', 'html', 'pyright', 'sqlls', }

  local lsp_installer_servers = require'nvim-lsp-installer.servers'

  for _, server_name in ipairs(servers) do
    local ok, server = lsp_installer_servers.get_server(server_name)
    if ok then
      if not server:is_installed() then
        server:install()
      end
    end
  end
EOF

  " require'lspinstall'.setup() -- important
  " local ok, rust_analyzer = lsp_installer_servers.get_server("rust_analyzer")
  " if ok then
  "   if not rust_analyzer:is_installed() then
  "     rust_analyzer:install()
  "   end
  " end
  " for _, server in pairs(servers) do
  "   require('lspconfig')[server].setup {
  "     capabilities = capabilities,
  "     on_attach = on_attach,
  "     }
  " end
