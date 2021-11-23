-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/qlzhou/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/qlzhou/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/qlzhou/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/qlzhou/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/qlzhou/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["accelerated-jk"] = {
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/accelerated-jk"
  },
  ["asyncrun.vim"] = {
    commands = { "AsyncRun", "AsyncStop" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/asyncrun.vim"
  },
  ["asynctasks.vim"] = {
    commands = { "AsyncTask", "AsyncTaskMacro", "AsyncTaskList", "AsyncTaskEdit" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/asynctasks.vim"
  },
  ["cmp-buffer"] = {
    after_files = { "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp"
  },
  ["cmp-nvim-tags"] = {
    after_files = { "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-nvim-tags/after/plugin/cmp_nvim_tags.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-nvim-tags"
  },
  ["cmp-path"] = {
    after_files = { "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-spell"
  },
  ["cmp-vsnip"] = {
    after_files = { "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.vim" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    config = { 'require("plugin-config.dashboard")' },
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["editorconfig-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/editorconfig-vim"
  },
  ["emmet-vim"] = {
    config = { "\27LJ\2\nï\1\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0eautocmd FileType html,css,javascript,javascriptreact,vue,typescript,typescriptreact EmmetInstall\17nvim_command\bapi\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  ["formatter.nvim"] = {
    commands = { "Format" },
    config = { 'require("plugin-config.formatter")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/formatter.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { 'require("eviline")' },
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("plugin-config.gitsigns")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    commands = { "Glow" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/glow.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("indent_blankline")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/lightspeed.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { 'require("plugin-config.bufferline")' },
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-tags", "cmp-path", "cmp-spell", "cmp-vsnip", "cmp-buffer", "cmp-nvim-lsp", "vim-vsnip-integ", "vim-vsnip" },
    config = { 'require("plugin-config.nvim-compe")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { 'require("plugin-config.nvim-colorizer")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\nß\1\0\0\4\0\b\0\0146\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\5Ä6\0\5\0'\2\6\0B\0\2\0029\0\a\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequire\bvue\rfiletype\24nvim_buf_get_option\bapi\bvimO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0" },
    keys = { { "", "gc" }, { "", "gcc" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("plugin-config.lsp")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("plugin-config.nvim-tree")' },
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-rainbow", "nvim-ts-context-commentstring", "nvim-treesitter-textobjects" },
    config = { 'require("plugin-config.treesitter")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { 'require("plugin-config.telescope")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["vim-cursorword"] = {
    config = { 'require("plugin-config.vim-cursorword")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-cursorword"
  },
  ["vim-dadbod"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    after_files = { "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-dadbod-completion/after/plugin/vim_dadbod_completion.lua", "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-dadbod-completion/after/plugin/vim_dadbod_completion.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    commands = { "DBUIToggle", "DBUIAddConnection", "DBUI", "DBUIFindBuffer", "DBUIRenameBuffer" },
    config = { 'require("plugin-config.dadod")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-dadbod-ui"
  },
  ["vim-operator-surround"] = {
    config = { 'require("plugin-config.surround")' },
    keys = { { "v", "sa" }, { "v", "sr" }, { "v", "sd" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-operator-surround"
  },
  ["vim-operator-user"] = {
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/vim-operator-user"
  },
  ["vim-prettier"] = {
    commands = { "Prettier" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-prettier"
  },
  ["vim-sayonara"] = {
    commands = { "Sayonara" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-sayonara"
  },
  ["vim-smoothie"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-smoothie"
  },
  ["vim-terminal-help"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-terminal-help"
  },
  ["vim-vsnip"] = {
    config = { 'require("plugin-config.vsnip")' },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ"
  },
  ["vim-vue-plugin"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin"
  },
  ["vscode-es7-javascript-react-snippets"] = {
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/vscode-es7-javascript-react-snippets"
  },
  ["vscode-javascript"] = {
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/vscode-javascript"
  },
  ["vscode-vue-snippets"] = {
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/vscode-vue-snippets"
  },
  ["zephyr-nvim"] = {
    config = { "vim.cmd('colorscheme zephyr')" },
    loaded = true,
    path = "/Users/qlzhou/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
require("plugin-config.emmet")
time([[Setup for emmet-vim]], false)
-- Setup for: asynctasks.vim
time([[Setup for asynctasks.vim]], true)
try_loadstring("\27LJ\2\né\1\0\0\3\0\a\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0'\1\5\0=\1\4\0006\0\0\0009\0\3\0)\1\n\0=\1\6\0K\0\1\0\25asynctasks_term_rows\nthelp\24asynctasks_term_pos\6g\30packadd vim-terminal-help\bcmd\bvim\0", "setup", "asynctasks.vim")
time([[Setup for asynctasks.vim]], false)
-- Setup for: asyncrun.vim
time([[Setup for asyncrun.vim]], true)
try_loadstring("\27LJ\2\n/\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\6\0=\1\2\0K\0\1\0\18asyncrun_open\6g\bvim\0", "setup", "asyncrun.vim")
time([[Setup for asyncrun.vim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
require("eviline")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
require("plugin-config.bufferline")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: zephyr-nvim
time([[Config for zephyr-nvim]], true)
vim.cmd('colorscheme zephyr')
time([[Config for zephyr-nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
require("plugin-config.dashboard")
time([[Config for dashboard-nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("plugin-config.nvim-tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncTask lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncTask", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncTaskMacro lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncTaskMacro", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncTaskList lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncTaskList", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncTaskEdit lua require("packer.load")({'asynctasks.vim'}, { cmd = "AsyncTaskEdit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DBUIToggle lua require("packer.load")({'vim-dadbod-ui'}, { cmd = "DBUIToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DBUIAddConnection lua require("packer.load")({'vim-dadbod-ui'}, { cmd = "DBUIAddConnection", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DBUI lua require("packer.load")({'vim-dadbod-ui'}, { cmd = "DBUI", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DBUIFindBuffer lua require("packer.load")({'vim-dadbod-ui'}, { cmd = "DBUIFindBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DBUIRenameBuffer lua require("packer.load")({'vim-dadbod-ui'}, { cmd = "DBUIRenameBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Glow lua require("packer.load")({'glow.nvim'}, { cmd = "Glow", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Prettier lua require("packer.load")({'vim-prettier'}, { cmd = "Prettier", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Sayonara lua require("packer.load")({'vim-sayonara'}, { cmd = "Sayonara", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncRun lua require("packer.load")({'asyncrun.vim'}, { cmd = "AsyncRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncStop lua require("packer.load")({'asyncrun.vim'}, { cmd = "AsyncStop", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Format lua require("packer.load")({'formatter.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[vnoremap <silent> sr <cmd>lua require("packer.load")({'vim-operator-surround'}, { keys = "sr", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> sd <cmd>lua require("packer.load")({'vim-operator-surround'}, { keys = "sd", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gcc <cmd>lua require("packer.load")({'nvim-comment'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'nvim-comment'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> sa <cmd>lua require("packer.load")({'vim-operator-surround'}, { keys = "sa", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType sass ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "sass" }, _G.packer_plugins)]]
vim.cmd [[au FileType scss ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "scss" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'editorconfig-vim', 'emmet-vim', 'nvim-colorizer.lua'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'editorconfig-vim', 'emmet-vim', 'nvim-colorizer.lua'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'editorconfig-vim'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'editorconfig-vim', 'emmet-vim', 'nvim-colorizer.lua'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'editorconfig-vim'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'editorconfig-vim'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'editorconfig-vim', 'nvim-colorizer.lua'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'vim-vue-plugin', 'editorconfig-vim', 'emmet-vim', 'nvim-colorizer.lua'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'editorconfig-vim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType zig ++once lua require("packer.load")({'editorconfig-vim'}, { ft = "zig" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'editorconfig-vim', 'emmet-vim', 'nvim-colorizer.lua'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim', 'nvim-colorizer.lua'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'emmet-vim', 'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'vim-dadbod-completion'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'vim-terminal-help', 'vim-smoothie', 'vim-cursorword', 'gitsigns.nvim', 'indent-blankline.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'vim-terminal-help', 'nvim-lspconfig', 'indent-blankline.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'vim-smoothie', 'vim-cursorword', 'nvim-treesitter', 'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]], true)
vim.cmd [[source /Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]]
time([[Sourcing ftdetect script at: /Users/qlzhou/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
