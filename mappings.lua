---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>s"] = { "<cmd> w <CR>", "save file" },
    ["<leader>wa"] = { "<cmd> :wa<CR>", "save all - replace from closing buffer" },
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency",
    },
  },
}

M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["<TAB>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["<S-Tab>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<C-x>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

-- more keybinds!
M.trouble = {
  v = {
    ["<leader>fr"] = { "<cmd> :lua require('fzf-lua').registers()<CR>", "find registers" },
  },
  n = {
    -- Journaling
    ["<leader>rd"] = { "<cmd> r!jdate<CR>", "insert journal date" },
    ["<leader>rt"] = { "<cmd> r!date<CR>", "insert date" },

    ["<leader>ff"] = { "<cmd> :lua require('fzf-lua').files()<CR>", "find all" },
    ["<leader>fr"] = { "<cmd> :lua require('fzf-lua').registers()<CR>", "find registers" },
    ["<C-f>"] = { "<cmd> :lua require('fzf-lua').files()<CR>", "find all" },
    ["<leader>fb"] = { "<cmd> Telescope buffers<CR>", "find buffers" },
    ["<leader>fw"] = { "<cmd> :lua require('fzf-lua').live_grep_native()<CR>", "live grep" },
    ["<leader>fs"] = { "<cmd> :lua require('fzf-lua').lsp_document_symbols()<CR>", "Find Document Symbols" },
    ["<leader>fp"] = { "<cmd> :lua require('fzf-lua').grep() <CR>", "grep" },
    ["<leader>rg"] = { "<cmd> :lua require('fzf-lua').grep_project() <CR>", "grep project" },
    ["<leader>fg"] = { "<cmd> :lua require('fzf-lua').git_files() <CR>", "git files" },
    ["<leader>gs"] = { "<cmd> :lua require('fzf-lua').git_status() <cr>", "git status" },

    -- LSP
    ["<leader>fm"] = {
      function()
        vim.cmd "write"
        vim.lsp.buf.format { async = true }

        vim.cmd "write"
      end,
      "format and save buffer",
    },

    -- Golang Tags
    ["gtj"] = { "<cmd> GoAddTag json<cr>", "Add json tag" },
    ["gtd"] = { "<cmd> GoAddTag db<cr>" },
    ["gtx"] = { "<cmd> GoClearTag <cr>" },

    -- TroubleToggle
    ["<leader>x"] = { "<cmd>TroubleToggle<cr>" },
    ["<leader>fl"] = { "<cmd>TroubleToggle loclist<cr>" },
  },
}

return M
