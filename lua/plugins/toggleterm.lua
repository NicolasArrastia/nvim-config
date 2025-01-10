return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		open_mapping = [[<C-\>]], -- Map Ctrl+\ to toggle the terminal
		float_opts = {
			border = "curved",
		},
		start_in_insert = true,
		autochdir = true,

		persist_mode = true,
		persist_size = true,

		close_on_exit = false,

		shade_terminals = true,
		shade_factor = -80,
	},
	config = function(_, opts)
		require("toggleterm").setup(opts)
	end,
}
