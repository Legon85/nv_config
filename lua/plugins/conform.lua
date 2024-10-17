return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					python = { "isort", "black" },
					rust = { "rustfmt", lsp_format = "fallback" },
					-- Conform will run the first available formatter
					javascript = { "prettierd", "prettier", stop_after_first = true },
					html = { "prettier" },
				},
				formatters = {
					-- Python
					black = {
						prepend_args = {
							"--fast",
							"--line-length",
							"80",
						},
					},
					isort = {
						prepend_args = {
							"--profile",
							"black",
						},
					},
				},
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 500,
					--lsp_fallback = true,
					lsp_format = "fallback",
				},
			})
			--	vim.api.nvim_create_autocmd("BufWritePre", {
			--		pattern = "*",
			--		callback = function(args)
			--			require("conform").format({ bufnr = args.buf })
			--		end,
			--	})
		end,
	},
}
