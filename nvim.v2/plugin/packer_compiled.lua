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
local package_path_str = "/home/astrofox/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/astrofox/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/astrofox/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/astrofox/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/astrofox/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  LeaderF = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/LeaderF",
    url = "https://github.com/Yggdroot/LeaderF"
  },
  ["artify.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/artify.vim",
    url = "https://github.com/sainnhe/artify.vim"
  },
  ["barbar.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["capture.vim"] = {
    commands = { "Capture" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/capture.vim",
    url = "https://github.com/tyru/capture.vim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/completion-nvim",
    url = "https://github.com/nvim-lua/completion-nvim"
  },
  delimitMate = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/delimitMate",
    url = "https://github.com/Raimondi/delimitMate"
  },
  ["deoplete-lsp"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/deoplete-lsp",
    url = "https://github.com/shougo/deoplete-lsp"
  },
  ["deoplete.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/deoplete.nvim",
    url = "https://github.com/shougo/deoplete.nvim"
  },
  ["fzf.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["git-messenger.vim"] = {
    commands = { "GitMessenger" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  ["glow.nvim"] = {
    commands = { "Glow", "GlowInstall" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/glow.nvim",
    url = "https://github.com/npxbr/glow.nvim"
  },
  gruvbox = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2�\4\0\0\5\0\30\00016\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2=\2\t\0015\2\v\0004\3\3\0005\4\n\0>\4\1\3=\3\f\0024\3\3\0005\4\r\0>\4\1\3=\3\14\0024\3\3\0005\4\15\0>\4\1\3=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\2=\2\23\0015\2\24\0004\3\0\0=\3\f\0024\3\0\0=\3\14\0025\3\25\0=\3\16\0025\3\26\0=\3\18\0024\3\0\0=\3\20\0024\3\0\0=\3\22\2=\2\27\0015\2\28\0=\2\29\1B\0\2\1K\0\1\0\15extensions\1\2\0\0\bfzf\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\1\0\vbranch\ticon\b\14lualine_a\1\0\0\1\2\1\0\tmode\nupper\2\foptions\1\0\0\25component_separators\1\3\0\0\b\b\23section_separators\1\3\0\0\b\b\1\0\2\18icons_enabled\2\ntheme\fgruvbox\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/nlua.nvim",
    url = "https://github.com/tjdevries/nlua.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    after = { "vim-vsnip", "vim-vsnip-integ" },
    after_files = { "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-compe",
    url = "https://github.com/hrsh7th/nvim-compe"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-lspfuzzy",
    url = "https://github.com/ojroques/nvim-lspfuzzy"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope.nvim"] = {
    after = { "popup.nvim", "plenary.nvim" },
    loaded = false,
    needs_bufread = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-closetag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-easy-align"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-fold-cycle"] = {
    keys = { { "", "<CR>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-fold-cycle",
    url = "https://github.com/arecarn/vim-fold-cycle"
  },
  ["vim-fontzoom"] = {
    cond = { "return vim.fn.has'gui' == 1" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-fontzoom",
    url = "https://github.com/thinca/vim-fontzoom"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-lsp-settings"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-lsp-settings",
    url = "https://github.com/mattn/vim-lsp-settings"
  },
  ["vim-lsp-snippets"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/vim-lsp-snippets",
    url = "https://github.com/thomasfaingnaert/vim-lsp-snippets"
  },
  ["vim-prettyprint"] = {
    commands = { "PP", "PrettyPrint" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-prettyprint",
    url = "https://github.com/thinca/vim-prettyprint"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-sublime-monokai"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-sublime-monokai",
    url = "https://github.com/ErichDonGubler/vim-sublime-monokai"
  },
  ["vim-unimpaired"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2�\4\0\0\5\0\30\00016\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2=\2\t\0015\2\v\0004\3\3\0005\4\n\0>\4\1\3=\3\f\0024\3\3\0005\4\r\0>\4\1\3=\3\14\0024\3\3\0005\4\15\0>\4\1\3=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\2=\2\23\0015\2\24\0004\3\0\0=\3\f\0024\3\0\0=\3\14\0025\3\25\0=\3\16\0025\3\26\0=\3\18\0024\3\0\0=\3\20\0024\3\0\0=\3\22\2=\2\27\0015\2\28\0=\2\29\1B\0\2\1K\0\1\0\15extensions\1\2\0\0\bfzf\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\1\0\vbranch\ticon\b\14lualine_a\1\0\0\1\2\1\0\tmode\nupper\2\foptions\1\0\0\25component_separators\1\3\0\0\b\b\23section_separators\1\3\0\0\b\b\1\0\2\18icons_enabled\2\ntheme\fgruvbox\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Conditional loads
time([[Conditional loading of vim-fontzoom]], true)
  require("packer.load")({"vim-fontzoom"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-fontzoom]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Capture lua require("packer.load")({'capture.vim'}, { cmd = "Capture", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Glow lua require("packer.load")({'glow.nvim'}, { cmd = "Glow", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GlowInstall lua require("packer.load")({'glow.nvim'}, { cmd = "GlowInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PrettyPrint lua require("packer.load")({'vim-prettyprint'}, { cmd = "PrettyPrint", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PP lua require("packer.load")({'vim-prettyprint'}, { cmd = "PP", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GitMessenger lua require("packer.load")({'git-messenger.vim'}, { cmd = "GitMessenger", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <CR> <cmd>lua require("packer.load")({'vim-fold-cycle'}, { keys = "<lt>CR>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au FocusLost * ++once lua require("packer.load")({'vim-unimpaired'}, { event = "FocusLost *" }, _G.packer_plugins)]]
vim.cmd [[au CursorHold * ++once lua require("packer.load")({'vim-unimpaired'}, { event = "CursorHold *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
  -- Function lazy-loads
time([[Defining lazy-load function autocommands]], true)
vim.cmd[[au FuncUndefined Artify ++once lua require("packer.load")({'artify.vim'}, {}, _G.packer_plugins)]]
time([[Defining lazy-load function autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
