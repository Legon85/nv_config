return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			scope = { enabled = false },
			exclude = {
				filetypes = {
					"dashboard",
					-- "help",
					-- "startify",
					-- "aerial",
					-- "alpha",
					-- "packer",
					-- "neogitstatus",
					"NvimTree",
					"neo-tree",
					-- "Trouble",
				},
				buftypes = {
					"neo-tree",
					-- "nofile",
					-- "terminal",
				},
			},
		})
	end,
}
