return {
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",
      processor = "magick_cli",
      integrations = {
        markdown = {
          enabled = true,
          only_render_image_at_cursor = false,
          download_remote_images = true,
          filetypes = { "markdown" },
        },
      },
    },
  },
}
