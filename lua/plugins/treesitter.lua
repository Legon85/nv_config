return {
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = { "lua", "python", "html", "javascript", "typescript" },
				auto_install = true,
				highlight = {
					enable = true,
				}
			})
		end
	}
}
