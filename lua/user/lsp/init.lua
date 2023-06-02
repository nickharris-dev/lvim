local lvim_lsp = require("lvim.lsp")
local ts = require("typescript")
local lspconfig = require("lspconfig")

vim.diagnostic.config({
	virtual_text = false,
})

-- Don't need this
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

local common_on_attach = lvim_lsp.common_on_attach
local common_capabilities = lvim_lsp.common_capabilities()

-- Typescript config using typescript.nvim
ts.setup({
	server = {
		root_dir = require("lspconfig.util").root_pattern(".git"),
		capabilities = common_capabilities,
		on_attach = common_on_attach,
	},
})

lspconfig.eslint.setup({
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
	end,
})

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "shfmt", filetypes = { "sh", "zsh" } },
	{
		command = "prettierd",
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"css",
			"scss",
			"less",
			"html",
			"yaml",
			"markdown",
			"markdown.mdx",
			"graphql",
			"handlebars",
			"json",
		},
	},
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		command = "eslint_d",
		filetypes = {
			"typescript",
			"typescriptreact",
			"javascript",
			"javascriptreact",
			"json",
		},
	},
})

local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
	{
		command = "eslint_d",
		filetypes = {
			"typescript",
			"typescriptreact",
			"javascript",
			"javascriptreact",
			"json",
		},
	},
})

lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
