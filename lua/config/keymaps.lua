-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("i", "<C-\\>", ":Copilot suggest<CR>", { silent = true })

vim.keymap.set(
  "n",
  "<leader>at",
  ":lua ToggleCopilot()<CR>",
  { noremap = true, silent = true, desc = "Toggle Copilot" }
)

-- vim.keymap.set("n", "<leader>at", function()
--   if vim.g.copilot_enabled == 1 then
--     vim.cmd("Copilot disable")
--   else
--     vim.cmd("Copilot enable")
--   end
-- end, { desc = "Toggle Copilot" })
