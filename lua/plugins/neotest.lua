return {
  "nvim-neotest/neotest",
  opts = {
    adapters = {
      ["neotest-rust"] = {
        args = { "--no-capture" },
        env = { RUST_BACKTRACE = "1" },
      },
    },
  },
}
