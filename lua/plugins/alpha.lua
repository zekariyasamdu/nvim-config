return {
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- require("alpha").setup(require("alpha.themes.dashboard").config)
		require("alpha").setup(require("alpha.themes.theta").config)
	end,
}
