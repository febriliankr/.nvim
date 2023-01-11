return {

  ["petertriho/nvim-scrollbar"] = {
    config = function()
      require("scrollbar").setup()
    end,
  },
  -- install this package 'nacro90/numb.nvim'
  ["nacro90/numb.nvim"] = {
    config = function()
      require("numb").setup()
    end,
  },
  ["phaazon/hop.nvim"] = {
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  ["github/copilot.vim"] = {},
  ["yamatsum/nvim-cursorline"] = {
    config = function()
      require("nvim-cursorline").setup {
        cursorline = {
          enable = true,
          timeout = 1000,
          number = false,
        },
        cursorword = {
          enable = true,
          min_length = 3,
          hl = { underline = true },
        },
      }
    end,
  },

  ["ray-x/go.nvim"] = {
    config = function()
      require("go").setup()
    end,
  },

  ["Rasukarusan/nvim-select-multi-line"] = {},

  ["mg979/vim-visual-multi"] = {},

  ["ibhagwan/fzf-lua"] = {
    requires = "nvim-tree/nvim-web-devicons",
    config = function() end,
  },
  ["gelguy/wilder.nvim"] = {
    config = function()
      local wilder = require "wilder"
      wilder.setup { modes = { ":", "/", "?" } }
      wilder.set_option(
        "renderer",
        wilder.popupmenu_renderer {
          -- 'single', 'double', 'rounded' or 'solid'
          -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
          highlighter = wilder.basic_highlighter(),
          left = { " ", wilder.popupmenu_devicons() },
          right = { " ", wilder.popupmenu_scrollbar() },
          border = "rounded",
        }
      )
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["Pocco81/TrueZen.nvim"] = {},

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["folke/trouble.nvim"] = {
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },

  ["ahmedkhalf/project.nvim"] = {
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },

  ["simrat39/symbols-outline.nvim"] = {
    config = function()
      require("symbols-outline").setup()
    end,
  },
}
