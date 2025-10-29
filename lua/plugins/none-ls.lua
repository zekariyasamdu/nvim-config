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
				-- linter
				-- require("none-ls.diagnostics.eslint_d"), --js
				null_ls.builtins.diagnostics.eslint,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
