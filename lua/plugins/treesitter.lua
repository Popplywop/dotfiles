return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ignore_install = {},
        auto_install = true,
        ensure_installed = {
          "c",
          "lua",
          "vim",
          "vimdoc",
          "javascript",
          "html",
          "c_sharp"
        },
        sync_install = false,
        modules = {
          "highlight",
          "incremental_selection",
          "indent",
          -- "rainbow",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    -- Show delimiters in alternating colors
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    -- Show code context (fixing scope lines to the top)
    "nvim-treesitter/nvim-treesitter-context",
  },
}
