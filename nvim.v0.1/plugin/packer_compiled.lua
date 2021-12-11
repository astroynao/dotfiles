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
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/LeaderF"
  },
  ["artify.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/artify.vim"
  },
  ["barbar.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/barbar.nvim"
  },
  ["capture.vim"] = {
    commands = { "Capture" },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/capture.vim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  delimitMate = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/delimitMate"
  },
  ["deoplete-lsp"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/deoplete-lsp"
  },
  ["deoplete.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/deoplete.nvim"
  },
  ["fzf.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/fzf.vim"
  },
  ["git-messenger.vim"] = {
    commands = { "GitMessenger" },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/git-messenger.vim"
  },
  ["glow.nvim"] = {
    commands = { "Glow", "GlowInstall" },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/glow.nvim"
  },
  gruvbox = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/lsp-status.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    after = { "vim-vsnip", "vim-vsnip-integ" },
    after_files = { "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspfuzzy"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-lspfuzzy"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  ["popup.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  ["telescope.nvim"] = {
    after = { "popup.nvim", "plenary.nvim" },
    loaded = false,
    needs_bufread = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["vim-closetag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-closetag"
  },
  ["vim-easy-align"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-easy-align"
  },
  ["vim-fold-cycle"] = {
    keys = { { "", "<CR>" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-fold-cycle"
  },
  ["vim-fontzoom"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-fontzoom"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-gitgutter"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-go"
  },
  ["vim-prettyprint"] = {
    commands = { "PP", "PrettyPrint" },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-prettyprint"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-sublime-monokai"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-sublime-monokai"
  },
  ["vim-unimpaired"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Conditional loads
time("Condition for { 'vim-fontzoom' }", true)
if
vim.fn.has'gui' == 1
then
time("Condition for { 'vim-fontzoom' }", false)
time([[packadd for vim-fontzoom]], true)
		require("packer.load")({"vim-fontzoom"}, {}, _G.packer_plugins)
	time([[packadd for vim-fontzoom]], false)
else
time("Condition for { 'vim-fontzoom' }", false)
end

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
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
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
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /home/astrofox/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
