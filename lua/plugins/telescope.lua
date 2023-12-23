return {
  'nvim-telescope/telescope.nvim'
  cmd = "Telescope",
  version = false
  dependencies = {
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        enabled = vim.fn.executable("make") == 1,
        config = function()
          Util.on_load("telescope.nvim", function()
            require("telescope").load_extension("fzf")
          end)
        end,
      },
  }
}
