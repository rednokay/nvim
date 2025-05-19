-- Commands Ran when Saving
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        -- Save Cursor Position
        local currPos = vim.api.nvim_buf_get_mark(0, '.')

        -- Remove Trailing White space
        vim.cmd([[%s/\s\+$//e]])

        -- Remove Trailing New Lines
        vim.cmd([[%s/\n\+\%$//e]])

        -- Reset Cursor To Stored Position
        local row = math.min(currPos[1], vim.api.nvim_buf_line_count(0))
        local line = vim.api.nvim_buf_get_lines(0, row - 1, row, false)[1] or ""
        local col = math.min(currPos[2] + 1, math.max(1, string.len(line)))
        vim.api.nvim_win_set_cursor(0, {row, col})
    end,
})

-- Do not add comment to new-line
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = vim.api.nvim_create_augroup("FormatOptions", { clear = true }),
  pattern = { "*" },
  callback = function()
    vim.opt_local.fo:remove("o")
    vim.opt_local.fo:remove("r")
  end,
})
