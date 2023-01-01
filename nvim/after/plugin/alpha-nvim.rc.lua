local status, alpha = pcall(require, 'alpha')
if (not status) then return end

local dashboard = require('alpha.themes.dashboard')
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}
dashboard.section.buttons.val = {
    dashboard.button("SPC f f", "  > Find file"),
    dashboard.button("SPC f r", "  > Recent files"),
    dashboard.button("SPC f r", "  > Frecency/MRU"),
    dashboard.button("SPC f g", "  > Find word"),
    dashboard.button("e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button("q", "  > Quit NeoVim", ":qa<CR>"),
}
alpha.setup(dashboard.opts)
