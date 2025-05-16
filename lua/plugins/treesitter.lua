-- Copied from https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation, adapted to file based loading
return {
    {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "query", "html", "rust", "python" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
    }
}
