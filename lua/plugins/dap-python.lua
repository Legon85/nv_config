return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local path = "~/.local/share/nv/mason/packages/debugpy/venv/bin/python"
		require("dap-python").setup(path)

		local map = vim.keymap.set

		map("n", "<leader>dpr", function()
			require("dap-python").test_method()
		end, { desc = "Run DAP Python test method" })
	end,
}
