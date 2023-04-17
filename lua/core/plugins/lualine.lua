local status, lualine = pcall(require, "lualine")
if not status then
    return
end

local lualine_nightfly = require("lualine.themes.nightfly")
local lualine_dracula = require("lualine.themes.dracula")

lualine.setup {
  options = {
    icons_enabled = true,
    theme = lualine_dracula
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch"},
    lualine_c = {"filename", path}
  }
}
