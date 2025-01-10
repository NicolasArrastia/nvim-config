return {
	"nvim-tree/nvim-tree.lua",
	requires = { "nvim-tree/nvim-web-devicons", lazy = false },
	config = function()
		require("nvim-tree").setup({
			disable_netrw = true,
			hijack_netrw = true,
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			sort = { sorter = "case_sensitive" },
			renderer = {
				add_trailing = true,
				highlight_git = true,
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
				},
			},
			filters = { dotfiles = true },
			view = {
				width = 50,
			},
		})

		-- Keybind for Sidebar
		vim.api.nvim_set_keymap(
			"n",
			"<leader>e",
			":NvimTreeToggle<CR>",
			{ noremap = true, silent = true, desc = "Open Floating [E]xplorer" }
		)
	end,
}
