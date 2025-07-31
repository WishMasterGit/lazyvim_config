-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChat<CR>", { desc = "Open copilot chat" })
vim.keymap.set("n", "<leader>sB", ":Telescope file_browser path=%:p:h=%:p:h<CR>", { desc = "Browse files" })
