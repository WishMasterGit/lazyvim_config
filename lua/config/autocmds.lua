-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--[[
This code defines a toggle function for GitHub Copilot in Neovim.
It uses a boolean variable `copilot_enabled` to track the current state.
When `ToggleCopilot()` is called, it enables or disables Copilot accordingly,
prints a message to inform the user, and updates the state variable.
]]
local copilot_enabled = false
vim.cmd("Copilot disable")
function ToggleCopilot()
  if copilot_enabled then
    vim.cmd("Copilot disable")
    print("Copilot disabled")
  else
    vim.cmd("Copilot enable")
    print("Copilot enabled")
  end
  copilot_enabled = not copilot_enabled
end
