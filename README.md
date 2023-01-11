# NvChad Customization

Clone this repository to `.config/nvim/lua` directory

`/lua/plugins/configs/treesitter.lua`

```
-- /lua/plugins/configs/treesitter.lua
local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

require("base46").load_highlight "treesitter"

local options = {
  ensure_installed = {
    "lua",
    "javascript",
    "typescript",
    "go",
    "tsx"

  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = {
    enable = true,
  },
}

-- check for any override
options = require("core.utils").load_override(options, "nvim-treesitter/nvim-treesitter")

treesitter.setup(options)
```
