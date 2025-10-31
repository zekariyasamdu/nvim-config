return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- formatter
				null_ls.builtins.formatting.stylua, --lua
				null_ls.builtins.formatting.prettier, --js
				null_ls.builtins.formatting.black, --py
				null_ls.builtins.formatting.isort, --py
				null_ls.builtins.formatting.clang_format, --c++
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
