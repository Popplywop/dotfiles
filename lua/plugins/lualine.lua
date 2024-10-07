return {
  {
    -- status line enhancements
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "vscode",
          icons_enabled = true,
        },
      })
    end,
  },
}
