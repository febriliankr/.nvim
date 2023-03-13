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
    ["gtj"] = { "<cmd> GoAddTag json <cr>", "Add json tag" },
    ["gtd"] = { "<cmd> GoAddTag db<cr>" },
    ["gtb"] = { "<cmd> GoAddTag json db<cr>" },
    ["gtx"] = { "<cmd> GoClearTag <cr>" },

    -- TroubleToggle
    ["<leader>x"] = { "<cmd>TroubleToggle<cr>" },
    ["<leader>fl"] = { "<cmd>TroubleToggle loclist<cr>" },

    -- Buffer
    ["<C-x>"] = {
      function()
        require("core.utils").close_buffer()
      end,
      "close buffer",
    },

    -- Leader g for navigation
    ["<leader>gw"] = { "<cmd>HopWord<cr>" },
    ["<leader>gc"] = { "<cmd>HopChar1<cr>" },
  },
}

return M
