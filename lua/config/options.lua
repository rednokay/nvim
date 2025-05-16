-- Line Numbers
vim.o.number = true
vim.o.relativenumber = true

-- Highlight Line
vim.o.cursorline = true

-- Tab Settings
vim.o.tabstop = 4		    -- Number of spaces per tab
vim.o.shiftwidth = 4 		-- Number of spaces for each indentation
vim.o.expandtab = true 		-- Convert tabs to spaces
vim.o.smartindent = true	-- Automatically indent new lines

-- Enable Colors
vim.o.termguicolors = true

-- Wrap Lines
vim.o.wrap = true

-- Inline Diagnostics
vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Icon or character before the message
    spacing = 6, -- Space between code and message
    severity = { min = vim.diagnostic.severity.WARN }, -- Show only warnings and errors
  },
  signs = true, -- Keep gutter signs
  underline = true, -- Keep underlines
  update_in_insert = false, -- Don’t update during typing
  severity_sort = true, -- Sort by severity
})
