return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/neotest-python",
		"nvim-neotest/neotest-plenary",
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-python")({
					dap = { justMyCode = false },
					-- args = { "--log-level", "DEBUG" },
					-- runner = "pytest",
				}),
				require("neotest-plenary"),
				-- require("neotest-vim-test"),
			},
		})
	end,
	keys = {
		--run the nearest test
		{ "<leader>nt", function() require("neotest").run.run() end },
		--run the current file
		{ "<leader>nf", function() require("neotest").run.run(vim.fn.expand("%")) end },
		--debug the nearest test
		{ "<leader>nd", function() require("neotest").run.run({ strategy = "dap" }) end },
		--tht summary window
		{ "<leader>ns", function() require("neotest").summary.toggle() end },
		--toggle the output panel
		{ "<leader>np", function() require("neotest").output_panel.toggle() end },
		--{ "<leader>Tm", function() require("neotest").summary.marked() end },
	},
}
