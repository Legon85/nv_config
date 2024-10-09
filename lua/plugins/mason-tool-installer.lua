return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"debugpy",
					"black",
					"flake8",
					"isort",
					"prettier",
					"stylua",
				},
			})
		end,
	},
}
