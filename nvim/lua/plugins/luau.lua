return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"lopi-py/luau-lsp.nvim",
		},
		config = function(_, opts)
			require("mason").setup(opts)
			local mr = require("mason-registry")
			mr:on("package:install:success", function()
				vim.defer_fn(function()
					require("lazy.core.handler.event").trigger({
						event = "FileType",
						buf = vim.api.nvim_get_current_buf(),
					})
				end, 100)
			end)

			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup_handlers({
				luau_lsp = function()
					require("luau-lsp").setup({
						server = {
							filetypes = { "luau" },
						},
						settings = {},
						types = {
							roblox = true,
						},
					})
				end,
			})
			mason_lspconfig.setup({
				ensure_installed = {
					"luau_lsp",
				},
				automatic_installation = true,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				luau_lsp = {},
			},
			setup = {},
		},
		event = {
			"BufReadPre",
			"BufNewFile",
			"BufEnter",
			"BufUnload",
		},
	},
}
