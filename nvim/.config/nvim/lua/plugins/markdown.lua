return {
  "iamcco/markdown-preview.nvim",
  lazy = false,
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,

  config = function()
    -- Set Brave Browser as the default browser
    vim.g.mkdp_browser = "/usr/bin/brave"
  end,
  ft = { "markdown" },
}
