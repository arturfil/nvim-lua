require("lualine").setup {
  options = {
    theme = "nightfox",
    icons_enabled = true,
  },
  sections = {
    lualine_a = {
      {
        "filename",
        path = 1,
      }
    }
  }
}
