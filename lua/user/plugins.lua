lvim.plugins = {
  {
    "Mofiqul/dracula.nvim",
    "nvim-tree/nvim-web-devicons",
    "antosha417/nvim-lsp-file-operations",
    "windwp/nvim-ts-autotag",
    "jose-elias-alvarez/typescript.nvim",
    "nvim-lua/plenary.nvim",
    "rcarriga/nvim-notify",
    "opalmay/vim-smoothie",
    "j-hui/fidget.nvim",
    "NvChad/nvim-colorizer.lua",
    "moll/vim-bbye",
    "ruifm/gitlinker.nvim",
    "folke/zen-mode.nvim",
    "sQVe/sort.nvim"
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "AckslD/nvim-trevJ.lua",
    config = 'require("trevj").setup()',
    init = function()
      vim.keymap.set("n", "<S-j>", function()
        require("trevj").format_at_cursor()
      end)
    end,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      })
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  },

  -- AI
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "op read --account nickharris.1password.com op://Personal/OpenAI/apikey --no-newline",
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
