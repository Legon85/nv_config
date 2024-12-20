return {
	{
		"nvim-neotest/nvim-nio",
	},

	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()

			local map = vim.keymap.set
			map("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", { desc = "Toggle DAP UI" })

			dap.listeners.after.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.after.launch.dapui_config = function()
				dapui.open()
			end
			--	dap.listeners.before.event_terminated.dapui_config = function()
			--		dapui.close()
			--	end
			--	dap.listeners.before.event_exited.dapui_config = function()
			--		dapui.close()
			--	end
		end,
	},
}
