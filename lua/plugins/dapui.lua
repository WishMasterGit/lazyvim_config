return {
  "rcarriga/nvim-dap-ui",
  opts = {
    layouts = {
      {
        elements = {
          { id = "repl", size = 0.25 },
          { id = "breakpoints", size = 0.25 },
          { id = "console", size = 0.5 },
          -- { id = "stacks", size = 0.25 },
          { id = "watches", size = 0.25 },
        },
        size = 50,
        position = "left",
      },
      {
        elements = {
          { id = "scopes", size = 1 },
        },
        size = 30,
        position = "bottom",
      },
    },
  },
}
