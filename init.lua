local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config/options")
require("config/keymaps")

require("lazy").setup({
	spec = {
		-- add lazyvim/lazyvim and import its plugings
		-- { "lazyvim/lazyvim", import = "lazyvim.plugins" }
		-- import/override with your plugins
		{ import = "plugins" }
	},
	defaults = {
		lazy = false,
		version = false,
	},
	install = {
		missing = true,
		colorscheme = { "catppuccin" }
	},
	checker = {
		-- automatically check for plugin updates
		enable = true
	},
	performance = {
		rtp = {
			-- Note for future myself: those were in LazyVim they cannot be bad
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
		      	},
		}
	}
})

