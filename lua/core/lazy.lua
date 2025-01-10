-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Helper to load all plugins from `plugins` folder
local function load_plugins()
	local plugins = {}
	local plugin_path = vim.fn.stdpath("config") .. "/lua/plugins/"
	for _, file in ipairs(vim.fn.readdir(plugin_path)) do
		local plugin = require("plugins." .. file:match("^(.*)%.lua$"))
		table.insert(plugins, plugin)
	end
	return plugins
end

-- Setup Lazy.nvim
require("lazy").setup(load_plugins(), {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
