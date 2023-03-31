local colors = require("neon.colors")

local neon = {
    visual = {
        a = {fg = colors.bg0, bg = colors.blue, gui = "bold"},
        b = {fg = colors.cyan, bg = colors.none}
    },
    replace = {
        a = {fg = colors.bg0, bg = colors.disabled, gui = "bold"},
        b = {fg = colors.purple, bg = colors.none}
    },
    inactive = {
        a = {fg = colors.fg, bg = colors.bg3, gui = "bold"},
        b = {fg = colors.fg, bg = colors.bg3},
        c = {fg = colors.fg, bg = colors.none}
    },
    normal = {
        a = {fg = colors.bg0, bg = colors.dark_cyan, gui = "bold"},
        b = {fg = colors.blue, bg = colors.none},
        c = {fg = colors.fg, bg = colors.none}
    },
    insert = {
        a = {fg = colors.bg0, bg = colors.purple, gui = "bold"},
        b = {fg = colors.green, bg = colors.none}
    },
    command = {
        a = {fg = colors.bg0, bg = colors.red, gui = "bold"},
        b = {fg = colors.green, bg = colors.none}
    }
}

require "lualine".setup {
  options = { theme = neon }
}
