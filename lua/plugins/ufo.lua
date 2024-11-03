return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	-- opts = {
	-- 	filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
	-- },
	-- config = function(_, opts)
	-- 	vim.api.nvim_create_autocmd("FileType", {
	-- 		group = vim.api.nvim_create_augroup("local_detach_ufo", { clear = true }),
	-- 		pattern = opts.filetype_exclude,
	-- 		callback = function() require("ufo").detach() end,
	-- 	})
	--
	-- 	vim.opt.foldlevelstart = 99
	-- require("ufo").setup(opts)
	config = function()
		local ftMap = {
			vim = "indent",
			python = { "indent" },
			git = "",
		}
		require("ufo").setup({
			open_fold_hl_timeout = 150,
			close_fold_kinds_for_ft = {
				default = { "imports", "comment" },
				json = { "array" },
				c = { "comment", "region" },
			},
			preview = {
				win_config = {
					border = { "", "─", "", "", "", "─", "", "" },
					winhighlight = "Normal:Folded",
					winblend = 0,
				},
				mappings = {
					scrollU = "<C-u>",
					scrollD = "<C-d>",
					jumpTop = "[",
					jumpBot = "]",
				},
			},
			provider_selector = function(bufnr, filetype, buftype)
				-- if you prefer treesitter provider rather than lsp,
				-- return ftMap[filetype] or {'treesitter', 'indent'}
				return ftMap[filetype]

				-- refer to ./doc/example.lua for detail
			end,
		})
		vim.keymap.set("n", "zR", require("ufo").openAllFolds)
		vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
		vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds)
		vim.keymap.set("n", "zm", require("ufo").closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
		vim.keymap.set("n", "K", function()
			local winid = require("ufo").peekFoldedLinesUnderCursor()
			if not winid then
				-- choose one of coc.nvim and nvim lsp
				vim.fn.CocActionAsync("definitionHover") -- coc.nvim
				vim.lsp.buf.hover()
			end
		end)
	end,
}
