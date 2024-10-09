local lsp_zero = require('lsp-zero')
local lspconfig = require("lspconfig")
local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()
local cmp_format = lsp_zero.cmp_format({ details = true })

require("mason").setup()
require("mason-lspconfig").setup()

lspconfig.lua_ls.setup {}
lspconfig.rust_analyzer.setup {}

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
	},
	ensure_installed = { 'lua_ls', 'rust_analyzer' },
	handlers = {
		function(server_name)
			lspconfig[server_name].setup({})
		end,
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		['<Tab>'] = cmp_action.tab_complete(),
		['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
	}),
	formatting = cmp_format,
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
})
