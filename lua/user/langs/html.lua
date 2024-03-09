return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "xml", "html" })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    ft = { "xml", "html" },
    opts = {},
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        xml = { "prettier" },
        html = { "prettier" },
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "prettier" })
    end,
  },
}
