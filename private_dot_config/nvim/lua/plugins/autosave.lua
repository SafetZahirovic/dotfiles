return {
  "Pocco81/auto-save.nvim",
  lazy = false, -- Load it early for consistent behavior
  opts = {
    -- Disable execution message to avoid clutter, thanks to user feedback on {Link: this GitHub issue https://github.com/LazyVim/LazyVim/issues/2491} [11].
    execution_message = {
      message = function()
        return ""
      end,
    },
    -- Debounce saves by 500ms to avoid saving on every keystroke, as suggested on {Link: this GitHub issue https://github.com/LazyVim/LazyVim/issues/2491} [11].
    debounce_delay = 500,
  },
  keys = {
    -- Add a keymap to toggle AutoSave, useful for LazyVim's UI, based on suggestions from {Link: this GitHub issue https://github.com/LazyVim/LazyVim/issues/2491} [11].
    { "<leader>uv", "<cmd>ASToggle<CR>", desc = "Toggle AutoSave" },
  },
}
