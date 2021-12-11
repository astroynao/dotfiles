vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
  -- 起動時に読み込むプラグインは名前を書くだけです
  use'tpope/vim-fugitive'
  use'tpope/vim-repeat'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- opt オプションを付けると遅延読み込みになります。
  -- この場合は opt だけで読み込む契機を指定していないため、
  -- `packadd` コマンドを叩かない限り読み込まれることはありません。
  use{'wbthomason/packer.nvim', opt = true}
  -- packer.nvim 自体を遅延読み込みにする理由はまた後ほど。

  -- コマンドを叩いたときに読み込む。
  use{'rhysd/git-messenger.vim', opt = true, cmd = {'GitMessenger'}}

  -- 特定のイベントで読み込む
  use{'tpope/vim-unimpaired', opt = true, event = {'FocusLost', 'CursorHold'}}

  -- 特定のファイルタイプのファイルを開いたら読み込む
  -- use{'fatih/vim-go', opt = true, ft = {'go'}}

  -- 特定のキーを叩いたら読み込む
  -- この例ではノーマルモードの <CR> にマッピングしていますが、
  -- モードを指定する場合はテーブルを入れ子にします。
  keys = {
    {'n', '<CR>'},
    {'v', '<CR>'},
  }
  use{
    'arecarn/vim-fold-cycle',
    opt = true,
    keys = {'<CR>'},
  }

  -- 特定の VimL 関数を呼ぶと読み込む
  -- この例だと、任意の場所で Artify('hoge', 'bold') のように呼び出された時に、
  -- このプラグインも読み込まれます。
  use{'sainnhe/artify.vim', opt = true, fn = {'Artify'}}

  -- 実は opt = true は省略できます。読み込む契機（この例では cmd）を指定すると、
  -- 自動的に遅延読み込みとみなされます。
  use{
    'npxbr/glow.nvim',
    cmd = {'Glow', 'GlowInstall'},
    -- run オプションを指定すると、インストール時・更新時に
    -- 実行するコマンドを指定できます。
    run = [[:GlowInstall]],
    -- 先頭に : がついていないなら bash -c '...' で実行されます。
    -- run = [[npm install]],
    -- 関数も指定可能です。
    -- run = function() vim.cmd[[GlowInstall]] end,
  }

  -- 条件が真の時のみ読み込みます。条件は起動時に毎回判定されます。
  use{
    'thinca/vim-fontzoom',
    cond = [[vim.fn.has'gui' == 1]], -- GUI の時のみ読み込む。
    -- 関数も指定できます。
    -- conf = function() return vim.fn.has'gui' == 1 end,
  }

  -- 依存関係も管理できます。vim-prettyprint は
  -- capture.vim が読み込まれる前に、自動的に packadd されます。
  use{
    'tyru/capture.vim',
    requires = {
      {'thinca/vim-prettyprint', cmd = {'PP', 'PrettyPrint'}},
    },
    cmd = {'Capture'},
  }


  -- use { 'vim-airline/vim-airline'}
  -- use { 'vim-airline/vim-airline-themes'}
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('lualine').setup{
        options = {
          theme = 'gruvbox',
          section_separators = {'', ''},
          component_separators = {'', ''},
          icons_enabled = true,
        },
        sections = {
          lualine_a = { {'mode', upper = true} },
          lualine_b = { {'branch', icon = ''} },
          lualine_c = { {'filename', file_status = true} },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location'  },
        },
        inactive_sections = {
          lualine_a = {  },
          lualine_b = {  },
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {  },
          lualine_z = {   }
        },
        extensions = { 'fzf' }
      }
    end
  }
  -- Colors
  use { 'norcalli/nvim-colorizer.lua', opt = true }
  use { 'morhetz/gruvbox', opt = true }
  -- Colorscheme
  use { 'ErichDonGubler/vim-sublime-monokai', opt = true }
  -- Completion
  use { 'hrsh7th/nvim-compe', opt = true, requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}} }
  use { 'Raimondi/delimitMate', opt = true }
  use { 'alvan/vim-closetag', opt = true}
  -- Git
  use { 'airblade/vim-gitgutter', opt = true }
  -- Interface
  use { 'lukas-reineke/indent-blankline.nvim', branch = 'master', opt = true }
  -- Finder
  use { 'Yggdroot/LeaderF', opt = true}
  use { 'nvim-telescope/telescope.nvim', opt = true, requires = { {'nvim-lua/popup.nvim', opt = true}, {'nvim-lua/plenary.nvim', opt = true} } }
  -- Formatting
  use { 'junegunn/vim-easy-align', opt = true }
  -- LSP
  use { 'tjdevries/nlua.nvim' }
  use { 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' }
  use { 'nvim-lua/lsp-status.nvim', opt = true }
  -- use { 'anott03/nvim-lspinstall' }
  use { 'mattn/vim-lsp-settings', opt = true }
  --  use { 'mattn/vim-goimports' }
  use { 'nvim-lua/completion-nvim' }
  use { 'hrsh7th/nvim-cmp' }
  -- Snippets
  -- use { 'honza/vim-snippets' }
  use { 'thomasfaingnaert/vim-lsp-snippets' }
  -- Tabs
  use { 'romgrk/barbar.nvim', opt = true }
  -- Tree-sitter
  use { 'nvim-treesitter/nvim-treesitter', opt = true }

  use { 'shougo/deoplete-lsp', opt = true }

  use { 'shougo/deoplete.nvim', opt = true }
  -- use { 'junegunn/fzf', opt = true, run = fn['fzf#install']}
  use { 'junegunn/fzf.vim', opt = true }
  use { 'ojroques/nvim-lspfuzzy', opt = true }
  -- use { 'neoclide/coc.nvim', branch = 'release' }

  -- use { 'rhysd/vim-clang-format' }

  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/vim-vsnip' }

end)
