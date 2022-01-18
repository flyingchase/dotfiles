local ui = {}
local conf = require("modules.ui.config")

ui["kyazdani42/nvim-web-devicons"] = {opt = false}
ui["sainnhe/edge"] = {opt = false, config = conf.edge}
ui["catppuccin/nvim"] = {
    opt = false,
    as = "catppuccin",
    config = conf.catppuccin
}
ui["hoob3rt/lualine.nvim"] = {
    opt = true,
    after = "lualine-lsp-progress",
    config = conf.lualine
}
ui["arkav/lualine-lsp-progress"] = {opt = true, after = "nvim-gps"}
ui["glepnir/dashboard-nvim"] = {opt = true, event = "BufWinEnter"}
ui["kyazdani42/nvim-tree.lua"] = {
    opt = true,
    cmd = {"NvimTreeToggle", "NvimTreeOpen"},
    config = conf.nvim_tree
}
ui["lewis6991/gitsigns.nvim"] = {
    opt = true,
    event = {"BufRead", "BufNewFile"},
    config = conf.gitsigns,
    requires = {"nvim-lua/plenary.nvim", opt = true}
}
ui["lukas-reineke/indent-blankline.nvim"] = {
    opt = true,
    event = "BufRead",
    config = conf.indent_blankline
}
ui["akinsho/nvim-bufferline.lua"] = {
    opt = true,
    event = "BufRead",
    config = conf.nvim_bufferline
}
ui["dstein64/nvim-scrollview"] = {opt = true, event = "BufRead"}
ui["sainnhe/everforest"] = {opt = false, config = conf.everforest}
ui["sainnhe/sonokai"] = {opt = false, config = conf.sonokai}
ui["yeddaif/neovim-purple"] = {config = conf.neovim_purple, opt = false}
ui["Rigellute/shades-of-purple.vim"] = {
    opt = false,
    config = conf.shades_of_purple
}
return ui
