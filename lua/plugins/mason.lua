return {
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUpdate" }, -- Lazy-load on commands
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded", -- Optional: Customize UI
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      -- Configure clangd for C/C++ support
      vim.lsp.config('clangd', {
        cmd = { "clangd", "--background-index" }, -- Optional: Enable background indexing
        filetypes = { "c", "cpp", "objc", "objcpp" }, -- Ensure it works for C files
            }
      )
    end,
  },
}
