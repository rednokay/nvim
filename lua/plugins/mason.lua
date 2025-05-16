return {
  {
    "mason-org/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUpdate" }, -- Lazy-load on commands
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded", -- Optional: Customize UI
        },
      })
    end,
  },
}
