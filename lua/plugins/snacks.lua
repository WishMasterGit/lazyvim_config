local function get_weekday()
  return os.date("%A") -- Returns the full weekday name (e.g., "Monday")
end
return {
  "folke/snacks.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    dashboard = {
      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Leet code", action = ":Leet" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        header = [[
██╗    ██╗███╗   ███╗████████╗███████╗
██║    ██║████╗ ████║╚══██╔══╝██╔════╝
██║ █╗ ██║██╔████╔██║   ██║   ███████╗
██║███╗██║██║╚██╔╝██║   ██║   ╚════██║
╚███╔███╔╝██║ ╚═╝ ██║   ██║   ███████║
 ╚══╝╚══╝ ╚═╝     ╚═╝   ╚═╝   ╚══════╝]],
      },
      sections = {
        { section = "header" },
        {
          pane = 2,
          title = get_weekday(),
          -- cmd = "colorscript -e square",
          height = 5,
          padding = 5,
        },
        { section = "keys", gap = 1, padding = 1 },
        { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        {
          pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        { section = "startup" },
      },
    },
  },
}
