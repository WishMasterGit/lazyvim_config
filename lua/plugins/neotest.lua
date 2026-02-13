return {
  "nvim-neotest/neotest",
  -- opts = {
  --   adapters = {
  --     ["neotest-rust"] = {
  --       args = { "--no-capture" },
  --       env = { RUST_BACKTRACE = "1" },
  --     },
  --   },
  --   status = { virtual_text = true },
  -- },
  opts = {
    -- Can be a list of adapters like what neotest expects,
    -- or a list of adapter names,
    -- or a table of adapter names, mapped to adapter configs.
    -- The adapter will then be automatically loaded with the config.
    adapters = {
      ["rustaceanvim.neotest"] = {
        args = { "--no-capture" },
        env = { RUST_BACKTRACE = "1" },
      },
    },
    -- Example for loading neotest-golang with a custom config
    -- adapters = {
    --   ["neotest-golang"] = {
    --     go_test_args = { "-v", "-race", "-count=1", "-timeout=60s" },
    --     dap_go_enabled = true,
    --   },
    -- },
  },
}
