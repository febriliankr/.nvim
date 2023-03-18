require("copilot").setup {
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = "<M-CR>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  panel = {
    enabled = true,
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.20,
    },
    keymap = {
      open = "<M-p>",
    },
  },
  server_opts_overrides = {
    trace = "verbose",
    settings = {
      advanced = {
        listCount = 3, -- #completions for panel
        inlineSuggestCount = 3, -- #completions for getCompletions
      },
    },
  },
}
