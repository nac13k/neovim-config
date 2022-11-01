set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'
  local lspkind = require('lspkind')

  local on_attach = function(client, bufnr)
    local function buf_set_keymap(mode, key, cmd)
      vim.api.nvim_buf_set_keymap(bufnr, mode, key, cmd, {noremap = true, silent = true})
    end

    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- **IMPORTANT**: all commands was migrated to lspsaga, see more in lspsava.vim
    vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
  end

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
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
  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
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
