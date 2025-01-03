return {
  "RRethy/base16-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("base16-gruvbox-material-dark-hard")
    vim.g.edge_enable_italic = true
    require("base16-colorscheme").setup({
      base00 = "#000000", -- Background
      base01 = "#282828", -- Lighter Background
      base02 = "#3c3836", -- Selection Background
      base03 = "#504945", -- Comments, Invisible
      base04 = "#bdae93", -- Dark Foreground
      base05 = "#d5c4a1", -- Default Foreground
      base06 = "#ebdbb2", -- Light Foreground
      base07 = "#fbf1c7", -- Lightest Foreground
      base08 = "#ea6962", -- Red
      base09 = "#fe8019", -- Orange
      base0A = "#fabd2f", -- Yellow
      base0B = "#a9b665", -- Green
      base0C = "#8ec07c", -- Aqua/Cyan
      base0D = "#83a598", -- Blue
      base0E = "#d3869b", -- Purple
      base0F = "#d65d0e", -- Brown
    })
  end,
}
